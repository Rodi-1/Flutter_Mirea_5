/// Иммутабельная модель товара
class Product {
  final String id;
  final String name;
  final String sku;
  final int qty;
  final String location;
  final DateTime createdAt;

  const Product({
    required this.id,
    required this.name,
    required this.sku,
    required this.qty,
    required this.location,
    required this.createdAt,
  });

  /// Простой генератор id без внешних пакетов (под учебный проект)
  static String newId() => DateTime.now().microsecondsSinceEpoch.toString();

  Product copyWith({
    String? id,
    String? name,
    String? sku,
    int? qty,
    String? location,
    DateTime? createdAt,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      sku: sku ?? this.sku,
      qty: qty ?? this.qty,
      location: location ?? this.location,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
