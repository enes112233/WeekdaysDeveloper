List<Account> listAcc = new List<Account>();

Account acc = new Account();
acc.Name = 'acc bulk 1';
acc.Phone= '000';
listAcc.add(acc);

Account acc1 = new Account();
acc1.Name = 'acc bulk 2';
acc1.Phone= '000';
listAcc.add(acc1);

Account ac1 = new Account();
Account ac2 = new Account();

listAcc.add(ac1);
listAcc.add(ac2);

list<Database.SaveResult> results = database.insert(listAcc, false);//this will ERROR only BAD guys. Good ones will be inserted.
for (Database.SaveResult eachResult : results) {
    if (eachResult.isSuccess()) {
        system.debug('Account created successfully. Id is ' + eachResult.getId());
    }else {
        system.debug('Bad guy. Error is ' + eachResult.getErrors());
    }
}


