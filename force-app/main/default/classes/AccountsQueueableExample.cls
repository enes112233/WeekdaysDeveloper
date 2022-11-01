public with sharing class AccountsQueueableExample implements Queueable {
    List<Account> ListAccount;
    public AccountsQueueableExample(List<Account> accs) {
        ListAccount = accs;
    }

    public void execute (QueueableContext qc){
        for (Account ac : ListAccount) {
            ac.Name = ac.Name + ' -- SI';
        }
        update ListAccount;
    }
}
