public class AccountListViewCtr
{
    public List<Account> lstAccount{get;set;}
    public AccountListViewCtr()
    {
        lstAccount=[Select id,name from Account limit 20];
    }
    
    public PageReference redirectPage()
    {
        String accId=ApexPages.currentPage().getParameters().get('accountid');
        if(String.isNotBlank(accId))
        {
           PageReference page=new PageReference('/apex/AccountDetailView?id='+accId); 
           page.setRedirect(true);
           return page;
        }
        return null;
    }
    
    public PageReference deleteAccount()
    {
        String accId=ApexPages.currentPage().getParameters().get('accountid2');
        if(String.isNotBlank(accId))
        {
           List<Account> acc=[Select id from Account where id=:accId];
           if(acc!=null)
           {
               delete acc;
               PageReference page=new PageReference('/apex/AccountView'); 
               page.setRedirect(true);
               return page;
           }
        }
        return null;
    }
}