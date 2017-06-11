public class ShowErrorMessage{
    public Account account{get;set;}
    public ShowErrorMessage(ApexPages.StandardController controller) {
        account = new Account();
}
public void save()
{
 if(account.name == '' || account.name == null)
    ApexPages.addmessage(new   ApexPages.message(ApexPages.severity.FATAL,'Please     enter Account name'));
if(account.AccountNumber == '' || account.AccountNumber == null)
    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Please     enter Account number'));
if(account.phone == '' || account.phone == null)
    ApexPages.addmessage(new          ApexPages.message(ApexPages.severity.WARNING,'Please enter Account phone number'));
 if(account.site == '' || account.site == null)
     ApexPages.addmessage(new ApexPages.message(ApexPages.severity.INFO,'Please       enter Account site'));
 if(account.industry == '' || account.industry == null)
    ApexPages.addmessage(new    ApexPages.message(ApexPages.severity.CONFIRM,'Please enter Account industry    detail.'));
   }
}