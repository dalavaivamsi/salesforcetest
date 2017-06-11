public with sharing class CasesCLS 
{
         public List<case> cases{get;set;}
         Public CasesCLS()
         {
         Cases = [Select CaseNumber , CreatedDate , Major__c ,Minor__c , Issue__c , MMI_ID__c , Mailbox__c from case];
         }
}