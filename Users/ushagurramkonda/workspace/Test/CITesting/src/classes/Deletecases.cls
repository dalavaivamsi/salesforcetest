public with sharing class Deletecases {
    public string aid{get;set;}
    public PageReference deleteallrec() {
    Case a = [SELECT Id FROM Case];
       
    delete a;
        return null;
    }


    public List<Case> L = new List<Case>();
    public List<Case> getGetcases() {
    L = [SELECT CaseNumber,Major__C,Minor__C,Issue__C FROM Case];
        return L;
    }

}