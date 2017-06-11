public with sharing class Casesfillter {
    public String regionValue {get;set;}    
    public List<SelectOption> regionOptions {get;set;}
    public List<Case> Cases {get;set;}
    
    public Casesfillter(ApexPages.StandardController controller) {
        regionOptions = new List<SelectOption>();
        regionOptions.add(new SelectOption('March','March'));
        regionOptions.add(new SelectOption('April','April'));
    }
    
    public void updateFilteredcases() {
        Cases = [SELECT id,CaseNumber FROM Case WHERE Created_Month__c = :regionValue];
    }

}