public with sharing class GetCase {

    public GetCase() {

    }


    public GetCase(ApexPages.StandardController controller) {

    }


   


    public Case Cas{get;set;}
    public list<Case> olist {get;set;}

    public PageReference doSearch() {
    
    olist = [Select Id,CaseNumber,Owner.Name from Case];
        return null;
    }
    
     public String getCase() 
      {
         olist = [Select OwnerId from Case];
        return null;
    }

}