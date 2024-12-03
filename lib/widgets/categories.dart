import 'package:flutter/material.dart';

import 'category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Category(),
        Category(),
        Category(),
        Category(),
      ],
    );
  }
}
