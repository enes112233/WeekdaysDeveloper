List<Account> accouts = [Select id, name, from account];
AccountsQueueableExample aq = new AccountsQueueableExample(accouts);
Id jobId = System.enqueueJob(aq);