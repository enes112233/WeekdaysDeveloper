DateTimeMethodsDemo dtm = new DateTimeMethodsDemo();
dtm.printOfferEndDateTime();
dtm.printSubscriptionEndDate();
dtm.calculateAgeInMonths();
dtm.calculateInDays();


Datetime birthDate = datetime.newInstanceGmt(1994, 6, 17, 12, 10, 00);
long longBirthDate = birthDate.getTime();
system.debug('birthday in milliseconds from 1970 Jan1 0000 GMT ===> ' + longBirthDate);