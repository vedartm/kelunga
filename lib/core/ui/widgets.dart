import 'package:flutter/material.dart';

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
