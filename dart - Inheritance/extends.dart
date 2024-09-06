class A{
              
  int x;

  A(this.x){print("Constucter of class A");}

  void showInfo () => print("x = ${x}");
  @override

  String toString() => "Object from class A"; 
}

class B extends C{

  int y;

  B(this.y, x):super(x) {print("Constucter of class B");}

  void showInfo () => print("y = ${y}");
  @override

  String toString() => "Objext from class B";
}

class C extends A{

  int x;

  C(this.x):super(x) {print("Constucter of class C");}

  void showInfo () => print("x = ${x}");
  @override

  String toString() => "Object from class C";
}

 void main(List<String> args) {
  var b = B(2,7); 
  var c = C(5);
  var a = A(10);

  print('x = ${b.x}, y = ${b.y}');
  print('x = ${c.x}');
  print('x = ${a.x}\n');

  a.showInfo();
  b.showInfo();
  c.showInfo();
}