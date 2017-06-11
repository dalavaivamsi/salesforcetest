public class AccountDetailCtr
{
    
    public AccountDetailCtr()
    {
        
    }
    
    public List<Account> getlstAcc()
    {
        List<Account> accounts = new List<Account>();
        try
        {
            
            accounts=[Select id,name,AnnualRevenue from account order by createddate desc];
            System.debug('lstAccount Size:='+accounts.size());
            if(accounts!=null && accounts.size()>0)
                return accounts ;
            else
                ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.info,'No account record found'));    
        }
        catch(Exception e)
        {
            System.debug('Exdeption Message:='+e.getMessage()+'**Line Number:='+e.getLineNumber());
        }
        return accounts ;
    }
    
    // Insert Account
    public pageReference createAccount()
    {
        try
        {
            String accountName=ApexPages.CurrentPage().getparameters().get('accName');
            System.debug('accountName:='+accountName);
            if(String.isNotBlank(accountName))
            {
                Account a=new Account();
                a.Name=accountName;
                insert a;
                
            }
        }
        catch(Exception e)
        {
            System.debug('Exdeption Message:='+e.getMessage()+'**Line Number:='+e.getLineNumber());
        }
        return null;
    }
}