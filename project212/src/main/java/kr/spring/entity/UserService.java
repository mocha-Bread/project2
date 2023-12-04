package kr.spring.entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;

import kr.spring.mapper.LoginMapper;

@Configuration
@ComponentScan(basePackages = "kr.spring.entity")
@Service
public class UserService {
    
    @Autowired
    private LoginMapper loginMapper;
    private String user_id;
	private String user_name;
	private String medical_number;

    public void registerUser(Login login) {
        loginMapper.registerUser(login);
    }
    
    public Login Login(String user_id, String user_password) {
        return loginMapper.getLoginInfo(user_id, user_password);
    }
    
    public Login getUserInfo(String user_id) {
    	return loginMapper.getUserDetails(user_id);
    }
    
    

}