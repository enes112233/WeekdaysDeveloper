public class SalesforceProjectHandler {
    public static void createDefaultTicket(List<Salesforce_Project__c> spTriggerNew) {
        
        try {
            List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
            Default_Ticket_Info__c dt = Default_Ticket_Info__c.getOrgDefaults();

            for (salesforce_project__c eachSP : spTriggerNew) {
                Salesforce_Ticket__c st = new Salesforce_Ticket__c();
                st.Subject__c = dt.Subject__c;
                st.Description__c = dt.description__c;
                
                st.Salesforce_Project__c = eachSP.id;
                st.Priority__c = 'Medium';
                listST.add(st);
            }
            if (!listST.isEmpty()) {
                insert listST;
            }
        } catch (Exception e) {
            system.debug('Some error here: ' + e);
            for (salesforce_project__c eachSP : spTriggerNew) {
                eachSP.addError('Some error in creating default ticket. Please contact admin, NOT dev.');
            }

        }
        
    }

    public static void validateProjectCompletion(List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c> spTriggerOld,
    Map<id, Salesforce_Project__c> spTriggerNewMap, Map<id, Salesforce_Project__c> spTriggerOldmap) {
        
        //get projects for which STATUS is CHANGED to 'COMPLETED'
        set<id> setProjectId = new set<id>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            if (eachSp.Status__c != spTriggerOldMap.get(eachSp.id).Status__c
            && eachSp.Status__c == 'Completed') {
                setProjectId.add(eachSP.id);
            }
        }
        system.debug('sp ids in set==> ' + setProjectId);
        //get all tickets of 'setProjectId' which are NOT completed
        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
            where salesforce_project__c in :setProjectId and status__c != 'Completed'];

            for (salesforce_ticket__c eachST : listST) {
            Salesforce_Project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp.addError('Cannot completed project because all its tickets are not completed. OKAY?');
        }
    }
    
    //static .
    //return void.
    //pass primitive datatype, collection of primitive 
    @future
    public static void updateDescription(set<id> projectIds) {
        system.debug('future method called');
        system.debug('inserted project ids==> ' + projectIds);
        //update description of all the created projects HERE.

        //soql to fetch project records
        List<Salesforce_Project__c> listSP = [Select id,description__c from Salesforce_Project__c where id in : projectIds];
        for (Salesforce_Project__c sp : listSP) {
            sp.Description__c += 'Updated from future';
        }
        update listSP;

        //update description field
    }
    

    public static void spCompletedStatus(list<Salesforce_Project__c> spTriggerNew, list<Salesforce_Project__c> spTriggerOld, 
    Map<id, Salesforce_Project__c> spTriggerNewMap, Map<id, Salesforce_Project__c> spTriggerOldMap) {
        Set<Id> spIds = new set<Id>();
        for (Salesforce_Project__c spNew : spTriggerNew) {
            Salesforce_Project__c spOld = spTriggerOldMap.get(spNew.Id);
            if (spNew.Status__c =='Completed' && spOld.Status__c != 'Completed') {
                spIds.add(spNew.Id);
            }
        }
        //here we will call future method
        system.debug('sp ids status completed => ' + spIds);
        if(!spIds.isEmpty()){
            updateTicketStatus(spIds);

        }
    }

    @future
    private static void updateTicketStatus(Set<id> spIds) {
        List<Salesforce_Ticket__c> listSt = [Select id,status__c from Salesforce_Ticket__c where Salesforce_Project__c in :spIds 
        and status__c != 'Completed'];
        for (Salesforce_Ticket__c  st : listSt) {
            st.Status__c = 'Completed';
        }
        update listSt;
    }
}
