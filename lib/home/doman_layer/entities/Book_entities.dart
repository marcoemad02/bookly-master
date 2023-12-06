import 'package:hive/hive.dart';

part 'Book_entities.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  final String? BookId;
  @HiveField(0)
  final String? image;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final String? authername;
  @HiveField(3)
  final num? price;
  @HiveField(4)
  final num? rating;

  @HiveField(5)
  BookEntity(
      {required this.image,
      required this.title,
      required this.authername,
      required this.price,
      required this.rating,
      required this.BookId});
}
