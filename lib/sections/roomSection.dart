import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: dulquer,displayStatus: true,),
          Avatar(displayImage: mohanlal,displayStatus: true,),
          Avatar(displayImage: nayanthara,displayStatus: true,),
          Avatar(displayImage: nasriya,displayStatus: true,),
          Avatar(displayImage: mammootty,displayStatus: true,),
          Avatar(displayImage: mohanlal,displayStatus: true,),
          Avatar(displayImage: nayanthara,displayStatus: true,),
          Avatar(displayImage: nasriya,displayStatus: true,),
          Avatar(displayImage: mammootty,displayStatus: true,),




        ],
      ),
    );
  }
  Widget createRoomButton(){
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
       child: OutlinedButton.icon(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(
                  width: 5,
                  color: Colors.blueAccent,
                ),
              ),
            ),

          ),
          icon: const Icon(Icons.video_call,
            color: Colors.purple,
          ),
          label: const Text("Create \n Room",style: TextStyle(color: Colors.blue),
          ), onPressed: () {
          print("Create a chat room");
        },
        ),
    );
  }
}
