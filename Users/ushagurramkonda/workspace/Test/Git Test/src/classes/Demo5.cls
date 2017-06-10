public with sharing class Demo5 {
    
    Public List<Contact> Results = New List<Contact>();
    public List<Contact> getResults() {
    
    Results = [Select LastName,FirstName from Contact];
        return Results;
    }

}