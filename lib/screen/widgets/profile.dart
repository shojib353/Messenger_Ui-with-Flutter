import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key,required this.details});

  final details;

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),

      decoration: const BoxDecoration(


      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          CircleAvatar(
            backgroundImage: AssetImage(details.imagePath),
            radius: 40,
          ),

          Text(
            style: const TextStyle(
                color: Colors.white,
                fontSize: 25



            ),
            details.name,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),

        ],



      ),

    );

  }
}
