public class DaysCollection {
    public static String daysAssignment(integer input){
        List<string> lstDays = new List<string>();

        lstDays.add('sunday');
        lstDays.add('monday');
        lstDays.add('tuesday');
        lstDays.add('wednesday');
        lstDays.add('thursday');
        lstDays.add('friday');
        lstDays.add('saturday');
        

        string outputDay = '';
        
        if (input > lstDays.size()) {

            outputDay = 'No values FOUND';
        }else {
            outputDay = lstDays.get(input);
        }
        return outputDay;
    }
}
