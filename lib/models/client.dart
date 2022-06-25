class Client {
  final int id;
  final String telephone;
  final String nom;
  final String prenom;
  final String? email;
  final String? adresse;
  final String? codePostal;
  final String? ville;
  final String? pays;
  final String? note;
  // final String? dateNaissance;
  // final String? dateInscription;
  // final String? dateDerniereVisite;
  // final String? dateDernierPaiement;
  // final String? dateDernierFacture;
  // final String? dateDernierRemboursement;
  // final String? dateDernierAvoir;
  // final String? dateDernierAvoirRemboursement;
  // final String? dateDernierAvoirFacture;
  // final String? dateDernierAvoirPaiement;

  Client(
      {required this.id,
      required this.telephone,
      required this.nom,
      required this.prenom,
      this.email,
      this.adresse,
      this.codePostal,
      this.ville,
      this.pays,
      this.note,
      // this.dateNaissance,
      // this.dateInscription,
      // this.dateDerniereVisite,
      // this.dateDernierPaiement,
      // this.dateDernierFacture,
      // this.dateDernierRemboursement,
      // this.dateDernierAvoir,
      // this.dateDernierAvoirRemboursement,
      // this.dateDernierAvoirFacture,
      // this.dateDernierAvoirPaiement
      });

      int get idClient => id;

      unClient() {
        return Client(
          id: id,
          telephone: telephone,
          nom: nom,
          prenom: prenom,
          email: email,
          adresse: adresse,
          codePostal: codePostal,
          ville: ville,
          pays: pays,
          note: note,
          // dateNaissance: dateNaissance,
          // dateInscription: dateInscription,
          // dateDerniereVisite: dateDerniereVisite,
          // dateDernierPaiement: dateDernierPaiement,
          // dateDernierFacture: dateDernierFacture,
          // dateDernierRemboursement: dateDernierRemboursement,
          // dateDernierAvoir: dateDernierAvoir,
          // dateDernierAvoirRemboursement: dateDernierAvoirRemboursement,
          // dateDernierAvoirFacture: dateDernierAvoirFacture,
          // dateDernierAvoirPaiement: dateDernierAvoirPaiement,
        );
      }
}
