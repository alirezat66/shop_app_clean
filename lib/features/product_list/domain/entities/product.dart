import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String title;
  final double price;
  final String imageSrc;
  final int id;
  const Product({
    required this.title,
    required this.price,
    required this.imageSrc,
    required this.id,
  });

  @override
  List<Object?> get props => [title, price, imageSrc, id];
}
