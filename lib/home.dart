import 'package:facebook/assets.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/sections/StatusSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/headerButtonSection.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Search Screen appears");
                }
            ),

            CircularButton(
                buttonIcon: Icons.chat,
                buttonAction: () => print("message friends")
            ),
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: "Live",
                  buttonIcon: Icons.video_call,
                  buttonAction: (){
                    print("Go Live!!");
                  },
                  buttonColor: Colors.red),
              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: (){
                    print("Take photo!!");
                  },
                  buttonColor: Colors.green),
              buttonThree: headerButton(
              buttonText: "Room",
                buttonIcon: Icons.video_call,
                buttonAction: (){
                   print(" Create room !!");
                 },
          buttonColor: Colors.purple),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: mohanlal,
              name: "Mohanlal",
              publishedAt: '5h',
              postImage: forest,
              postTitle: 'Enjoying Goodness of Nature!!',
              showBlueTick: true,
              likeCount: "10K",
              shareCount: "8K",
              commentCount: "1K",
            ),
            thickDivider,
            PostCard(
              avatar: dulquer,
              name: "Dulquer",
              publishedAt: '1h',
              postImage: car,
              postTitle: 'A big Bucket list dream come true for me!!',
              showBlueTick: true,
              likeCount: "100K",
              shareCount: "12K",
              commentCount: "3.4K",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              avatar: nayanthara,
              name: "Nayanthara",
              publishedAt: '1 day ago',
              postImage: flower,
              postTitle: 'S U N F L O W E R!!',
              showBlueTick: true,
              likeCount: "460K",
              shareCount: "10.2K",
              commentCount: "3K",
            ),
            thickDivider,
          ],

        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
