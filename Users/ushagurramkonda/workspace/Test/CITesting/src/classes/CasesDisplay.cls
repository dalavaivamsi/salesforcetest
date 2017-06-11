public class CasesDisplay { 

    
    public Case Cas {get; set;}

    public CasesDisplay (){

    Cas=new case();

    }
         
    public pagereference getcase(){

            cas = [select id, CaseNumber from Case where id = :cas.OwnerId];

        return null;

    }

}