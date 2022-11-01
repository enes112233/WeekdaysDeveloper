@isTest
public class AccountTriggerHandlerTest {
    @isTest
    private static void testUpdateDescription1() {
        //1. prepare data
        Account acc = new account();
        acc.name = 'SI Test';
        acc.Industry = 'Energy';
        acc.Active__c = 'Yes';

        Account acc2 = new account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';
        acc2.Active__c = 'Yes';

        Account acc3 = new account();
        acc3.name = 'PI Test';
        acc3.Industry = 'Banking';
        List<account> listAcc = new list<account>{acc, acc2, acc3};
        //2. dml will automatically call trigger, and its handler method too.
        insert listAcc;

        //3. assertion
        list<account> accounts = [select id, description, Active__c from account where Active__c = 'Yes' ];
        system.assert(accounts[0].Description.contains('active'));
        
    }
    @isTest
    private static void testUpdateDescription2() {
        //1. prepare data
        Account acc = new account();
        acc.name = 'SI Test';
        acc.Industry = 'Energy';

        Account acc2 = new account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.name = 'PI Test';
        acc3.Industry = 'Banking';
        List<account> listAcc = new list<account>{acc, acc2, acc3};
        //2. dml will automatically call trigger, and its handler method too.
        insert listAcc;

        acc.Active__c = 'Yes';
        acc2.Active__c = 'Yes';
        acc3.Active__c = 'Yes';
        List<account> listAcc2 = new list<account>{acc, acc2, acc3};
        update listAcc2;

        //3. assertion
        list<account> accounts = [select id, description, Active__c from account where Active__c = 'Yes' ];
        system.assert(accounts[0].Description.contains('active'));

    }

    @isTest
    private static void testVIPUpdate() {
        Account acc = new account();
        acc.name = 'SI Test';
        acc.Industry = 'Energy';
        
        Account acc2 = new account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';
        List<Account> listAcc = new List<Account>{acc,acc2};
        //2. dml will automatically call trigger, and its handler method too.
        insert listAcc;

        List<Contact> newContacts = new List<Contact>();
        for (Integer i = 0; i < 200; i++) {
            Contact c = new Contact();
            c.LastName = 'trigger test '+ i;
            if (i < 100) {
                c.AccountId = acc.Id;
            }else if(i < 200) {
                c.AccountId = acc2.Id;
            }
            newContacts.add(c);
        }
        insert newContacts;

        // Update vip fields of account
        acc.VIP__c = true;
        acc2.VIP__c = true;
        List<Account> listAcc2 = new List<Account>{acc,acc2};
        //Update accounts
        update listAcc2;

        //assertion
        //check all contact's field is true.
        List<Contact> contacts = [Select id, vip__c, name from contact];
        system.assert(true, contacts[0].VIP__c);
    }

    @isTest
    private static void testOppAndCnt() {
        List<Account> lstAcc = new List<Account>();
        for (Integer i = 0; i < 300; i++) {
            Account acc = new Account();
            acc.Name = 'Test ' + i;

            lstAcc.add(acc);
        }
        if (!lstAcc.isEmpty()) {
            insert lstAcc;
        }

        Set<Id> setAcc = new Set<Id>();
        for (Account acc : lstAcc) {
            setAcc.add(acc.Id);
        }

        List<Contact> lstCnt = [Select id,lastName, accountId From Contact where accountId in :setAcc];
        List<Opportunity> lstOpp = [Select id,stageName,accountId,CloseDate From Opportunity where accountId IN :setAcc ];
       
        system.assertEquals(300, lstCnt.size());
        system.assertEquals(300, lstOpp.size());
    }
}
