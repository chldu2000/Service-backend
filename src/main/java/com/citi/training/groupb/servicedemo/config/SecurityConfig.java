//package com.citi.training.groupb.servicedemo.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.config.annotation.web.configurers.LogoutConfigurer;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.provisioning.InMemoryUserDetailsManager;
//import org.springframework.security.web.SecurityFilterChain;
//
//@Configuration
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//    @Autowired UserDetailsService userDetailsService;
//
//    @Bean
//    public PasswordEncoder bcryptPasswordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
//
////    @Override
////    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
////        auth.inMemoryAuthentication()
////                .withUser("user")
////                .password(bcryptPasswordEncoder().encode("123"))
////                .roles("admin");
////    }
//
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http   // 配置登录页并允许访问
//                .formLogin().usernameParameter("username").passwordParameter("password").loginPage("/login").permitAll()
//                // 配置Basic登录
//                //.and().httpBasic()
//                // 配置登出页面
//                .and().logout().logoutUrl("/logout").logoutSuccessUrl("/")
//                // 不需要登录授权就可以访问
//                .and().authorizeRequests().antMatchers("/").permitAll()
//                // 其余所有请求全部需要鉴权认证
//                .anyRequest().authenticated()
//                // 关闭跨域保护;
//                .and().csrf().disable();
//    }
//
//    @Override
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.userDetailsService(userDetailsService)
//                .passwordEncoder(bcryptPasswordEncoder());
//        auth.parentAuthenticationManager(authenticationManagerBean());
//    }
//}
