import 'package:flutter/material.dart';

void launchURL(BuildContext context, String url) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: url == 'https://facebook.com'
            ? const Text('Facebook Link')
            : const Text('Google Link'),
        content: Text('Would open URL: $url'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}