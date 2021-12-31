import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {}, 
              icon: SvgPicture.asset('assets/icons/menu.svg')),
            // ignore: prefer_const_constructors
            CircleAvatar(
              backgroundImage: const AssetImage('assets/images/profile.jpeg'))
          ],
        ),
      ),
    );
  }
}