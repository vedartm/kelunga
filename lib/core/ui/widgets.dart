import 'package:flutter/material.dart';

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
