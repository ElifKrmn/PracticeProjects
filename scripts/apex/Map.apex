map<string,Integer> marksObtainInMaths = new map<string, integer> {'0111CE112' => 40,'0111CE102'=>19,'0111CE100'=> 33,'0111CE098'=>40};
marksObtainInMaths.put('0111CE01', 25);
marksObtainInMaths.put('0111CE08', 17);

for (string rollNo : marksObtainInMaths.keySet()) {
    System.debug('rollNo ' + rollNo);

}

for (integer val : marksObtainInMaths.values()) {
    System.debug('values '+ val);
}

set<string> uniqueRollNumberSet = new set<string>();
uniqueRollNumberSet= marksObtainInMaths.keySet();
system.debug(uniqueRollNumberSet);

list<Integer> marksObtainList= new list<integer>();
marksObtainList=marksObtainInMaths.values();
System.debug(marksObtainList);
