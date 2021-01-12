import 'package:garage_le_retour/garage.dart';

void main(List<String> arguments) {
  var voiture1 = Voiture();
  var voiture2 = Voiture();

  voiture2.couleur = 'verte';
  var garage = Garage();

  print('Mon garage: $garage');
  garage.nouvellePriseCharge(voiture1);
  garage.nouvellePriseCharge(voiture2);
  print('Mon garage: $garage');

  voiture1.demarrer();

  print('end');
}
