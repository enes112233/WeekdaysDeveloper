public class CountriesSet {
    
    public static void capitalizeCountries(){

        Set<string> countries = new Set<string>();
        countries.add('Japan');
        countries.add('India');
        countries.add('America');
        System.debug('Countries__---> ' + countries);
        
        Set<string> countriesInCaps = new Set<string>();
        
        for (string eachCountry : countries) {
            String strCoun = eachCountry.toUpperCase();
            countriesInCaps.add(strCoun);

        }
        System.debug('Countries in caps= ' + countriesInCaps);

    }

    public static void mapping(){
        Map<string, Integer> marksObtainMaths = new Map<string, Integer>();

        marksObtainMaths.put('0111CE112' , 40);     
        marksObtainMaths.put('0111CE102', 19);
        marksObtainMaths.put('0111CE122', 33);
        marksObtainMaths.put('0111CE133', 40);

        Integer getTheNumber = marksObtainMaths.get('0111CE133');
        system.debug('Marks obtain by student number with Roll number=0111CE133 ' + getTheNumber);

       
        
    }
}
