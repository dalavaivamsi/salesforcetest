public with sharing class OpportunityFilter {
    public String regionValue {get;set;}    
    public List<SelectOption> regionOptions {get;set;}
    public List<Case> filteredOpportunities {get;set;}
    
    public OpportunityFilter(ApexPages.StandardController controller) {
        regionOptions = new List<SelectOption>();
        regionOptions.add(new SelectOption('March','March'));
        regionOptions.add(new SelectOption('April','April'));
    }
    
    public void updateFilteredOpportunities() {
        filteredOpportunities = [SELECT id,CaseNumber FROM Case WHERE Created_Month__c = :regionValue];
    }

}