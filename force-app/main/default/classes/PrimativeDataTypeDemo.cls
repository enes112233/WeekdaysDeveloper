public class PrimativeDataTypeDemo {
   public void PrintBasicDataType(){
    system.debug('inside print basic datatype method.');
    string batchName= 'Batch 10';
    integer totalCandidates = 65;
    boolean isAdminCompleted = true;
    
    system.debug(batchName);
    system.debug(totalCandidates);
    system.debug(isAdminCompleted);

    string batchDescription = batchName + ' is amazing, really';
    system.debug(batchDescription);

    Decimal decValue = 777888.88;
    system.debug('dec value - ' + decValue);

    Long longValue = 7898L;
    system.debug('long value is --> '+ longValue);

    object obj = 'This is a string object';
    system.debug('obj is --> ' + obj );

    object obj2 = 9874.5;
    system.debug('obj2 is --> '+ obj2);

    Id id1 = '0015g00000rtcluAAA';
    system.debug('id1 is of ID datatype and its value is..' + id1);
   }
}
