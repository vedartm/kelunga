import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../core/error/failures.dart';
import '../models/audio.dart';
import '../models/banner.dart';

abstract class IHomeRepo {
  Future<Either<Failure, List<Audio>>> getAudios();

  Future<Either<Failure, List<Banner>>> getBanners();

  Future<Either<Failure, List<Single>>> getSingles(Album album);
}

@LazySingleton(as: IHomeRepo)
class HomeRepo implements IHomeRepo {
  HomeRepo(this._firestore, this._logger);

  final FirebaseFirestore _firestore;
  final Logger _logger;

  @override
  Future<Either<Failure, List<Audio>>> getAudios() async {
    try {
      final querySnapshot = await _firestore.collection('audios').get();
      final models =
          querySnapshot.docs.map((e) => Audio.fromAudiosCollection(e)).toList();
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

  @override
  Future<Either<Failure, List<Single>>> getSingles(Album album) async {
    try {
      final querySnapshot = await _firestore
          .collection('audios')
          .doc(album.id)
          .collection('singles')
          .get();

      final models = querySnapshot.docs
          .map((e) => Audio.fromSinglesCollection(album, e) as Single)
          .toList();

      _logger.d(models.length);

      return Right(models);
    } catch (e) {
      _logger.e(e);
      return Left(const Failure.server());
    }
  }
}
