class TagObject  implements Comparable {
  
  String text;
  int count;
  
 TagObject() {
  
   count = 1;
   text = "";
   
 }
 
  int compareTo(Object otherObject)
    {
        TagObject otherTag = (TagObject)otherObject;
         
        if (count < otherTag.count)
        {
            return 1;
        }
       
        if (count > otherTag.count)
        {
            return -1;
        }
       
        return 0;
    }
  
}