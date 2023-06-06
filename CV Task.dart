import 'dart:io';
void main()
{
  CV cv=CV(info: PersonalInfo(name: "Youssef", age: 21, phones: [
    Phone(number: "0100101101", isHaveWhatsapp: true),
    Phone(number: "01221000999", isHaveWhatsapp: false)
    ]), 
    courses: [
      Course(name: "Flutter", start: "2022", end: "2023"),
      Course(name: "AI", start: "2022", end: "2024")
      ],

    languages: ["arabic","english","german"],
    skills: ["leadership","technical"]);

  cv.printDetails();

}

class CV
{
  PersonalInfo? info;
  List<Course>? courses;
  List<String>? languages;
  List<String>? skills;

  CV({required this.info,required this.courses,required this.languages,required this.skills});

  void printDetails()
  {
    info!.printDetails();
    courses!.forEach((element) {
      element.printDetails();
    });
    print("I speak $languages");
    print("I have skills $skills");
  }
}
class Course
{
  String name,start,end;
  Course({required this.name,required this.start,required this.end});

  void printDetails()
  {
    print("course name is $name starts in $start and ends in $end");
  }
}
class PersonalInfo
{
  String name;
  int age;
  List<Phone> phones;

  PersonalInfo({required this.name,required this.age,required this.phones});

void printDetails()
  {
    print("my name is $name");
    print("my age is $age");
    phones.forEach((element) { 
      element.printDetails();
    });
  }
}
class Phone
{
  String number;
  bool isHaveWhatsapp;
  
  Phone({ required this.number,required this.isHaveWhatsapp});

  void printDetails()
  {
    print("my number is $number");
    print("does have whatsApp $isHaveWhatsapp");
  }
}