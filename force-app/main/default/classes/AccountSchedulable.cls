public with sharing class AccountSchedulable implements Schedulable {
    public static void execute(SchedulableContext sc) {
        //you can write here any apex code.
        //yu can call handler, or future method, or queueable, or batch, or anything.
        AccountsBatch ab = new AccountsBatch();
        database.executeBatch(ab);
    }
}
