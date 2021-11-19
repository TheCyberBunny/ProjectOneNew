public with sharing class ApexClassOne {

    public static void ApexClassMethod(List<Tavern_Review__c> reviews) {
            
        
            for(Tavern_Review__c t: reviews){
            if(t.Name == null){
                t.Name = 'Anonymous';
                
            }
            
        }
    }
}
