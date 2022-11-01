Map<String,String> mapContryCurrency = new Map<String, String>();
mapContryCurrency.put('USA', 'Dollar');
mapContryCurrency.put('Francce', 'Euro');
mapContryCurrency.put('India', 'Rupees');
mapContryCurrency.put('India', 'Rupee');
mapContryCurrency.put('Turkey', 'Lira');
mapContryCurrency.put('El Salvador', 'Bitcoin');
mapContryCurrency.put('Canada', 'Dollar');
mapContryCurrency.put('Australia', 'Dollar');

system.debug('Map country currency ===> ' +mapContryCurrency);

String Ind = 'India';
String indiaCurrency = mapContryCurrency.get(Ind);
String TurkiyeCurrency = mapContryCurrency.get('Turkey');
system.debug('India currency is ' + indiaCurrency);
system.debug('Turkiye currency is ' + TurkiyeCurrency); 


Set<String> allCountries = mapContryCurrency.keySet();
system.debug('All Countries ==> ' + allCountries);

// values() ==> LIST<value_datatype>
List<String> allCurrencies = mapContryCurrency.values();
System.debug('all currencies ==> ' + allCurrencies);

Set<String> countries = mapContryCurrency.keySet();
system.debug('all countries ==> ' + countries);
for(String eachCountry : countries){
    system.debug('each countries ==>' + eachCountry);
    //Key is eachCountry --> following this?
    String eachCurrency = mapContryCurrency.get(eachCountry);
    system.debug('each currency ==> ' + eachCurrency);
    system.debug('-----------'); 
}



    
