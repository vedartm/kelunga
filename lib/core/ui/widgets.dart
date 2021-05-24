import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';
import 'spacers.dart';

class KLoader extends StatelessWidget {
  const KLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 16,
        width: 16,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
    );
  }
}

class KError extends StatelessWidget {
  const KError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Sorry! Some error occured'));
  }
}

class KIconButton extends StatelessWidget {
  const KIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final Widget icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      fillColor: Colors.white,
      child: icon,
      padding: const EdgeInsets.all(16.0),
      shape: const CircleBorder(
        side: BorderSide(
          color: Color(0x44BABCC6),
          width: 2,
        ),
      ),
    );
  }
}

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({Key? key, this.message = 'Loading...'})
      : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Row(
        children: [
          const SizedBox(
            height: 16,
            width: 16,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
          KSpacers.width16,
          Text(
            message,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

class KBadge extends StatelessWidget {
  const KBadge({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: KColors.textPrimary.withOpacity(0.5),
        borderRadius: BorderRadius.circular(KDimens.borderRadius),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}
