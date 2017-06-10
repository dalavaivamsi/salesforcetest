public with sharing class mycontacts
{
   Public List <contact> contacts{get;set;}
   public mycontacts()
   
   {
   contacts = [Select Name , Email from contact];
   update contacts;
   }
   
   Public void save()
   
   {
      update contacts;
   }
}