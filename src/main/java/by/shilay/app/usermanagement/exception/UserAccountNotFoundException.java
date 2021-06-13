package by.shilay.app.usermanagement.exception;

public class UserAccountNotFoundException extends Exception {

    public UserAccountNotFoundException(Long id){
        super("User with id " + id + " not found!");
    }
}
