global with sharing class ScheduleBatchApexDemo implements Schedulable {

global void execute(SchedulableContext sc) {
  ID BatchId = Database.executeBatch(new BatchApexDemo(), 200);
}
 
Public static void SchedulerMethod() {
  string timeinterval = '0 30 * * * ?';
  System.schedule('BatchApexDemo-Every15mins',timeinterval, new ScheduleBatchApexDemo());
  }
}