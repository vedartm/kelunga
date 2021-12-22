import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/ui/dimens.dart';
import '../../models/banner.dart' as m;

class BannerItem extends StatelessWidget {
  const BannerItem({Key? key, required this.banner}) : super(key: key);

  final m.Banner banner;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Share.share('Check out this app to improve your Mental Health'),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KDimens.padding),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(KDimens.borderRadius),
          child: CachedNetworkImage(
            width: double.infinity,
            imageUrl: banner.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
