import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';


class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: mammootty,
            story: mammootty,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Mohanlal",
            avatar: mohanlal,
            story: forest,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Dulquer",
            avatar: dulquer,
            story: car,
            displayBorder: true,

          ),
          StoryCard(
            labelText: "Nayanthara",
            avatar: nayanthara,
            story: flower,
            displayBorder: true,

          ),
          StoryCard(
            labelText: "Nasriya",
            avatar: nasriya,
            story: nature,
            displayBorder: true,

          ),
          StoryCard(
            labelText: "Mohanlal",
            avatar: mohanlal,
            story: river,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
