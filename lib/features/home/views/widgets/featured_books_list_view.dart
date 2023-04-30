import 'package:bookly/models/book_model.dart';
import 'package:flutter/material.dart';

import 'featured_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});

  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: books.length,
          itemBuilder: (context, index) {
            return FeaturedBookItem(
              book: books[index],
            );
          }),
    );
  }
}
