import 'voiture.dart';

abstract class Observer {
  void changed(Observable source, String event);
}

abstract class Observable {
  final observers = <Observer>[];
}

class CabinetComptable implements Observer {
  final clients = <Object, int>{};

  void addClient(Observable client) {
    client.observers.add(this);
    clients[client] = 0;
  }

  String toString() {
    return "clients : $clients";
  }

  void changed(Observable source, event) {
    if (event == "client a payé") clients[source] += 15;
  }
}

class Garage implements Observable {
  final observers = <Observer>[];
  final _objetsAReparer = <Vehicule>[];
  Garage();

  void nouvellePriseCharge(Vehicule vehicule) {
    _objetsAReparer.add(vehicule);

    notify("client a payé");
  }

  void notify(String event) {
    observers.forEach((observer) {
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
