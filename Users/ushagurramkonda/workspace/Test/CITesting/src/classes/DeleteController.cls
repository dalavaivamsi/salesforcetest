public with sharing class DeleteController {

     public String rId{get;set;}
    public PageReference deleterec()
    {
     Account r= [select id from Account where id=: rId];
     delete r;
     return null;
    } 
  
   public List<Account> L= new List<Account>();// Defining a List on Account Object
   public List<Account> getRecords() {
   L= [select id,Name,Industry,Site,type from Account];
        return L;
    }

}