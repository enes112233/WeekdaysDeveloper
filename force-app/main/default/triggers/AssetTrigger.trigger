trigger AssetTrigger on Asset (before insert, before update) {

    AssetHandler.Assethandlerupdate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    
}