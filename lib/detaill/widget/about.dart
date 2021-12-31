
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Prefer move-in immediately, 6 month, 12 month and above, Malaysian, Student, Employed',
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}