global class UpdateAccountBatch implements Database.Batchable<sObject>{
    String query;
     
    global Database.querylocator start(Database.BatchableContext BC){
        Query = 'Select id,name,Description from account';   
        return Database.getQueryLocator(query);
    }
 
    global void execute(Database.BatchableContext BC, List<account> scope){
       List<Account> accList = new List<Account>();
 
       for(account s : scope){
           s.Description = 'Updated in batch apex class'; 
           accList.add(s); 
       }
 
       update accList;
    }
     
    global void finish(Database.BatchableContext BC){
    }
}