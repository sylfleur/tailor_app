class Order {


  final String status;
  int idClient;
  final int idOrder;
  final String model;
  String? dateCommande;
  String? dateLivraison;

  Order({
    required this.status,
    required this.idClient,
    required this.idOrder,
    required this.model,
    this.dateCommande,
    this.dateLivraison,
  });
  

  @override
  String toString() {
    return 'Order(status: $status, idClient: $idClient, idOrder: $idOrder, model: $model, dateCommande: $dateCommande, dateLivraison: $dateLivraison)';
  }
}
