public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string methods in apex language.';
        
        // 1. length
        integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is = ' + lengthOfStr);

        //2. Capitalize
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('capital string is ..' + sessionDescriptionInCaps);

        //3.a contains apex
        boolean containsApex = sessionDescription.contains('apex');
        system.debug('contains apex???????? ' + containsApex);

        //3.b contains APEX
        boolean containsApex2 = sessionDescription.contains('APEX');
        system.debug('contains apex???????? ' + containsApex2);

        //3.c contains salesforce
        boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('contains apex???????? ' + containsSalesforce);

         // uncapitalize
         string uncapitalizeDemo = sessionDescription.uncapitalize();
        system.debug('İlk harfi küçülttü: ' + uncapitalizeDemo);

        // trim
        string trimDemo = sessionDescription.trim();
        system.debug('Normalde görünen:' + sessionDescription);
        system.debug('Boşluk olmadan:' + trimDemo);

        // equals
        boolean equalsDemo = sessionDescription.equals('learning string methods in apex language.');
        system.debug('eşit mi? ' + equalsDemo);
    }
}
