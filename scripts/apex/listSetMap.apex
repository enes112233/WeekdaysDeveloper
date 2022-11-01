//ListSetMap.practice1();

List<Integer> NumList = new List<Integer>{54, 45, 35, 89, 64, 98, 54, 45, 35, 89, 64, 98};
ListSetMap.practice2(NumList);


Map<Integer,String> zipCodeToCityMap = new Map<Integer,String>();
zipCodeToCityMap.put(96818,'Toronto');
zipCodeToCityMap.put(75050, 'Kitsilan');
zipCodeToCityMap.put(33023, 'Kitchener');
zipCodeToCityMap.put(12335, 'Richmond');
zipCodeToCityMap.put(33124, 'New Westminster');

Boolean contItem = zipCodeToCityMap.containsKey(204101);
System.debug('ContainsKey= ' + contItem);
system.debug('All the zip codes= ' + zipCodeToCityMap.keySet());
system.debug('All the city names= ' +  zipCodeToCityMap.values());
system.debug('Number of mapping= ' + zipCodeToCityMap.size());

set<Integer> uniqueZipCodeSet = new Set<Integer>();
uniqueZipCodeSet = zipCodeToCityMap.keySet();
system.debug('New SET====>' + uniqueZipCodeSet);

List<String> cityNameList = new List<String>();
cityNameList = zipCodeToCityMap.values();
System.debug('New LIST====>' + cityNameList);
System.debug('Is empty? ' + zipCodeToCityMap.isEmpty());



