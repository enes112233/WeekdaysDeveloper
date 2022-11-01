DateMethodsClass dm = new DateMethodsClass();
date someDate = date.newInstance(2008, 01, 01);
Boolean leapCheck1 = dm.leapYearCheck(someDate);
System.debug('2005-01-01 falls in leap year? ' + leapCheck1);