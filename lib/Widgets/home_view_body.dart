import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/customized_scroll_view.dart';
import 'package:newsapp/Widgets/text_form_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomTextFormField(),
          CustomizedScrollView(),
        ],
      ),
    );
  }
}
