import 'package:bookly/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: AspectRatio(
              aspectRatio: 150 / 224,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                errorWidget: (context, _, __) {
                  return const Icon(
                    Icons.error,
                    color: Colors.white,
                  );
                },
                imageUrl: book.image ?? '',
              ),
            )),
      ),
    );
  }
}
