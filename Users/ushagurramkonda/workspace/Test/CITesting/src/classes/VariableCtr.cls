public class VariableCtr
{
    public List<Account> getShowAccount()
    {
        List<Account> lstAcc=new List<Account>([select id,name,rating from Account]);
        return lstAcc;
    }
}