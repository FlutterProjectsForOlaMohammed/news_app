import 'package:flutter/material.dart';
import 'package:newsapp/Views/search_view.dart';
import 'package:newsapp/Widgets/build_border.dart';

String? searchedText;

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key});
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return Form(
      key: formKey,
      child: TextFormField(
        validator: (data) {
          if (data?.isEmpty ?? true) {
            return "Required";
          }
          return null;
        },
        onSaved: (data) {
          searchedText = data;
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          hintText: "Search with Keyword",
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 235, 215, 38),
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchView(text: searchedText!);
                }));
              }
            },
          ),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }
}
