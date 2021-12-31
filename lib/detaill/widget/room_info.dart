import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoomInfo extends StatelessWidget {
  const RoomInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: const [
              MenuInfo(
                  imageUrl: 'assets/icons/bedroom.svg',
                  content: 'Master Bedroom'),
              MenuInfo(
                  imageUrl: 'assets/icons/bathroom.svg',
                  content: '1 Bathroom'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              MenuInfo(
                  imageUrl: 'assets/icons/kitchen.svg',
                  content: 'Kitchen\n120 sqft'),
              MenuInfo(
                  imageUrl: 'assets/icons/parking.svg',
                  content: '1 Parking\n120 sqft'),
            ],
          )
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;
  const MenuInfo({Key? key, required this.imageUrl, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imageUrl),
            const SizedBox(width: 20),
            Text(
              content,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
