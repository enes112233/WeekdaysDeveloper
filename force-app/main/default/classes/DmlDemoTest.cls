@isTest
public class DmlDemoTest {
    @isTest
    private static void testDmlInsert1() {
        DmlDemo.dmlInsertDemo_stndObj();
        //how to assert this?
          //soql
        List<Account> listAcc = [select id, name from Account where name = 'SoftInnovas' ];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
}
