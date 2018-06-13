public  class StringArrayTest {
	
	public static list<String> generateStringArray(Integer count){
		list<String> stringList = new list<String>();
		for(integer i=0;i<count;i++){
			stringList.add('Test '+i);
		}
		return stringList;
	}
 
}