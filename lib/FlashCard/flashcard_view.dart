// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:itproject/FlashCard/flashcard_design.dart';
import 'flashcard_list.dart';

class FlashcardView extends StatefulWidget {
  const FlashcardView({super.key});

  @override
  State<FlashcardView> createState() => _FlashcardViewState();
}

class _FlashcardViewState extends State<FlashcardView> {
  int _currentIndex = 0;

  void showPreviousCard() {
    setState(() {
      _currentIndex =
          _currentIndex - 1 >= 0 ? _currentIndex - 1 : flashcardList.length - 1;
    });
  }

  void showNextCard() {
    setState(() {
      _currentIndex =
          _currentIndex + 1 < flashcardList.length ? _currentIndex + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipCard(
              front: FlashcardDesign(
                partOfSpeech: flashcardList[_currentIndex].partOfSpeech,
                descripton: flashcardList[_currentIndex].description,
              ),
              back: FlashcardDesign(
                partOfSpeech: flashcardList[_currentIndex].partOfSpeech,
                descripton: flashcardList[_currentIndex].word,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: showPreviousCard,
                    icon: Icon(
                      Icons.chevron_left,
                      size: 50,
                    )),
                IconButton(
                    onPressed: showNextCard,
                    icon: Icon(
                      Icons.chevron_right,
                      size: 50,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
