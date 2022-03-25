import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  late String url;

  ImageWidget({required this.url});

  @override
  Widget build(BuildContext context) {
    return Image.network(url,
        loadingBuilder: (context, child, loadingProgress) {
      if (loadingProgress == null) return child;

      return const Center(child: CircularProgressIndicator());
    });
  }
}
