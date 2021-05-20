import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../core/error/failures.dart';
import '../models/banner.dart';
import '../models/story.dart';

abstract class IHomeRepo {
  Future<Either<Failure, List<Story>>> getStories();

  Future<Either<Failure, List<Banner>>> getBanners();
}

@LazySingleton(as: IHomeRepo)
class HomeRepo implements IHomeRepo {
  HomeRepo(this._firestore, this._logger);

  final FirebaseFirestore _firestore;
  final Logger _logger;

  @override
  Future<Either<Failure, List<Story>>> getStories() async {
    try {
      final querySnapshot = await _firestore.collection('stories').get();
      final models =
          querySnapshot.docs.map((e) => Story.fromFirestore(e)).toList();
      return Right(models);
    } catch (e) {
      _logger.e(e);
      return Left(const Failure.server());
    }
  }

  @override
  Future<Either<Failure, List<Banner>>> getBanners() async {
    try {
      final querySnapshot = await _firestore.collection('banners').get();
      final models =
          querySnapshot.docs.map((e) => Banner.fromFirestore(e)).toList();
      return Right(models);
    } catch (e) {
      _logger.e(e);
      return Left(const Failure.server());
    }
  }
}
