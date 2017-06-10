public with sharing class Casedemo {

    public String getCase1() {
        return null;
    }


     
    Public List<case> Case1 = new List<case>();
    public List<case> getCase() {
    
    Case1 = [SELECT CaseNumber,OwnerId,Owner.Name FROM Case];
        return Case1;
    }
    
    

}