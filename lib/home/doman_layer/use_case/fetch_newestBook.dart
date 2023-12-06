import 'dart:ffi';
import 'package:bookly/home/doman_layer/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import '../../../core/utils/erorrs/failure.dart';
import '../entities/Book_entities.dart';

class FetchNewestBookUsecase extends UseCase<List<BookEntity>, Noparam> {
  final HomeRepo homerepo;
  FetchNewestBookUsecase(this.homerepo);

  @override
  Future<Either<failure, List<BookEntity>>> call([Noparam? param]) async {
    // TODO: implement call
    return await homerepo.fetchNewestBooks();
  }
}

abstract class UseCase<type, Param> {
  Future<Either<failure, type>> call([Param param]);
}

class Noparam {}
