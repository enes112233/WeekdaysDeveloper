trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {

    if (trigger.isAfter && trigger.isInsert) {
        SalesforceProjectHandler.createDefaultTicket(trigger.new);
        system.debug('calling future method....');
        SalesforceProjectHandler.updateDescription(trigger.newMap.keySet());
        System.debug('DONE calling future method....');
    }

    if(Trigger.isBefore && Trigger.isUpdate){
        //validation method
       // SalesforceProjectHandler.validateProjectCompletion(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }

    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}