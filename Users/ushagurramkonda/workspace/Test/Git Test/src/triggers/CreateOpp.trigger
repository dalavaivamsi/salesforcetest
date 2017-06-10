trigger CreateOpp on Case (after insert) {

    Opportunity o = New Opportunity ();
         
    for (case C : Trigger.new)
    {
 
    o.Name = C.Mailbox__c ;
    o.StageName = 'Closed Won' ;
    o.CloseDate = system.today();
   
     Insert o ;
    
    
    
    } 

}