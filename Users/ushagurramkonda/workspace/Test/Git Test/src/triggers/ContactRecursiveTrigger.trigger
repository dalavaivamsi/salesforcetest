trigger ContactRecursiveTrigger on Contact (after insert,after update) {
    Map<id,Account> updateAccount=new Map<id,Account>();
    for(Contact con:trigger.new){
        if(con.AccountId !=null){
            
            Account acc=new Account(id=con.AccountId,Contact_Last_Updates__c=system.now());
            updateAccount.put(con.AccountId, acc);
        }
    }
    System.debug('valuess:'+updateAccount.values());
    update updateAccount.values();
         
}