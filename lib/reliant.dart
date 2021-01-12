import 'package:garage_le_retour/garage.dart';

class Reliant extends Object implements Voiture {
  static const roues = 3;
  Voiture component;
  Reliant(Voiture component) {
    this.component = component;
  }

  @override
  String couleur;

  @override
  void demarrer() {
    component.demarrer();
  }

  @override
  String toString() {
    return component.toString();
  }
}
