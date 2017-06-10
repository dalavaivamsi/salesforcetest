Public with sharing class DemoController {
Public String outValueSecond{get;set;}
Public String outvalue{get;set;}
Public boolean flag{get;set;}
  Public DemoController(){
     outvalue = 'Before Value';
     outValueSecond = 'before value set in constructor';
  }
   
  Public void DemoMethod(){
   outValueSecond = 'After value set in controller method. This method is called using action support added to inputtext compoennt';
  }
}