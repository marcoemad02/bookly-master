import 'package:bookly/core/utils/erorrs/failure.dart';
import '../entities/Book_entities.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<failure, List<BookEntity>>> fetchNewestBooks();
}
