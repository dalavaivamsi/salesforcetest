public class UseWrapperCtr
{
    public List<Wrapper> lstAccWrapper{get;set;}   // Use this wrapper to show data on the page.
    public UseWrapperCtr()
    {
        lstAccWrapper=new List<Wrapper>();
        List<Account> accounts=[Select Id,name,rating,createddate from Account];
        
        //Iterate account and assign value in wrapper.
        for(Account a:accounts)
        {
           Wrapper w=new Wrapper();
           w.accName=a.Name;
           w.ratingName=a.rating;
           w.dayName=returnDayName(a.createddate);
           lstAccWrapper.add(w);
        }
    }
    
    // Create wrapper class
    public class Wrapper
    {
        public String accName{get;set;}
        public String ratingName{get;set;}
        public String dayName{get;set;}
    }
    
    // Find the day name by providing date.
    public String returnDayName(DateTime accCreateDate)
    {
        String dayName=accCreateDate.format('EEEE'); // get the day name by created date of account.
        return dayName;
    }
}