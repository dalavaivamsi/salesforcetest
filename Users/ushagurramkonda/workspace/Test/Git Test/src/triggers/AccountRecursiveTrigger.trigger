trigger AccountRecursiveTrigger on Account (after insert,after update) 
{
    List<Contact> updateContact=new List<Contact>();
    List<Account> accounts=new List<Account>();
    accounts=[select id,Name,BillingStreet,BillingCity,BillingCountry,
              (select id,FirstName,LastName,MailingStreet,MailingCity,MailingCountry from Contacts) from Account where id IN:trigger.new and BillingStreet!=null];
    system.debug('cc::'+accounts);
    if(RecursiveHandler.saveRecursive)
    {
        RecursiveHandler.saveRecursive=false;
        for(Account acc:accounts)
        {
            for(Contact con:acc.Contacts)
            {
                
                 con.MailingStreet=acc.BillingStreet;
                 con.MailingCity=acc.BillingCity;
                con.MailingCountry=acc.BillingCountry;
                updateContact.add(con);
                
            }
            
        }
        update updateContact;   
    }
}