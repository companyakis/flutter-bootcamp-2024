void main() {
  
  //comparision operators
  
  //return true or false
  
  int x = 45;
  int y = 32;
  
  // ==, !=, >, <, >=, <=
  
  print("x is equal to y: ${x == y}");
  print("x is not equal to y: ${x != y}");
  print("x > y: ${x > y}");
  print("x < y: ${x < y}");
  print("x >= y: ${x >= y}");
  print("x <= y: ${x <= y}");
  
  //and &&, or ||, not !
  
  int a = 55;
  int b = 83;
  
  print("x > y || a > b : ${x > y || a > b}"); //true 
  
  print("x > y && a > b : ${x > y && a > b}"); //false
  
  print(!(x > y)); //false
  
  print(!(a == b)); //true
   
}
  
