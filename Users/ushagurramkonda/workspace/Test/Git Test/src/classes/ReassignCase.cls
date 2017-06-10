public with sharing class ReassignCase {

    public String getUser() {
        return null;
    }


    public PageReference FetchCases() {
        return null;
    }


    Public List<Case> L = new List<Case>();
    public List<Case> getCaseDemo() {
    
    L = [SELECT Owner.Name, CaseNumber From Case];
        return L;
    }

}