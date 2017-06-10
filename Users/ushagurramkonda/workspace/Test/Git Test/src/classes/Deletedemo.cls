public with sharing class Deletedemo {

   public String aId{get;set;}
    public PageReference SuperDelete() {
    
    Contact r = [Select Id from Contact where Id=: aId];
    
        
        Delete r;
        return null;
    }

    public List<Contact> L = new List<Contact>();
    public List<Contact> getB() {
    
    L = [Select LastName,Id from Contact];
        return L;
    }

}