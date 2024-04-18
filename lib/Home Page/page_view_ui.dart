// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageViewUI extends StatelessWidget {
  final String quote, author;

  const PageViewUI({super.key, required this.quote, required this.author});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Color.fromARGB(255, 140, 129, 234)),
                child: Icon(
                  Icons.lightbulb,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                quote,
                style: GoogleFonts.ubuntu(
                  color: Colors.yellow,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                author,
                style: GoogleFonts.ubuntu(
                  color: Colors.white60,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 110, 99, 230),
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
