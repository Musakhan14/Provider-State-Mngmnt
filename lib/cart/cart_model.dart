class Cart {
  late final int? id;
  final String? productId;
  final String? productName;
  final int? initialPrice;
  final int? productPrice;
  final int? quantity;
  final String? unitTage;
  final String? image;

  Cart({
    required this.id,
    required this.image,
    required this.initialPrice,
    required this.productId,
    required this.productName,
    required this.productPrice,
    required this.quantity,
    required this.unitTage,
  });

  Cart.fromMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        productId = res['productId'],
        productName = res['productName'],
        productPrice = res['productPrice'],
        initialPrice = res['initialPrice'],
        quantity = res['productId'],
        image = res['image'],
        unitTage = res['unitTage'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'productId': productId,
      'productName': productName,
      'productPrice': productPrice,
      'initialPrice': initialPrice,
      'quantity': productId,
      'image': image,
      'unitTage': unitTage
    };
  }
}
