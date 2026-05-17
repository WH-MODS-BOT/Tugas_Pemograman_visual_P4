package Tampilan;

public class UserID {

    private static String userLogin;
    private static String roleLogin;

    public static void setUserLogin(String id){
        userLogin = id;
    }

    public static String getUserLogin(){
        return userLogin;
    }

    public static void setRoleLogin(String role){
        roleLogin = role;
    }

    public static String getRoleLogin(){
        return roleLogin;
    }
}