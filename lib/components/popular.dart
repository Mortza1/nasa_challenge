import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nasa_murtaza/components/course.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('courses')
                    .orderBy('likes', descending: true)
                    .limit(4)
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Center(
                    child: Container(
                      height: 900,
                      width: 1000,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Color(0xff00f4cc),
                              Color(0xff0ea393),
                              Color(0xff00d4ff)
                            ])),
                            child: const Center(
                              child: Text(
                                "POPULAR COURSES",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: 'Anton'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              children: snapshot.data!.docs.map((document) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 8, 8),
                                  child: CourseCard(
                                    title: document['Title'],
                                    language: document['Language'],
                                    level: document['Level'],
                                    theme: document['Thematic Area'],
                                    date: document['Date'],
                                    type: document['Type'],
                                    link: document['Link'],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
