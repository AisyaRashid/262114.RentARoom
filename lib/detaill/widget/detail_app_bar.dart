import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rent_room/model/room.dart';

class DetailAppBar extends StatelessWidget {
  final Room room;

  const DetailAppBar({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            room.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/icons/arrow.svg'),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      shape: BoxShape.circle),
                  child: SvgPicture.asset('assets/icons/mark.svg'),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
