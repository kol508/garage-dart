class Garage {
  final _objetsAReparer = <Voiture>[];
  Garage();

  void nouvellePriseCharge(Voiture vehicule) {
    _objetsAReparer.add(vehicule);
  }

  @override
  String toString() {
    return 'Je suis un garage avec les objets suivantes : $_objetsAReparer';
  }
}

class Voiture {
  static const roues = 4;
  String couleur = 'blouge';

  void demarrer() {
    print('$hashCode ($runtimeType) vroum');
  }

  Voiture() {
    //  Coucou je suis le constructeur
  }
  @override
  String toString() {
    return 'Voiture $couleur';
  }
}
