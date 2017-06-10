public with sharing class Userinfo {

    Public List<User> L = new List<User> ();
    public List<User> getCase() {
    
    L = [SELECT Name FROM User];
        return L;
    }

}