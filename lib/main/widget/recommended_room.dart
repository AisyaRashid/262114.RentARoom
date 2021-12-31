import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_room/detaill/detail.dart';
import 'package:rent_room/model/room.dart';
import 'package:rent_room/widget/circle_icon_button.dart';

class RecommendedRoom extends StatelessWidget {
  final recommendedList = Room.generateRecommended();

  RecommendedRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 340,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return DetailPage(room: recommendedList[index]);
                  }));
                },
                child: Container(
                  width: 230,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  recommendedList[index].imageUrl,
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: CircleIconButton(
                            iconUrl: 'assets/icons/mark.svg',
                            color: Theme.of(context).accentColor),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.white54,
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(recommendedList[index].title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      recommendedList[index].address,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                CircleIconButton(
                                    iconUrl: 'assets/icons/mark.svg',
                                    color: Theme.of(context).accentColor)
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(width: 20),
          itemCount: recommendedList.length),
    );
  }
}
