//import 'dart:_js_helper';
import 'dart:io';
void main()
{
  
  List<Person>mySiblings=[];
  print("enter the number of Your siblings ");
  int numOfSiblings = int.parse(stdin.readLineSync()!);
  for(int i =1;i<=numOfSiblings;i++){
    print("enter your sibling details ");
    print("enter your sibling name ");
    String name = stdin.readLineSync()!;
    print("enter "+name+" age ");
    int age = int.parse(stdin.readLineSync()!);
    print("does "+name+" smoke ");
    String smoke = stdin.readLineSync()!;
    print("enter "+name+" height ");
    double height = double.parse(stdin.readLineSync()!);
    print("enter "+name+" weight ");
    double weight = double.parse(stdin.readLineSync()!);
    print("enter "+name+" friends ");
    String friends = stdin.readLineSync()!;
    Person p =Person(name: name,age: age,weight: weight,friends: friends.split(" "),height: height,isSmookings: smoke=="true");
    mySiblings.add(p);

  }
  mySiblings.forEach((element) { element.printObjectData();});
  print("*"*25);
  //siblingsList();
  //userEmail();
  //printNumberType();
  //reverseList();
  //mounthTask();
  //searchTask();
  //printStars();
  //getGrades();
  //calculator();
  //checkEvenOrOdd();

  Person p1 =Person(name: "ya3goob gamar eldein debyaza", age: 20, height: 190, weight: 80, friends: ["khedr karaweeta","khalid kashmeery","ismail ahmed kanabawy","ahmed sombol"], isSmookings: false);
  p1.printObjectData();
  print("*"*20);
  Person p2 =Person();
  p2.name="ismail kanabawy";
  p2.age=22;
  p2.isSmookings=false;
  p2.weight=60.0;
  p2.height=180.0;
  p2.friends=["ya3goob gamar eldein deyaza ","khedr karaweeta "];
  p2.printObjectData();
}
void getGrades()
{
    print("enter your grade ");
  double x= double.parse(stdin.readLineSync()!);
  if (x>100 && x<0)
  {
    print("invalid input ");
  }
  else if(x >= 50 && x < 65)
  {
    print("pass ");
  }
  else if (x>=65 && x <75)
  {
    print("good ");
  }
  else if (x >=75 && x < 85)
  {
    print("very good ");
  }
  else if (x >=85 && x <= 100)
  {
    print("exellent ");
  }
  else {
    print("failed ");
  }
}

void calculator()
{
  print("enter your first number ");
  double firstNum = double.parse(stdin.readLineSync()!);
  print("enter your second number ");
  double secondNum = double.parse(stdin.readLineSync()!);
  print("enter the operation ");
  String operation= stdin.readLineSync()!;
  double result =-1;
  if(operation=="+"){
    result = firstNum+secondNum;
  }
  else if(operation=="-"){
    result = firstNum-secondNum;
  }
  else if(operation=="*"){
    result= firstNum*secondNum;
  }
  else if(operation=="/"){
    result = firstNum/secondNum;
  }
  else if(operation=="%"){
    result = firstNum%secondNum;
  }
  else{
    print("invalid Operation Input ");
  }
  print(result);


}

void checkEvenOrOdd(){

  print("enter the number to check ");
  int number = int.parse(stdin.readLineSync()!);
  if(number%2==0){
    print("the number you entered "+number.toString()+" is even ");
  }
  else{
        print("the number you entered "+number.toString()+" is odd ");

  }
}
void printStars(){
  for(int i=1;i<=5;i++){
      for(int j=1;j<=i;j++){
        stdout.write("*"*i);

      }
    print("");
  }
}
void searchTask(){

  String lorum="There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.";
  print(lorum.split(". "));
  print("enter the word to search for ");
  String searchWord=stdin.readLineSync()!;
  if(lorum.contains(searchWord)){
    print("keyword in text in index " + lorum.indexOf(searchWord).toString());
  }
  else{
    print("keyword not in text");
  }
}

void mounthTask(){

  //List<String> mounthList = ["1","2","3","4","5","6","7","8","9","10","11","12"];
  Map<int, String> mounthList = {1:"January", 2: "February", 3: "March", 4 : "April",5:"May",6:"June",7:"July",8:"August",9:"September",10:"October",11:"November",12:"December"};
  print("enter the number of the mounth ");
  int mounthInput=int.parse(stdin.readLineSync()!);
  if(mounthList.containsKey(mounthInput)){
    print(mounthList[mounthInput]);
  }
  else{
    print("invalid input ");
    print("you must enter a number from 1 to 12 ");
    
  }
}
void printNumberType(){
  /*print("enter an Input to determine it's type ");
  final input=stdin.readLineSync();
  
  var x=input;
  print(x.runtimeType);*/

  int start,end;
  print("check numbers from start to end ");
  print("enter number to start from ");
  start=int.parse(stdin.readLineSync()!);
  print("enter number to end at ");
  end=int.parse(stdin.readLineSync()!);
  for(int i=start;i<=end;i++){
    if(i%2==0){
      print("number $i is even ");
    }
    else{
      print("number $i is odd ");
    }
  }

}
void reverseList(){
  List<String> namesList= ["ali","ahmed","mohammed","nour","youssef"];
  print(namesList);
  print("list reversed ");
  print(namesList.reversed);

}
void userEmail(){
  print("please enter your username ");
  String x,y,username;
  username=stdin.readLineSync()!;
  print("please enter your email ");
  String userEmail= stdin.readLineSync()!;
  print("please enter your password ");
  String userPassword= stdin.readLineSync()!;
  print("data saved correctly please verify your email and password ");
  print("enter your email ");
  
  x=stdin.readLineSync()!;
  print("enter your password ");
  y=stdin.readLineSync()!;
  
  for(int i=3;i>=1;i--){

    if(x==userEmail&& y ==userPassword){
    print("welcome "+username);
    break;
    }
    else if(x!=userEmail){
      print("email is incorrect try again "+ i.toString() +" trials left ");
      x=stdin.readLineSync()!;
      
    }
    else if(y!=userPassword){
      print("password is incorrect try again "+ i.toString() +" trials left ");
      y=stdin.readLineSync()!;
      continue;
    }
    if(i==1){
      print("try to enter the data again after hour ");
      break;
    }
    
  }
}
void siblingsList(){
  print("enter the number of your siblings ");
  int n = int.parse(stdin.readLineSync()!);
  List<String>siblingsList=[];
  
  for(int i=1;i<=n;i++){
    print("enter your "+i.toString()+" sibling name ");
    siblingsList.add(stdin.readLineSync()!);
  }
  print("your siblings number is "+siblingsList.length.toString()+" and their names are "+siblingsList.toString());
}

class Person
{
  String ?name;
  int ?age;
  double ?height;
  double ?weight;
  List<String>? friends;
  bool ?isSmookings;

  Person( { this.name, this.age, this.height, this.weight, this.friends, this.isSmookings});
  
  void printObjectData(){
    print("printing object data ");
    print("name is "+this.name.toString()+" age is "+this.age.toString()+" height is "+this.height.toString()+" Weight is "+this.weight.toString()+" does smoke "+this.isSmookings.toString()+" has friends "+this.friends.toString());

  }

}