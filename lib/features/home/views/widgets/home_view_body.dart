import 'package:bookly/utils/book_api_service.dart';
import 'package:flutter/material.dart';

import 'featured_books_list_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
          future: BooksApiService.fetchFeaturedBooks(),
          builder: (context, snapshot) {
            if (!snapshot.hasError) {
              if (snapshot.connectionState == ConnectionState.done) {
                return FeaturedBooksListView(
                  books: snapshot.data!,
                );
              } else {
                return const CircularProgressIndicator();
              }
            } else {
              return Text(
                snapshot.error.toString(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
