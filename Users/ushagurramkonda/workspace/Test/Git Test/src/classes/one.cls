public class one{

   public string acName{set;get;}

    public integer acPhone{set;get;}

    public List<Account> accs{set;get;}

    public ID accid {set;get;}

 

    public pagereference save(){

        accs = [select id,name,phone,type from account limit 5]; 

        return null;

    }
    
     public List<Account> getAcc() {
        accs = [select id,name,phone,type from account limit 5];
        return accs;
    }

}