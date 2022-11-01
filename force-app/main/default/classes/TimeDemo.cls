public class TimeDemo {
    public void TimeDemoMethod(){
        date currentDate = Date.today();
        date subscriptionStarDate = date.newInstance(2022, 01, 01);
        date subscriptionEndDate = date.newInstance(2023, 01, 01);

        Integer betweenStartEndDays = subscriptionStarDate.daysBetween(subscriptionEndDate);
        date newSubscriptionDay = subscriptionEndDate.addDays(-30);

        system.debug('Current Date is ' + currentDate);
        system.debug('No of Days ' + betweenStartEndDays);
        system.debug('subscription end date is ' + newSubscriptionDay);
    }
}
