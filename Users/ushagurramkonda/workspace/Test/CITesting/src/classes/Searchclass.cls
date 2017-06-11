public class Searchclass {

    List<Lead> results { get; set; }
    public String serachtext { get; set; }

public String getserachtext() {
return serachtext;
}

public void setserachtext(String s) {
serachtext = s;
}

public List<Lead> getResults() {
return results;
}

public PageReference doSearch() {
results = (List<Lead>)[FIND :serachtext RETURNING Lead(Name, Email, Phone)][0];
return null;
}
    
}