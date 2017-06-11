global class BatchApexDemo implements database.batchable<sobject>{
Public string soqlquery;
 Public void setQry(string soqlquery){
    this.soqlquery = 'Select name,status from account limit 1';
 }
 global database.querylocator start(database.batchableContext bc){
  return database.getquerylocator(soqlquery);
 }
 global void execute(database.batchablecontext bd, list<sobject> sc){
   System.debug('**In Execute Method**');
 }
 Public void finish(database.batchableContext bc){
  
 }
}