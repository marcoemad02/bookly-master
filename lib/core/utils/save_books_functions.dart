import 'package:hive/hive.dart';
import '../../home/doman_layer/entities/Book_entities.dart';

void saveBooksData(List<BookEntity> books,String boxName) {
  var box= Hive.box(boxName);
  box.addAll(books);
}
