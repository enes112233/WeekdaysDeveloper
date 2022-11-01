public class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew, List<account> accTriggerOld, 
                                        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {

        Map<id, account> newAccMap = accTriggerNewMap;
        map<id, account> oldAccMap = accTriggerOldMap;
        for (account eachAcc : accTriggerNew) {
            if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
            if (Trigger.isUpdate) {
                //id accId = eachacc.id;
                Account oldAccount = oldAccMap.get(eachacc.id);
                Account newAccount = newAccMap.get(eachacc.id);

                if(eachAcc.Active__c == 'Yes' && oldAccount.Active__c != newAccount.Active__c){
                    eachAcc.Description = 'Account is now active. Enjoy!';
                }
            }
        }
    }

    public static void updateVIPforAllContacts(List<account> accTriggerNew, List<account> accTriggerOld, 
        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
        //get accountsIds for which VIP is CHANGED.
        Set<Id> accountIds = new set<id>();
        for (account eachAcc : accTriggerNew) {
            if (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.Id).VIP__c) {
                accountIds.add(eachAcc.Id);
            }
        }
        system.debug('vip is change acc ids ==> ' + accountIds);

        if(!accountIds.isEmpty()){
            //all contacts for all of those accounts.
            list<contact> listContact = [select id, vip__c, accountid, name from contact where accountid in :accountIds];
            system.debug('all contacts ==> ' + listContact);
            for (contact eachContact : listContact) {
                Account newAcc = accTriggerNewMap.get(eachContact.AccountId);
                boolean vipAcc = newAcc.VIP__c;
                eachContact.VIP__c = vipAcc;
            }
            update listContact;
        }
    }

    public static void createOppAndContact(list<Account> triggerNew) {
        
        List<Opportunity> lstOpp = new List<Opportunity>();
        List<Contact> lstCnt = new List<Contact>();
        for (Account acc : triggerNew) {
             Opportunity opp = new Opportunity();
             opp.AccountId =  acc.Id;
             opp.Name = 'Test Opportunity';
             opp.CloseDate = Date.newInstance(2022, 12, 28);
             opp.StageName = 'New';
             lstOpp.add(opp);

            Contact cnt = new Contact();
            cnt.AccountId = acc.Id ;
            cnt.LastName = 'Test Contact';
            lstCnt.add(cnt);
        }
        if (!lstCnt.isEmpty() ) {
            insert lstCnt;
        }
        if (!lstOpp.isEmpty()) {
        insert lstOpp;
            
        }
    }
}
