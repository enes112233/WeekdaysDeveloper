public class SoqlDemo {
    public static void accountSOQL_1(){
        //SOQL query returns List<object>
        List<Account> lsitAcc =[select id, name, phone, active__c from account where name like '%A%'];
        system.debug('account list ===> ' + lsitAcc);
        system.debug('# of records ===>'+ lsitAcc.size());

        Account acc = [select id, name, phone, active__c from account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug('acc is ' + acc);
    }

    public static void accountSOQL_2(){
        Account acc = [select id, name, phone, AccountNumber from account ORDER BY CreatedDate DESC LIMIT 1];
        System.debug('acc is ' + acc);

        String accName = acc.Name;
        string accPhone = acc.Phone;
        system.debug('acc name is ' + accName);
        system.debug('acc phone is ' + accPhone);
        system.debug('acc account number is ' + acc.AccountNumber);
        system.debug('------');

    }

    public static void accountSOQL_3(){
        List<Account> listAcc =[select id, name, phone, AccountNumber from account ORDER BY CreatedDate DESC];
        System.debug('ListAcc is  ' + listAcc);

        for (Account eachAccount : listAcc) {
            //to fetch field values we use.
            String accountName = eachAccount.Name;
            string accountPhone = eachAccount.Phone;
            system.debug('acc name is ' + accountName);
            system.debug('acc phone is ' + accountPhone);
            system.debug('acc account number is ' + eachAccount.AccountNumber);
            system.debug('------');
        }
    }

    public static void accountSOQL_filter(){
        string accName = 'Salesforce Inc.';
        List<Account> listAcc = [select id, name from account WHERE Name = :accName];
        system.debug(listAcc);
    }

    public static void accountSOQL_filter(string accName){
        
        List<Account> listAcc = [select id, name from account WHERE Name = :accName];
        system.debug(listAcc);
    }
    

    

}
