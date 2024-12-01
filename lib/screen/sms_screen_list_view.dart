import 'package:flutter/material.dart';
import 'package:messenger_ui/data/details_data.dart';
import 'package:messenger_ui/screen/widgets/profile.dart';
import 'package:messenger_ui/screen/widgets/visiting_card.dart';

class SmsScreenListView extends StatelessWidget {
  const SmsScreenListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: detailsData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(detailsData[index].imagePath),
                          radius: 30,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          detailsData[index].name,
                          textAlign: TextAlign.center, // Center-align the name
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis, // Add ellipsis for long names
                          maxLines: 1, // Limit to one line
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),



            Expanded(

              child:Padding(

        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          // child: ListView.builder(
          //   itemCount: detailsData.length,
          //   itemBuilder: (context, index) {
          //     return VisitingCard(details: detailsData[index]);
          //   },
          // ),

          child: ListView.builder(

            scrollDirection: Axis.vertical,

            itemCount: detailsData.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(5),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(detailsData[index].imagePath),
                    radius: 30,
                  ),
                  title: Text(detailsData[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,


                    ),),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(detailsData[index].sms,

                                          
                          maxLines: 1, // Limit to one line
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color:  detailsData[index].isread?Colors.grey:
                            Colors.white,
                            fontSize: 20,
                                          
                                          
                                          
                          ),),
                      ),
                      const SizedBox(
                        width: 5,
                      ),

                      Icon(Icons.circle,
                      size: 5,
                      color: detailsData[index].isread?Colors.grey:
                        Colors.white,),
                      Text("12:12Am"
                      ,
                      style: TextStyle(
                        color:  detailsData[index].isread?Colors.grey:
                        Colors.white,
                      ),)
                      
                    ],
                  ),

                  trailing:SizedBox(
                    width: 20,
                    child: detailsData[index].isread?null:Icon(
                      Icons.notifications_off,
                      color: Colors.white,
                      size: 20,


                    ),

                  ),



                ),

              );
            },
          )







      ),)


          ],

        ),

      ),
    );
  }
}
