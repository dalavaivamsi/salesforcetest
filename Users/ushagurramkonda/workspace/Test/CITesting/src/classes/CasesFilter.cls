public with sharing class CasesFilter {
    public String regionValue {get;set;}    
    public List<SelectOption> regionOptions {get;set;}
    public List<Case> filteredCases {get;set;}
    
    public CasesFilter(ApexPages.StandardController controller) {
        regionOptions = new List<SelectOption>();
        regionOptions.add(new SelectOption('March','March'));
        regionOptions.add(new SelectOption('April','April'));
    }
    
    public void updateFilteredOpportunities() {
        filteredCases = [SELECT id,CaseNumber,Created_Month__c,CreatedDate FROM Case WHERE Created_Month__c = :regionValue];
    }

}