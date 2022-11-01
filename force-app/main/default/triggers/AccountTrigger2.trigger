trigger AccountTrigger2 on SOBJECT (after insert) {
    system.debug('Account after insert trigger called');
}