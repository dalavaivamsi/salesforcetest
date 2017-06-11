public class AccountAdd {

public String account { get; set; }
//public List<SelectOption> AccountNames;

public List<SelectOption> getAccountNames() {
List<SelectOption> options= new List<SelectOption>(); 
List<Account>accvar1 = new List<Account>([Select Name from Account Limit 5]);

for( Account acc : accvar1 ) {
options.add(new SelectOption(acc.Name,acc.Name));
}
return options;
}
public List<Account> getaccNew(){
System.debug('AccountName'+account );
List<Account> accNew= new List<Account>([Select Name,Phone From Account where Name=:account]);
return accNew;
}
}