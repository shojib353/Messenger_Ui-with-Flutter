import 'package:flutter/material.dart';

class VisitingCard extends StatelessWidget {
  const VisitingCard({super.key,required this.details});

  final details;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      semanticContainer: true,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),

      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(details.imagePath),
                  radius: 40,
                ),
                 const SizedBox(width: 10,),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
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
                    Text(
                      style: const TextStyle(
                        color: Colors.white,
                          fontSize: 18

                      ),
                      details.email,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),

                  ],

                ),
                SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(

                  ),
                  child: Icon(Icons.circle
                  ,size: 7,color: Colors.white,),

                ),


                const Text(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18

                  ),
                  "12:20 AM",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),



                Container(
                  decoration: BoxDecoration(

                  ),
                  child: Icon(Icons.notifications_off
                    ,size: 30,color: Colors.white,),

                ),


              ],

            ),

          ],



        ),

      ),




    );
  }
}
