import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/app_bar_title.dart';
import 'package:newsapp/Widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const AppBarTitle(),
      ),
      body: const HomeViewBody(),
    );
  }
}

/*
    * Colors.Transparent -> شفافه appBar
    *How To Make The BackGround Of A Container is an image -> 
    Container 
    (
      decoration : BoxDecoration
      (
        image : DecorationImage 
        (
          image : 
          fit : 

        )
      )
    )
 */
/*
* لو text كان كبير اوي بيحصل عليه 
OverFlow
طيب علشان افهم اليوز ان فيه باقى كلام و اظهرله ... 
overflow : TextOverflow.ellicips  
controlling in the end scroll of listview 
Listview.builder(
  phyics: BouncingScrollPhyics()
) 
*/ 