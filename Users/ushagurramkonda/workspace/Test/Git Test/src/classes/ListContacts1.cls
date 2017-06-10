public with sharing class ListContacts1 {

    Public List<contact> a = new List<contact>();
    public List<contact> getContact() {
    
    a = [SELECT FirstName FROM Contact];
        return a;
    }
}