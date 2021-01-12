import 'voiture.dart';

abstract class Observer {
  // On recoit le changement d'un élément observé
  void changed(Observable source, String event);
}

abstract class Observable {
  // J'ai des abonnés
  final observers = <Observer>[];
}

class CabinetComptable implements Observer {
  final clients = <Object, int>{};

  void addClient(Observable client) {
    // Quand j'ai un nouveau client, je m'y abonne en tant qu'observateur
    // et ainsi, je receverai ses changements
    client.observers.add(this);
    clients[client] = 0;
  }

  String toString() {
    return "clients : $clients";
  }

  // Un élément auquel je suis abonné a changé.
  // source = qui c'est ? event = nature du changement
  void changed(Observable source, event) {
    if (event == "client a payé") clients[source] += 15;
  }
}

class Garage implements Observable {
  // mes abonnés
  final observers = <Observer>[];
  final _objetsAReparer = <Vehicule>[];
  Garage();

  void nouvellePriseCharge(Vehicule vehicule) {
    _objetsAReparer.add(vehicule);

    // j'envoie à mes abonnés une notification de mise à jour
    notify("client a payé");
  }

  void notify(String event) {
    // A tous mes abonnés oyé oyé
    observers.forEach((observer) {
      // je trigger votre méthode changed, en indiquant que je suis
      // la source d'un changement, ainsi que l'évenement
      observer.changed(this, event);
    });
  }

  @override
  String toString() {
    return 'Je suis un garage avec les objets suivantes : $_objetsAReparer';
  }
}

class Voiture extends Vehicule {
  static const roues = 4;
  String couleur = 'blouge';

  @override
  void demarrer() {
    super.demarrer();
  }

  Voiture() {
    //  Coucou je suis le constructeur
  }
  @override
  String toString() {
    return 'Voiture $couleur';
  }
}

class Moto extends Vehicule {
  static const roues = 2;
  String couleur = 'bleue';

  void mettreLaBequille() {
    print("j'ai mis la béquille");
  }

  Moto() {
    //  Coucou je suis le constructeur
  }
  @override
  String toString() {
    return 'Moto $couleur';
  }
}
