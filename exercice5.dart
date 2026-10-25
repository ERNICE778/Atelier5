import 'dart:io';

class NombreNegatifException implements Exception {
  
  @override
  String toString() => " Le nombre saisi est negatif. ,veuillez entrer un nombre positif";
}

void main(){
print("entrer un nombre positif");
String?  nombreSaisi=stdin.readLineSync();

try {
    int nombre = int.parse(nombreSaisi!);

    
    if (nombre < 0) {
      throw  NombreNegatifException();
    }

  

    int carre = nombre * nombre;
    print("Le carre  de $nombre est : $carre");

  } catch (e) {
    print("Une erreur s est produite : $e");

    
  } finally {
   
    print("Fin du traitement ");
  }
}


