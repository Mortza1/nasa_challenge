import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nasa_murtaza/components/course.dart';
import 'package:nasa_murtaza/models/nasaPages.dart';
import 'package:nasa_murtaza/components/popular.dart';


class Explore extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: NasaPages.home,
        key: ValueKey(NasaPages.home),
        child: const Explore());
  }

  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Popular());
  }
}
