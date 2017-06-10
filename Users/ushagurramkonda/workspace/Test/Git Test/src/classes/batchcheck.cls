Global class batchcheck implements database.batchable<sobject>
{
  global database.querylocator start(database.batchableContext bc)
  {
    return database.getQueryLocator('SELECT CreatedDate,CaseNumber,Test1__C FROM Case where CreatedDate < Today');
  }
   //300 = 200+100;
   global void execute(database.batchableContext bc,List<Case> emps)
   {
     for ( Case a : emps)
     {
       a.Test1__C=True;

     
     }
     update emps;
    }
    
   global void finish(database.batchableContext bc)
   {
     system.debug('*******Updation Completed********');
   }
    
}