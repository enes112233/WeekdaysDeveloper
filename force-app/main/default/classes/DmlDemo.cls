public class DmlDemo {
    public static void dmlInsertDemo_stndObj(){
        //1. create new instance of sObject
        Account acc = new Account();
        //2. set fields
        acc.Name= 'SoftInnovas';
        //3. set other fields
        acc.Phone= '987654321';
        //4. insert
        insert acc;
    }
    
    public static void dmlInsertDemo_cstmObj1(){
        //1. new Instamce
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Teach DML to super Batch 10';
        sp.Description__c= 'All are doing great.';
        sp.Status__c= 'New';
        //insert dml
        insert sp;
    }

    public static void dmlUpdateDemo1(){
        Account acc = new Account();
            acc.Name= 'anything';
            system.debug('Before Inserting -> ' + acc);
            insert acc;

            acc.Name= 'Softinnovas Inc';
            update acc;
            system.debug('after updating -> ' + acc);
        
    }

    public static void dmlUpdateDemo3(){
        Account acc = [Select id, name from Account where name = 'SoftInnovas' limit 1];

        //update name
        acc.Name = 'SoftInnvas Inc.';
        acc.Phone = '987654321'; //we can set without quering the field.
        update acc;
    }
}
