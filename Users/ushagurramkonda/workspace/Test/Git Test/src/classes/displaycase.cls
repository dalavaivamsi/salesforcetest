public class displaycase {

public string getcasestatus{get;set;}
public string getcasenumber{get;set;}
public string getcasetype{get;set;}
public string getcasereason{get;set;}
public string getcasepriority{get;set;}

public  void displaycase ()
{
    getcasestatus='';
    getcasetype= '';
    getcasereason= '';
    getcasepriority= '';
    
}
public list<case> caselst{get;set;}


public list<selectoption>getcstatus()
{
    list<selectoption>selectopts=new list<selectoption>();
    selectopts.add(new selectoption('',''));
    selectopts.add(new selectoption('Open','Open'));
    selectopts.add(new selectoption('Closed','Closed'));
    selectopts.add(new selectoption('Rejected','Rejected'));
    return selectopts;
}

public list<selectoption>getctype()
{
    list<selectoption>selectoptt=new list<selectoption>();
    selectoptt.add(new selectoption('',''));    
    selectoptt.add(new selectoption('Out of Warranty','Out of Warranty'));
    selectoptt.add(new selectoption('Under AMC','Under AMC'));
    selectoptt.add(new selectoption('Under Warranty','Under Warranty'));
    return selectoptt;
}

public list<selectoption>getcreason()
{
    list<selectoption>selectoptr=new list<selectoption>();
    selectoptr.add(new selectoption('',''));    
    selectoptr.add(new selectoption('Acceptance Testing','Acceptance Testing'));
    selectoptr.add(new selectoption('Breakdown','Breakdown'));
    selectoptr.add(new selectoption('Equipment Complexity','Equipment Complexity'));
    selectoptr.add(new selectoption('Equipment Design','Equipment Design'));
    selectoptr.add(new selectoption('Exceptional','Exceptional'));
    selectoptr.add(new selectoption('Feedback','Feedback'));
    selectoptr.add(new selectoption('Installation','Installation'));
    selectoptr.add(new selectoption('Job Warranty','Job Warranty'));
    selectoptr.add(new selectoption('Other','Other'));
    selectoptr.add(new selectoption('Paid Repair','Paid Repair'));
    selectoptr.add(new selectoption('Performance','Performance'));
    selectoptr.add(new selectoption('Preventive Maintenance','Preventive Maintenance'));    
    return selectoptr;
}

public list<selectoption>getcpriority()
{
    list<selectoption>selectoptp=new list<selectoption>();
    selectoptp.add(new selectoption('',''));
    selectoptp.add(new selectoption('Major','Major'));
    selectoptp.add(new selectoption('Minor','Minor'));
    selectoptp.add(new selectoption('Critical','Critical'));
    return selectoptp;
}

public void displaycaselist()
{
    caselst=new list<case>();

    String query = 'select CaseNumber,CreatedDate,ClosedDate,IsClosed,IsEscalated,Priority,Reason,Status,Subject,Type FROM Case where id !=NULL ';

    if(getcasestatus!=null){
       query+=' and Status=\''+getcasestatus+'\'';
    }
    if(getcasetype!=null){
       query+=' and Type=\''+getcasetype+'\'';
    }
    if(getcasereason!=null){
       query+=' and Reason=\''+getcasereason+'\'';
    }
    if(getcasepriority!=null){
       query+=' and priority=\''+getcasepriority+'\'';
    }

    caselst=Database.query(query+=' ORDER BY CreatedDate DESC');
    
}

public void searchcaselist()
{   
    caselst=new list<case>();
    
    if(getcasenumber!=null){
       caselst=Database.query('select CaseNumber,id,ClosedDate,IsClosed,IsEscalated,Priority,Reason,Status,Subject,Type FROM Case where CaseNumber like \'%'+getcasenumber+'%\' ORDER BY CreatedDate DESC');
    }    
}
}