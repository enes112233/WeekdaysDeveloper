@isTest
public class AccountTriggerTest {
    @isTest
    private static void testAccTrigger(){

        Account acc = new Account();
        acc.Name = 'SI Test';
        acc.Industry = 'Energy';

        Account acc2 = new Account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new Account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Bankig';
        List<Account> listAcc = new List<Account>{acc,acc2,acc3};
        insert listAcc;

        
    }
    
}
