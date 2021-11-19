public with sharing class ApexClassOne {
//this class helps the insertAnonymousTrtigger Trigger
    public static void ApexClassMethod(List<Tavern_Review__c> reviews) {
            
        //loop checks if the name entered for the tavern review lwc is empty
            for(Tavern_Review__c t: reviews){
            if(t.Name == null){
                //if name field is empty, populate it with anonymous
                t.Name = 'Anonymous';
                
            }
            
        }
    }
}
