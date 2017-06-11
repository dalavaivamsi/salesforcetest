public with sharing class getMMI {
     public string aid{get;set;}
    public PageReference deleterec() {
    MMI__C a = [SELECT Id,Issue__C FROM MMI__c where id=: aid];
    delete a;
        return null;
    }



    public List<MMI__C> C= new List<MMI__C>();
    public List<MMI__C> getGetMMI() {
    
     C = [SELECT Id,Major__c,Issue__C FROM MMI__c];
    
        return c;
    }

}