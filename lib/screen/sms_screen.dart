import 'package:flutter/material.dart';
import 'package:messenger_ui/data/details_data.dart';
import 'package:messenger_ui/screen/widgets/profile.dart';
import 'package:messenger_ui/screen/widgets/visiting_card.dart';

class SmsScreen extends StatelessWidget {
  const SmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            children: [
              // Horizontally scrollable row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...detailsData.map(
                          (eachDetails) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Profile(details: eachDetails),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10), // Add spacing between sections

              // Vertically scrollable column
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...detailsData.map(
                            (eachDetails) => VisitingCard(details: eachDetails),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
