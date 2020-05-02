import 'package:sqflite/sqflite.dart';

// o final serve para garantir que o valor nao poderá ser modificado
final String idColumn = "idColumn";
final String nameColumn = "nameColumn";
final String emailColumn = "emailColumn";
final String phoneColumn = "Column";
final String imgColumn = "Column";

class ContactHelper{

}

//classe contato será o molde
class Contact{

  int id;
  String name;
  String email;
  String phone;
  String img;

  Contact.fromMap(Map map){
    id = map[idColumn];
    name = map[nameColumn];
    email = map[emailColumn];
    phone = map[phoneColumn];
    img = map[imgColumn];
  }

  // o id nao foi colocado pq o banco irá criar o id
  Map toMap(){
    Map<String, dynamic> map = {
      nameColumn: name,
      emailColumn: email,
      phoneColumn: phone,
      imgColumn: img
    };
    if(id != null){
      map[idColumn] = id;
    }
    return map;
  }

  //toString foi criado para poder ler os dados de uma maneira melhor
  @override
  String toString() {
    return "Contact(id: $id, name: $name, email: $email, phone: $phone, img: $img)";
  }


}