import 'package:flutter/material.dart';
import 'Featured_books_listView.dart';
import 'best_seller_listview.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAppbar(),
                //CustomListViewItem(),
                FeaturedBooksListView(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '  Best Seller',
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BesteSellerList(),
          ),
        ),
      ],
    );
  }
}
