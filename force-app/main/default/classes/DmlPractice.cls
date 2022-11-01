public class DmlPractice {
    public static void insert_dml() {

        List<Account> listAcc = new List<Account>();
        Account acc = new Account();
        acc.Name = 'Enes Assignment';
        listAcc.add(acc);

        Account acc1 = new Account();
        acc1.name = 'Seyma Assignment';
        listAcc.add(acc1);

        Account acc2 = new Account();
        acc2.Name ='Van Assignment';
        listAcc.add(acc2);

        insert listAcc;

    
    }

    public static void updatingDml() {
        List<Account> accName = [Select id, name from Account where Name LIKE  '%Assignment' LIMIT 3];
        
        for (Account eachAssg : accName) {
            eachAssg.Name = eachAssg.Name + ' Updation';

        }
        update accName;
    }
    

}
