public with sharing class Demo4s {

    
    Public List<Contact> Result = new List<Contact>();
    public List<Contact> getResult() 
    
    {
        
        Result = [Select LastName from Contact];
        return Result;
    }

}