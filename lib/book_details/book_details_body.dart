import 'package:bookly/book_details/Book_appbar.dart';
import 'package:bookly/book_details/Custom_button2.dart';
import 'package:bookly/book_details/custom_button.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/home/peresention/views/widgets/Featured_books_listView.dart';
import 'package:bookly/home/peresention/views/widgets/book_rating.dart';
import 'package:bookly/home/peresention/views/widgets/custom_listWidger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BlurredAppBar(),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(height: 300, child: CustomListViewItem()),
                  SizedBox(
                    height: 10,
                  ),
                  Text('The Jungle Book', style: Styles.textStyle30),
                  SizedBox(
                    height: 10,
                  ),
                  Opacity(
                    opacity: .8,
                    child: Text('Rudyard Kipling', style: Styles.textStyle16),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  RatingWidget(mainAxisAlignment: MainAxisAlignment.center),
                  SizedBox(
                    height: 24,
                  ),
                  BooksActions(),
                  SizedBox(
                    height: 45,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child:
                          Text('YOU CAN ALSO LIKE', style: Styles.textStyle16),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SimilarListView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BooksActions extends StatelessWidget {
  const BooksActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(
        children: const [
          Expanded(child: CustomButton()),
          Expanded(
            child: CustomButton2(),
          )
        ],
      ),
    );
  }
}

class SimilarListView extends StatelessWidget {
  const SimilarListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomListViewItem(),
            ); // Padding
          }),
    );
  }
}
