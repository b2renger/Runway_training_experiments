/*
add "{$char} as in" before word and definition
 */


char c = 'B';

char [] chars = {
  'A', 'B', 'C', 'D', 'E', 'F', 'G', 
  'H', 'I', 'J', 'K', 'L', 'M', 'N', 
  'O', 'P', 'Q', 'R', 'S', 'T', 'U', 
  'V', 'W', 'X', 'Y', 'Z'
};

Table table;

void setup() {

  for (int j = 0; j < chars.length; j++) {
    char c = chars[j];

   
    
    table = loadTable(c + ".csv");
    println(table.getRowCount() + " total rows in table");
    
     String [] inventory = new String[0];
    


    for (int i = 0; i < table.getRowCount(); i++) {
      
      String s = table.getRow(i).getString(0); 
      if (s.length() > 0) {
        String newS = c + " as in " + s +",";
        println(newS);
        inventory = append(inventory, newS);
      }
    }
 
    saveStrings( "results/" + c +"_prefixed.txt", inventory);
    //saveTable(table, c+"_prefixed.csv");
  }
  
  println("done");
}


void draw() {
}
