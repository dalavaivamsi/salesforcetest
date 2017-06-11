public with sharing class ContactsDemo3 {

    public List<Contact> L = new List<Contact> ();
    public List<Contact> getL() {
    
    L = [Select LastName from Contact];
        return L;
    }

}