public with sharing class Solutions {

       public List <Case> Cases1{get;set;}
       public solutions()
       {
        Cases1 = [Select CaseNumber,Major__c,Minor__c,Issue__C,Mailbox__C from Case limit 10];
       }
}