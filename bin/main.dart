import 'package:garage_le_retour/voiture.dart';
import 'package:garage_le_retour/garage.dart';

void main(List<String> arguments) {
  var voiture1 = Voiture();
  var voiture2 = Voiture();
  var moto1 = Moto();

  voiture2.couleur = 'verte';
  var garage = Garage();
  var garage2 = Garage();
  var cabinet = CabinetComptable();
  cabinet.addClient(garage);
  garage.addCA(10);
  cabinet.addClient(garage2);
  print(cabinet);
  print(cabinet);

  print('Mon garage: $garage');
  garage.nouvellePriseCharge(voiture1);
  garage.nouvellePriseCharge(voiture2);
  garage.nouvellePriseCharge(moto1);
  print('Mon garage: $garage');

  voiture1.demarrer();
  moto1.mettreLaBequille();

  print('end');
}
