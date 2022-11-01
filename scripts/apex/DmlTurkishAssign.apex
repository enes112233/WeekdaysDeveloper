List<Account> accAri = [Select id,name,parentid from Account where name like '%Arizona%'];

Account accNew = new Account();
id uniAriId;
for (Account each : accAri) {
    uniAriId= each.ParentId;
}
accNew.Name= 'Summer Fest LCC';
accNew.ParentId = uniAriId;
accNew.Type='Technology Partner';
accNew.Rating='Hot';
accNew.AnnualRevenue=200000000;
accAri.add(accNew);
insert accNew;


Account summerFest = [select id,name from Account where name= 'Summer Fest LCC'];

List<Contact> cntList = new List<Contact>();

for (Integer i = 1; i < 4; i++) {
    Contact cntNew = new Contact();
    cntNew.LastName = 'Event Planer' + i;
    cntNew.Phone = '+1 2345 6789';
    cntNew.AccountId = summerFest.Id;
    cntNew.LeadSource = 'Web';
    cntList.add(cntNew);
}
insert cntList;