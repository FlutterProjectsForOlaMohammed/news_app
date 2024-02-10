import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/horizental_card_list.dart';
import 'package:newsapp/Widgets/news_list_view_builder.dart';

class CustomizedScrollView extends StatelessWidget {
  const CustomizedScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 130, child: HorizentalCardList()),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
          ),
          NewsListViewBuilder(),
        ],
      ),
    );
  }
}
