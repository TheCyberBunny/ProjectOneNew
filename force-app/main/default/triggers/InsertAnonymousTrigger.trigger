trigger InsertAnonymousTrigger on Tavern_Review__c (before insert) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            ApexClassOne.ApexClassMethod(Trigger.new);
        }
    }
}