public with sharing class Casesdetails {

    public List<Case> getGetCaseD() {
    
    CaseD = [Select CaseNumber,Id from Case];
        return CaseD;
    }


   
    Public List<case> CaseD = new List<Case>();
    public List<case> getCaseD() {
     
        
        return null;    }

}