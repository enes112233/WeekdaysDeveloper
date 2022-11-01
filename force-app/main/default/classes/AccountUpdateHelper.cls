public class AccountUpdateHelper {

    @invocableMethod
    public static void updateAccountWebsite(List<Id> accIds) {
        List<Account> updateAccounts = new List<Account>();
        for (Account acc : [Select id, website from Account where id in :accIds]) {
            acc.Website = 'www.softinnovas.com';
            updateAccounts.add(acc);
        }
        update updateAccounts;
    }
}
