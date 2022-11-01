public class DateTimeMethodsDemo {
    public void calculateAgeInMonths(){
        date birthdate = date.newInstance(1990, 10, 9);
        date todayDate = date.today();

        integer ageInMonths = birthdate.monthsBetween(todayDate);
        system.debug('Vitap age is months is ' + ageInMonths);
        
    }

    public void calculateInDays(){
        date birthdate = date.newInstance(1990, 10, 9);
        date todayDate = date.today();

        Integer ageInDays = birthdate.daysBetween(todayDate);
        system.debug('Vitap age is days is ' + ageInDays);
    }

    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();

        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription end date is .... ' + subscriptionEndDate);

        Integer endDateMonth = subscriptionEndDate.month();
        system.debug('end date month= ' + endDateMonth);

        Integer endDateYear = subscriptionEndDate.year();
        system.debug('end date year= ' + endDateYear);

    }

    public void printOfferEndDateTime(){
        Datetime offerStartDT = Datetime.now();
        datetime offerEndDT = offerStartDT.addHours(51);
        system.debug('Offer end datetime ==> ' + offerEndDT);

        date offerEndDate = offerEndDT.date();
        system.debug('Offer end date==> ' + offerEndDate);
    }
    
}
