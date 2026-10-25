class MotdepasseCourtException  implements Exception {
  @override
  String toString()  => "Erreur :  Le mot de passe est trop court.";
}

void verifierMotdepasse (String  mp) {
  if (mp.length  < 6) {
    throw  MotdepasseCourtException() ;
  }
  print("Mot de passe valide") ;
}
 void main(){
try {
    verifierMotdepasse("@hdbd");
  } catch (e) {
    print(e)   ;
  }
}
