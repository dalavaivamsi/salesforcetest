trigger t1 on Account (before insert,before Update) {
    
    For (Account a : Trigger.new){
    
    if (a.Industry == 'Retail'){
    a.Description = 'Retail Account';
    
    }
    }
    }