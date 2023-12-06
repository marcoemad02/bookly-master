import 'package:bookly/const.dart';
import 'package:hive/hive.dart';

import '../../doman_layer/entities/Book_entities.dart';

abstract class HomeLocalDataSource {

  List<BookEntity>  fetchFeaturedBooks();
  List<BookEntity>  fetchNewestBooks();

}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
  var box = Hive.box<BookEntity>(kFeatureBox);
    return box.values.toList();
  }


  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }


}