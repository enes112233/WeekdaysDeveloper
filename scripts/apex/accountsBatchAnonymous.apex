AccountsBatch ab = new AccountsBatch();
id batchId =  Database.executeBatch(ab, 15);
system.debug('Batch id===> ' + batchId);