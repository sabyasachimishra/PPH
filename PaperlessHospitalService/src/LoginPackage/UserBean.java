package LoginPackage;
import javax.servlet.http.HttpSession;
 public class UserBean{
	
      private String username;
      private String password;
      private String firstName;
      private String lastName;
      private String id;
      private String usid;
      public boolean valid;
	
	
      public String getFirstName() {
         return firstName;
	}

      public void setFirstName(String newFirstName) {
         firstName = newFirstName;
	}

	
      public String getLastName() {
         return lastName;
			}

      public void setLastName(String newLastName) {
         lastName = newLastName;
			}
			

      public String getPassword() {
         return password;
	}

      public void setPassword(String newPassword) {
         password = newPassword;
	}
	
			
      public String getUsername() {
         return username;
			}

      public void setUserName(String newUsername) {
         username = newUsername;
			}
      public void setId(String newId) {
          id= newId;
 			}
      public String getId() {
          return id;
 			}

      
       public String getusId() {
           return usid;
  			}

        public void setusId(String newusId) {
           usid= newusId;
  			}
				
      public boolean isValid() {
         return valid;
	}

      public void setValid(boolean newValid) {
         valid = newValid;
	}	
}