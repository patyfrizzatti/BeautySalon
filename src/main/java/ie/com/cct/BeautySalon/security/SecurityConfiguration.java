package ie.com.cct.BeautySalon.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity // enable Spring Security Mode
@Configuration // load the configuration in this class
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private AuthenticationService authenticationService;

	// Authentication configs (access control, logins)
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(authenticationService).passwordEncoder(new BCryptPasswordEncoder());
	}

	// authorization configs (access profile who access some URLs)
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.headers().frameOptions().sameOrigin();
        http.csrf().ignoringAntMatchers("/database/**");
        http.authorizeRequests().antMatchers("/database/**").permitAll();
        
		http.authorizeRequests()
		.antMatchers(HttpMethod.GET, "/").permitAll()
		.antMatchers(HttpMethod.GET, "/index").permitAll()
		.antMatchers(HttpMethod.GET, "/contact").permitAll()
		.antMatchers(HttpMethod.GET, "/login").permitAll()
		.antMatchers(HttpMethod.GET, "/customer").hasAuthority("USER")
		.antMatchers(HttpMethod.GET, "/admin").hasAuthority("ADMIN")
		.antMatchers(HttpMethod.GET, "/signup").permitAll()
		.antMatchers(HttpMethod.GET, "/signupWelcome").permitAll()
		.antMatchers(HttpMethod.POST, "/customers").permitAll()
		.anyRequest().authenticated().and().formLogin();
	}

	// Static resources (js, css, images)
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**", "/static/**", "/js/**", "/css/**", "/images/**", "/fonts/**");
	}
}
