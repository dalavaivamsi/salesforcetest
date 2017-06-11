public class Quetion1Controller {

public string selectedSobject{get;set;}

public List<Sobject> lstQuery{get;set;}

 

    public Quetion1Controller(){

        lstQuery=new List<Sobject>();

    }

     

    public Void doSearch(){

     

        string Query='';

        Query='SELECT id,Name FROM '+ selectedSobject;

        system.debug('==Query=='+Query);

         

        lstQuery=Database.query(Query);

        system.debug('==lstQuery=='+lstQuery);

     

    }

}