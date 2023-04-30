import 'package:dio/dio.dart';

import '../models/book_model.dart';

abstract class BooksApiService {
  static Future<List<BookModel>> fetchFeaturedBooks() async {
    final dio = Dio();
    var response = await dio
        .get('https://www.googleapis.com/books/v1/volumes?q=programming');

    List<BookModel> books = parseData(response);
    return books;
  }

  static List<BookModel> parseData(Response<dynamic> response) {
    List<BookModel> books = [];
    var items = response.data['items'];
    for (var bookMap in items) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
