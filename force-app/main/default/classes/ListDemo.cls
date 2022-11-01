public class ListDemo {
    public static String candidateList(integer i){
        // className instanceName = new clsaaName();
        List<String> listCandidate = new List<String>();
        listCandidate.add('Marc');
        listCandidate.add('Elon');
        listCandidate.add('Bill');
        listCandidate.add('Marc');
        system.debug('listCandidates ==> ' + listCandidate);

        String returnStr ='';
        if (i>=0 && i < listCandidate.size()) {
            returnStr = listCandidate[i];
        }else {
            returnStr = 'No Values FOUND.';
        }
        return returnStr;
    }

    public static void randomIntegerList(){
        List<Integer> listInteger = new List<Integer>(); 
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(15);
        system.debug('list integer ===>' + listInteger);

        integer index3value = listInteger.get(3);
        system.debug('index 3 value is ===> ' +  index3value);

        integer index2value = listInteger[2];
        system.debug('index 2 value is ===> ' + index2value);

    }

    public static void allCats(){
        Cat siCat = new Cat('fluffykins','white');
        Cat vk = new Cat ('van','white');
        cat s = new Cat('simba','brown');

        List<Cat> cats = new List<Cat>();
        cats.add(siCat);
        cats.add(vk);
        cats.add(s);
        cats.add(siCat);
        cats.add(vk);

        system.debug('all cats ===> ' + cats);

        if (!cats.isEmpty()) {
            Cat catAt3 = cats[3];
            system.debug('cat at 3 is ' + catAt3);
        }
    }

}
