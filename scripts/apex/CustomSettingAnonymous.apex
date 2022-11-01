//How to fetch records from Custom Settings?
//1. SOQL
//2. use getAll() and getInsatance() methods.

//Name --> Country_code__c record
Map<string, Country_code__c> allCountryCode = Country_Code__c.getAll();
system.debug(allCountryCode);

//Canada iso code is CAN
for (string eachCountry : allCountryCode.keyset()) {
    Country_Code__c eachCC = allCountryCode.get(eachCountry);
    system.debug(eachCountry + ' iso code is... ' + eachCC);
}


//account record --> billing Country -> United States.
string c1= 'United States';
// getInstance(Name)
Country_Code__c c1Code = Country_Code__c.getInstance(c1);  // Account newRecord = Trigger.newMap.get(id)
string isoCodeC1 = c1Code.ISO_Code__c;  //newRecord.name
system.debug(c1 + ' isoCode is ' + isoCodeC1);

string c2 = 'Canada';
system.debug(c2 + ' iso code is ' + Country_Code__c.getInstance(c2).ISO_Code__c);



