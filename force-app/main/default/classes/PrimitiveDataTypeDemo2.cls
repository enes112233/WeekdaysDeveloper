public class PrimitiveDataTypeDemo2 {
    public void printNewDate(){
        system.debug('create new date instance ');

        // new date instance using YEAR, MOUNT, DAY
        date newDate1 = date.newInstance(1999, 2, 17);
        system.debug('newDate1 --> ' + newDate1);
        Date newDate2 = Date.newInstance(2022, 3, 18);
        system.debug('newDate2 --> ' + newDate2);

        Date todayDate = date.today();
        system.debug('today\'s  date ' + todayDate);
    }

    public void printNewTime(){
        // new time using Hour, Minute, Second, Milli Seconds
        Time myTime = Time.newInstance(18, 9, 30, 25);
        Time myTime2 = Time.newInstance(7, 9, 8, 15);
        system.debug('mytime -> ' + myTime);
        system.debug('mytime2 -> ' + myTime2);

    }
    public void printNewDateTime(){
        Date todayDate = date.today();
        Time myTime = Time.newInstance(18, 9, 30, 25);
        //1. new datetime using DATE and TIME       
        Datetime dt1 = Datetime.newInstance(todayDate, myTime);
        system.debug('dt1 --> ' + dt1);

        //2. new datetime using Year - Month - Day
        Datetime dt2 = Datetime.newInstance(2025, 9, 25); //Time will be midnight.
        // It takes midnight for Our User`s TIMEZONE
        system.debug('dt2 --> ' + dt2); // But, when it prints, it prints GMT. (GMT-04:00) Eastern Daylight Time (America/New_York)
        
        //3. New Date Time using Year, Month, Day, Hour, Minute, Second 
        Datetime dt3 = Datetime.newInstance(2022, 4, 15, 8, 8, 8);
        system.debug('dt3 --> ' + dt3); // it displays in gmt timezone

        //4. with longTime
        Long longTime1 = 0;
        Datetime dt4 = Datetime.newInstance(longTime1);

        long longTime2 = 1387845643214L;
        datetime dt5 = Datetime.newInstance(longTime2);
        system.debug('dt4 --> ' + dt4);
        system.debug('dt5 --> ' + dt5);
        

        //5. new datetime in GMT
        Datetime dt6 = Datetime.newInstanceGmt(2022, 4, 15, 8, 8, 8);
        SYSTEM.debug('DT6 --> ' + dt6);

        //6. NOW
        datetime dt7 = datetime.now();
        system.debug('dt7 --> ' + dt7);
    }

}
