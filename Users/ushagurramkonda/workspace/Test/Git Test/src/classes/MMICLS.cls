public with sharing class MMICLS 
{         
          Public List<MMI__C> MMI{get;set;}
          Public MMICLS()
          {
          MMI = [Select Name , Major__c , Minor__c , Issue__c , Organization__c from MMI__C limit 20];
          }
}