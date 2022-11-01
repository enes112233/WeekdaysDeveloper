public class AccountFUTUREUpdate {
    @Future
    public static void updateNumberOfContact(Set<id> accIds) {
        List<Account> lstAcc = [Select id, Number_Of_Contacts__c, (Select id, name from Contacts)
         from Account where id in :accIds ];
        
    if(!lstAcc.isEmpty()){
        for (Account acc : lstAcc) {
            List<Contact> lstCon = acc.Contacts;
            acc.Number_Of_Contacts__c = lstCon.size();
        }
        update lstAcc;
    }
        

    }
}
