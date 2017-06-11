public with sharing class CaseDemoTest {
    Public List<Case> L = new List<Case>();
    public List<Case> getCaseDemo() {
    
    L = [Select OwnerId from Case];
        return L;
    }

}