trigger InsertAnonymousTrigger on Tavern_Review__c (before insert) {
    //trigger runs before the tavern review record is inserted
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            ApexClassOne.ApexClassMethod(Trigger.new);
        }
    }
}