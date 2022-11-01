public class SOQL_Class {
    public static void account_SOQL(){
        //24-a
        List<Account> lstPhone = [Select id, phone from Account where phone != NULL];
        for (Account eachPhone : lstPhone) {
            system.debug(eachPhone);
        }

        //24-b
        List<Account> lstName = [Select id, name from Account where name like '%a' ];
        for (Account  eachName : lstName) {
            system.debug('Sonunda a harfi gecenler= ' + eachName);
        }

        //24-d
        List<Contact> lstCon = [select id,name,Phone,HomePhone from Contact where Phone = NULL and HomePhone =NULL ];
        for (Contact  eachP : lstCon) {
            System.debug('Phone section i bos olanlar= ' +eachP.Name);
        }

    }

    public static void account_SOQL2(string x){
        //24-c
        List<Account> lstParam = [Select id, name from Account where Name = :x ];
        for (Account eachword : lstParam) {
            system.debug('Verilen parametre iceren isimler ' + eachword.Name);
        }
    }
    //24-e
    public static void account_SOQL3(){
        List<Account> lstAnnual = [Select id,name,annualRevenue from Account WHERE AnnualRevenue != NULL ];
        decimal sumRevenue=0;

        for (Account eachRevenue : lstAnnual) {
            sumRevenue += eachRevenue.AnnualRevenue;
        }
        System.debug('Sum AnnualRevenu= ' + sumRevenue);

    }

    public static void contactsWithEmails(string fName ){
        List<Contact> filterContacts = [Select name,email,phone from Contact where FirstName= :fName];
        system.debug(filterContacts);
        for (Contact eachCnt : filterContacts) {
            System.debug('Uppercase names ' + eachCnt.Name.toUpperCase() + ' and uppercase emails= ' + eachCnt.Email.toUpperCase());
        }
        System.debug('--------------------');
    }

}