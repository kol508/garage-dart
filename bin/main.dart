import 'package:garage_le_retour/garage.dart';
import 'package:garage_le_retour/reliant.dart';

void main(List<String> arguments) {
  var garage = Garage();
  var voiture1 = Voiture();
  var voiture2 = Voiture();

  var voiture3 = Voiture();
  voiture3.couleur = "Jaune";
  var reliant = Reliant(voiture3);

  garage.nouvellePriseCharge(reliant);

  Pouet toto = Pouet();
  toto.coucou();

  voiture2.couleur = 'verte';

  print('Mon garage: $garage');
  garage.nouvellePriseCharge(voiture1);
  garage.nouvellePriseCharge(voiture2);
  print('Mon garage: $garage');

  reliant.demarrer();

  print('end');
}
