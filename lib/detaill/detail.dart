import 'package:flutter/material.dart';
import 'package:rent_room/detaill/widget/about.dart';
import 'package:rent_room/detaill/widget/content_intro.dart';
import 'package:rent_room/detaill/widget/detail_app_bar.dart';
import 'package:rent_room/detaill/widget/room_info.dart';
import 'package:rent_room/model/room.dart';

class DetailPage extends StatelessWidget {
  final Room room;

  const DetailPage({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailAppBar(room: room),
        const SizedBox(height: 20),
        ContentIntro(room: room),
        const SizedBox(height: 20),
        const RoomInfo(),
        const SizedBox(height: 20),
        const About(),
        const SizedBox(height: 25),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: const Text('Book Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)))))
      ],
    )));
  }
}
