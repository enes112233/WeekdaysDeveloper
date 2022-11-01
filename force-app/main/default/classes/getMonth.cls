public class getMonth {

    public String getMonthName(integer month){

        string output_Month = 'Not a valid Month';
        
        if (month == 1) {
            output_Month = 'January';
        }else if (month == 2) {
            output_Month = 'February';
        }else if (month == 3) {
            output_Month = 'March';
        }else if (month == 4) {
            output_Month = 'April';
        }else if (month == 5) {
            output_Month = 'May';
        }else if (month == 6) {
            output_Month = 'June';
        }else if (month == 7) {
            output_Month ='July';
        }else if (month == 8) {
            output_Month ='August';
        }else if (month == 9) {
            output_Month = 'September';
        }else if (month ==10) {
            output_Month = 'October';
        }else if (month ==11) {
            output_Month = 'November';
        }else if (month == 12) {
            output_Month = 'December';
        }else {
            output_Month = 'Not a valid Month';
        }
        
        return output_Month;        
    }

    public string quarterSwich(String quarter){
        string output_quarter = 'Enter proper month name';

        switch on quarter {
            when 'December','January','February' {
                output_quarter ='Ouarter 1';
            }
            when 'March','April','May' {
                output_quarter = 'Quarter 2';
            }
            when 'June','July','August'{
                output_quarter = 'Quarter 3';
            }
            when 'September','October','November'{
                output_quarter = 'Quarter 4';
            }
            when else{
                output_quarter = 'Not a valid quarter';
            }
            
        }
        return output_quarter;
    }


}
