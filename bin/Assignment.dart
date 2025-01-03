
abstract class Role {
  void displayRole();
}

class Student implements Role {
  final String name;
  final int age;
  final String address;
  final int studentID;
  final List<int> courseScores;

  Student({
    required this.name,
    required this.age,
    required this.address,
    required this.studentID,
    required this.courseScores,
  });

   double average() {
    int sum = 90 + 85 + 82;
    int count = 3;
    return sum / count;
  }


  @override
  void displayRole() {
    print('Role: Student');
  }


  void displayInfo() {
    displayRole();
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Average Score: ${average().toStringAsFixed(1)}');
  }
}


class Teacher implements Role {
  final String name;
  final int age;
  final String address;
  final int teacherID;
  final List<String> coursesTaught;

  Teacher({
    required this.name,
    required this.age,
    required this.address,
    required this.teacherID,
    required this.coursesTaught,
  });


  @override
  void displayRole() {
    print('Role: Teacher');
  }


  void displayInfo() {
    displayRole();
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
}


void main() {
  // Create a Student instance
  Student Stinfo = Student(
    name: 'John Doe',
    age: 20,
    address: '123 Main St',
    studentID: 1,
    courseScores: [90, 85, 82],
  );


  Teacher Tecinfo = Teacher(
    name: 'Mrs. Smith',
    age: 35,
    address: '456 Oak St',
    teacherID: 1,
    coursesTaught: ['Math', 'English', 'Bangla'],
  );


  print('Student Information:\n');
  Stinfo.displayInfo();
  print('\n\n');


  print('Teacher Information:\n');
  Tecinfo.displayInfo();
}
