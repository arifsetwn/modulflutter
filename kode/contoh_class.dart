void main(){
  User userSatu = User('arif',25);
  print (userSatu.username);
  print (userSatu.age);
  userSatu.login();
  
  User userDua = User('aji',20);
  print (userDua.username);
  print (userDua.age);
}

class User {
  String? username;
  int? age;
  
  User(String username, int age){
    this.username = username;
    this.age = age;
  }
  
  void login(){
    print('user login');
  }
}