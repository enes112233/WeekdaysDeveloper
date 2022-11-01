public class SOQL_Assignment {
    public static void soql_WhereClause(){
        List<Contact> lstContact = [Select id, name, lastname from contact WHERE lastname like '%A%'];
        system.debug(lstContact);
        system.debug('size of contacts with A: ' + lstContact.size());

    }

    public static void soql_formethod(){
        List<Contact> lstContact = [select lastname, phone from Contact ];
        for (Contact eachContact : lstContact) {
            string lnContact = eachContact.LastName;
            string phContact = eachContact.Phone;
            system.debug('Last Name of contact ' + lnContact);
            system.debug('Phone number of contact ' + phContact);
        }
    }
}