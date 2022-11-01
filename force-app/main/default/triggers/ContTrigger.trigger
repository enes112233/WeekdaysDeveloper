trigger ContTrigger on Contact (before update, after update) {
    if (trigger.isBefore) {
        system.debug('Before update');
    }else if (trigger.isAfter) {
        system.debug('After update');
    } 
        
}