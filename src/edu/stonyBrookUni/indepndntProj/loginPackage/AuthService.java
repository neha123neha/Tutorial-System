package edu.stonyBrookUni.indepndntProj.loginPackage;

 
/*
 * It has logic read from file and authenticate
 */

public class AuthService {
	
    public String doAuth(String username, String password){
        String message = null;
        try {

            if(password.equalsIgnoreCase("admin")){
                message = "SUCCESS";
            }else{
                message = "FAILURE";
            }
        } catch (Exception e) {
            message = "FAILURE";
            e.printStackTrace();
        }
        return message;
    }
}