import 'dart:io';
void main()
{
  /*
  List<Car>myCars=[];
  print("enter the number of cars ");
  int numberOfCars=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=numberOfCars;i++)
  {
    Car c =Car();
    print("car $i name is : ");
    c.name=stdin.readLineSync()!;
    print("car $i buy price is : ");
    c.buyPrice=double.parse(stdin.readLineSync()!);
    print("car $i sell price is : ");
    c.sellPrice=double.parse(stdin.readLineSync()!);
    print("car $i color is : ");
    c.color=stdin.readLineSync()!;
    print("car $i status is : ");
    c.status=stdin.readLineSync()!;
    print("car's $i year of release is : ");
    c.yearOfRelease=int.parse(stdin.readLineSync()!);
    print("car $i quantity is : ");
    c.quantity=int.parse(stdin.readLineSync()!);
    myCars.add(c);
    print("*"*20);
  }
  double totalMoney=0.0;
  int totalQuantity=0;
  myCars.forEach((element) {
    element.printDetails();
    totalMoney+=(element.quantity!*element.sellPrice!);
    totalQuantity+=element.quantity!;
    print("*"*20);
  });
  print("you have ${myCars.length} new cars ");
  print("your total money is : "+ totalMoney.toString());
  */

  List<Student>students=[];
  print("enter the number of students ");
  int numberOfStudents=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=numberOfStudents;i++)
  {
    Student s=Student();
    print("student $i");
    print("please enter your name ");
    s.name=stdin.readLineSync()!;
    s.dateOfBirth=stdin.readLineSync()!;

    s.subjects=[];
    print("enter the number of subjects ");
    int numberOfSubjects=int.parse(stdin.readLineSync()!);
    for(int j=1;j<=numberOfSubjects;j++)
    {
      Subject sub =Subject();
      print("enter the name of the subject $j");
      sub.name=stdin.readLineSync()!;
      print("enter the degree of the ${sub.name} ");
      sub.degree=double.parse(stdin.readLineSync()!);
      s.subjects!.add(sub);
    }
    students.add(s);
  }

  students.forEach((element) {
    element.printDetails();
    print("-*"*20);
  });
}

class Car
{
  String? name,color,status;
  double? buyPrice,sellPrice;
  int? yearOfRelease,quantity;
  Car({this.name,this.buyPrice,this.color,this.quantity,this.sellPrice,this.status,this.yearOfRelease});

  void printDetails()
  {
    print("car name is $name ");
    print("car buy price is $buyPrice ");
    print("car sell price is $sellPrice ");
    print("car profit is ${sellPrice!-buyPrice!} ");
    print("car color is $color ");
    print("car status is $status ");
    print("car's year of release is $yearOfRelease ");
    print("car quantity is $quantity ");
    print("total price of these cars is ${sellPrice!+quantity!}");


  }
}
class Student
{
  String? name,dateOfBirth;
  List<Subject>?subjects;
  Student({this.name,this.dateOfBirth,this.subjects});

  void printDetails()
  {
    print("name of the student is : $name");
    print("date of birth of the student is : $dateOfBirth");
    subjects!.forEach((element) 
    {
      element.printDetails();
    });
  }
}
class Subject
{
  String? name;
  double? degree;
  Subject({this.name,this.degree});

  void printDetails()
  {
    print("name of the subject is : $name");
    print("degree of the subject is : $degree");

  }
}