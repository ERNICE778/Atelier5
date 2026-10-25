

import 'dart:io';
void main(){
  print ("Entrez votre age ");
  String ? agesaisi =stdin.readLineSync();

try{
  var age =int.parse(agesaisi!);
  print("Vous avez $age ans");
}
on FormatException catch (e) {
    print("Le format de l age n est pas valide: ${e.message}");
} 

finally{
  print("fin d'operation");
}

}