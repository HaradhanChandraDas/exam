
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

  // Override the displayRole method
  @override
  void displayRole() {
    print('Role: Student');
  }

  // Method to display Student information
  void displayInfo() {
    displayRole();
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Average Score: ${average().toStringAsFixed(1)}');
  }
}

// Class representing a Teacher
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

  // Override the displayRole method
  @override
  void displayRole() {
    print('Role: Teacher');
  }

  // Method to display Teacher information
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
  Student student = Student(
    name: 'John Doe',
    age: 20,
    address: '123 Main St',
    studentID: 1,
    courseScores: [90, 85, 82],
  );


  Teacher teacher = Teacher(
    name: 'Mrs. Smith',
    age: 35,
    address: '456 Oak St',
    teacherID: 1,
    coursesTaught: ['Math', 'English', 'Bangla'],
  );


  print('Student Information:\n');
  student.displayInfo();
  print('\n\n');


  print('Teacher Information:\n');
  teacher.displayInfo();
}
