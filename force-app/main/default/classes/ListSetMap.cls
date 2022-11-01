public class ListSetMap {
    public static void practice1(){
        List<String> lst1 = new List<String>();
        lst1.add('Ankara');
        lst1.add('Istanbul');
        lst1.add('London');
        lst1.add('Paris');
        lst1.add('New York');
        lst1.add('Tokyo');
        lst1.add('Antalya');
        lst1.add('London');
        lst1.add('Paris');
        lst1.add('New York');
        lst1.add('Tokyo');

        System.debug('Size of the list= ' + lst1.size());

        System.debug('Check the list is empty= ' + lst1.isEmpty());

        String seventhItemOfList = lst1[6];
        System.debug('Seventh item of the list= ' + seventhItemOfList);

        Set<String> setCities = new Set<String>();
        setCities.addAll(lst1);
        system.debug('New cities set= ' + setCities);
    }

    public static void practice2(List<Integer> numbers){

        Set<Integer> oddNumbers = new Set<Integer>();
        Set<Integer> evenNumbers = new Set<Integer>();

        for(integer eachNum : numbers){
             
            if(Math.mod(eachNum, 2)==0){
                evenNumbers.add(eachNum);
                
            }else{
                oddNumbers.add(eachNum);
                
            }
        }
        system.debug('Set even numbers= ' + evenNumbers);
        System.debug('Set odd numbers= ' + oddNumbers);

    }


}
