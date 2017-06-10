Global Class scheduletest implements Schedulable{

Global void Execute (Schedulablecontext SC){

 Account objE = new Account();
   objE.name = 'Netapp India';
   objE.Type='Prospect';
   objE.Industry = 'Education';
   
   insert objE;

}



}