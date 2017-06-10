public with sharing class RecordContact {

    public String aId{get;set;}
    public PageReference deleterec()
    {
     Contact a= [select id from Contact where id=: aId];
     delete a;
     return null;
    } 
  
   public List<Contact> l= new List<Contact>();// Defining a List on Account Object
   public List<Contact> getRecords() {
   l= [select Id,LastName from Contact];
        return l;
    }

}