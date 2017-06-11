public with sharing class OPPCLS {

      
        Public List <Opportunity> Opp{get;set;}
        Public OPPCLS()
        {
        Opp = [Select Name , CloseDate , Amount from Opportunity];
        }
        
        Public void Save()
        {
            Update Opp;
        
        }
        
}