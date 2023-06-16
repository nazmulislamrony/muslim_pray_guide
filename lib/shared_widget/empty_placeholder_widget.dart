import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/app_size.dart';
import '../routing/app_router.dart';

/// Placeholder widget showing a message and CTA to go back to the h    ome screen.
class EmptyPlaceholderWidget extends StatelessWidget {
  const EmptyPlaceholderWidget({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(Sizes.p16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              message,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            gapH32,
            ElevatedButton(
              onPressed: () => context.goNamed(AppRoute.mainpage.name),
              child: Text("Go Home"),
            )
          ],
        ),
      ),
    );
  }
}
