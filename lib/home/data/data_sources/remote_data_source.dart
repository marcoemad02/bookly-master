import 'package:bookly/const.dart';
import 'package:bookly/core/utils/API_service.dart';
import 'package:bookly/home/data/model/book_models/book_models.dart';
import 'package:bookly/home/doman_layer/entities/Book_entities.dart';
import 'package:hive/hive.dart';
import '../../../core/utils/API_service.dart';
import '../../../core/utils/save_books_functions.dart';


abstract class HomeRemoteDataSource {
  Future<List<BookEntity>>  fetchFeaturedBooks();
  Future<List<BookEntity>>  fetchNewestBooks();
}
class HomeRemoteDatSource extends HomeRemoteDataSource {
  final APIService APIservice ;
  HomeRemoteDatSource(this.APIservice);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data =
    await APIservice.get(endpoint:'volumes?Filtering=free-ebooks&q=computer science' );
    List<BookEntity> books = getBooksList(data); // extract method  --> ctlr + alt + m
    
    saveBooksData(books, kFeatureBox);
    return books ;
  }




  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data =
    await APIservice.get(endpoint:'volumes?Filtering=free-ebooks&Sorting=newest&q=computerscience' );
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kNewestBox);
    return books ;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [] ;
    for( var bookmap in data['iteams'] ){
      books.add(BookModels.fromJson(bookmap));
    }

    return books;
  }
}