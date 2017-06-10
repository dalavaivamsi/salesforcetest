trigger T2 on Contact (before insert,before update) {

for (Contact a : Trigger.new) {
   if (a.LastName != ''){
   
   a.Description = a.LastName;
   }

}

}