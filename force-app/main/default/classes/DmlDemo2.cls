public class DmlDemo2 {
    public static void dmlInsertDemo2(){
        Account acc = [Select id,name from account ORDER BY CreatedDate desc LIMIT 1];

        Contact cnt = new Contact();
        cnt.LastName = 'Biden';
        //establish relationship with account
        cnt.AccountId = acc.Id;
        insert cnt;
    }

    public static void dmlInsertDemo3() {
        Salesforce_Project__c sp = [select id from Salesforce_Project__c ORDER BY CreatedDate desc limit 1];

        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c ='Learn APEX DML';
        st.Priority__c= 'High';
        st.Status__c= 'New';
        st.Requested_by_date__c = date.newInstance(2022, 9, 09);
        ST.Salesforce_Project__c= sp.Id;
        insert st;
    }

    public static void dmlMultipleRecord_right1() {
        List<account> listAcc = new list<account>();

        Account acc = new account();
        acc.name = 'acc bukl 1';
        acc.phone = '987654321';
        listAcc.add(acc);

        Account acc1 = new account();
        acc1.name = 'acc bukl 2';
        acc1.phone = '987654321';
        listAcc.add(acc1);

        Account acc2 = new account();
        acc2.name = 'acc bukl 1';
        acc2.phone = '987654321';
        listAcc.add(acc2);

        insert listAcc;
    }

    public static void dmlMultipleRecord_right2() {
        List<Account> listAcc = new List<Account>();
        for (Integer i = 0; i < 155; i++) {
            Account acc2 = new Account();
            acc2.Name ='SoftInnovas 30ct v' + i;
            acc2.Phone= '987654321';
            acc2.Active__c ='Yes';
            listAcc.add(acc2);
        }
        insert listAcc;
    }

    public static void dmlMultipleRecordUpdate_right1() {
        List<Account> listAcc = [select id, name from account ORDER BY CreatedDate desc limit 155];
 
        List<Account> updateAcc = new List<Account>();
 
        for (account eachAcc : listAcc) {
            eachAcc.Name = eachAcc.name + ' via B.0';
            //add to the newly created list
            updateAcc.add(eachAcc);
        }
        if (!updateAcc.isEmpty()) {
             update updateAcc;    
        }
        
    }

    

}
