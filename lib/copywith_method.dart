void main() {

}

// class bnye h
 class Person{
  final String name;
  final int age ;

  Person({required this.name, required this.age});

  // use of copywith

 Person copyWith({String? name, int? age}) {
   return Person(name: name ?? this.name, age: age ?? this.age);
 }
 }