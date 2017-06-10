public with sharing class ContactsListPDF {

List<Account> contactsList = [ Select Name,Industry from Account limit 1000];

 Public List<Account> getcontactsList (){
 
 return contactsList;
 }


}