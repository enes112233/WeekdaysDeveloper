public with sharing class AssetHandler {
    public static void Assethandlerupdate(List<Asset> newAsset, List<Asset> oldAsset, Map<id,Asset> newMapAsset, Map<Id,Asset> oldMapAsset) {
        
        // for (Asset eachAsset : newAsset) {
        //     if (eachAsset.Status == 'Shipped') {
        //         eachAsset.Description = 'Asset is shipped';
        //     }

        //     if (eachAsset.Status == 'Installed') {
        //         eachAsset.Description = 'Asset is installed';
        //     }
            
        //     if (oldAsset != null && eachAsset.Status == oldMapAsset.get(eachAsset.Id).Status ) {
        //         eachAsset.Description = oldMapAsset.get(eachAsset.Id).Description;
        //     }

        // }

        for(Asset eachAsset : newAsset){
            if(eachAsset.Status != 'Shipped' )
            eachAsset.Status.addError('System will only accept Shipped');
        }

        
    }

    
}
