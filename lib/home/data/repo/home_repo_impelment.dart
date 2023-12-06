import 'package:bookly/core/utils/erorrs/failure.dart';
import 'package:bookly/home/data/data_sources/local_data_source.dart';
import 'package:bookly/home/data/data_sources/remote_data_source.dart';
import 'package:bookly/home/doman_layer/entities/Book_entities.dart';
import 'package:bookly/home/doman_layer/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class homeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  final HomeLocalDataSource homeLocalDataSource;

  homeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(e.toString()));
    }
  }
}
