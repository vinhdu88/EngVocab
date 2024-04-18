// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itproject/Dictionary/dict_ui.dart';
import 'package:itproject/FlashCard/flashcard_view.dart';
import 'package:itproject/Home%20Page/avatar.dart';
import 'package:itproject/Home%20Page/page_list.dart';
import 'package:itproject/Home%20Page/page_view_ui.dart';
import 'package:itproject/Home%20Page/utilities.dart';
import 'package:itproject/IELTS%20vocabs/word_list_view.dart';
import 'package:itproject/Quiz%20Game/quiz_ui.dart';
// import 'package:provider/provider.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _controller = PageController();

  String _uid = '';
  String _name = '';
  String _gender = '';
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    User? user = FirebaseAuth.instance.currentUser;
    _uid = user!.uid;
    final DocumentSnapshot userDoc =
        await FirebaseFirestore.instance.collection('user').doc(_uid).get();
    _name = userDoc.get('name');
    _gender = userDoc.get('gender');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 110, 99, 230),
          elevation: 0,
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.menu,
          //     color: Colors.white,
          //   ),
          // ),
          title: Padding(
            padding: EdgeInsets.only(left: 150),
            child: Text(
              'E N G  V O C A B',
              style: GoogleFonts.ubuntu(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                //Hello User
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello, $_name!',
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                            color:
                                Theme.of(context).colorScheme.primaryContainer),
                      ),
                      Avatar(image: _gender),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        height: 300,
                        child: PageView(
                          // controller: _controller,
                          scrollDirection: Axis.horizontal,
                          children: [
                            PageViewUI(
                                quote: pageItems[0].quote,
                                author: pageItems[0].author),
                            PageViewUI(
                                quote: pageItems[1].quote,
                                author: pageItems[1].author),
                            PageViewUI(
                                quote: pageItems[2].quote,
                                author: pageItems[2].author),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuizUI()));
                          },
                          child: Container(
                            width: 200,
                            height: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.question_mark_rounded,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(80),
                                      color: Colors.pink[100]),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 35, top: 40),
                                  child: Text(
                                    'Test your knowledge',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.pink[200],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                // SmoothPageIndicator(
                //   controller: _controller,
                //   count: 3,
                //   effect: ExpandingDotsEffect(
                //       activeDotColor: Color.fromARGB(255, 110, 99, 230)),
                // ),
                SizedBox(
                  height: 15,
                ),
                //Utilities
                Padding(
                  padding: EdgeInsets.only(right: 150),
                  child: Text(
                    'Topic in progress',
                    style: GoogleFonts.ubuntu(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                Utilities(
                  icon: Icons.collections,
                  title: 'Flashcard',
                  targetWidget: FlashcardView(),
                ),
                Utilities(
                  icon: Icons.book,
                  title: 'Dictionary',
                  targetWidget: DictUI(),
                ),
                Utilities(
                  icon: Icons.list_alt,
                  title: 'Vocabulary',
                  targetWidget: WordListView(),
                ),
              ],
            ),
          ),
        ));
  }
}
