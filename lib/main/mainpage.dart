
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_room/main/widget/best_offer.dart';
import 'package:rent_room/main/widget/categories.dart';
import 'package:rent_room/main/widget/custom_app_bar.dart';
import 'package:rent_room/main/widget/recommended_room.dart';
import 'package:rent_room/main/widget/search_input.dart';
import 'package:rent_room/main/widget/welcome_text.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const WelcomeText(),
            const SearchInput(),
            const Categories(),
            RecommendedRoom(),
            BestOffer()
          ],
        ),
      ),
      
    );
  }
}

