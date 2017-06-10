public with sharing class Vf2 {

     public List<Account> L= new List<Account>();
     
     Public List<Account> getL()
     
     {
    L = [Select Name,Type from Account];
     Return L;
     }
}