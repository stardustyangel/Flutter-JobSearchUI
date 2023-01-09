import 'package:flutter/material.dart';

import 'JobCard.dart';
import 'RecentJobCards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List JobsForYou = [
    ['Uber', 'UI Designer', 'assets/UberLogo.png', 45],
    ['Google', 'Product Dev', 'assets/GoogleLogo.png', 80],
    ['Apple', 'Software Eng.', 'assets/AppleLogo.png', 95],
  ];
  final List RecentJobs = [
    ['Apple', 'Software Eng.', 'assets/AppleLogo.png', 95],
    ['Google', 'Product Dev', 'assets/GoogleLogo.png', 44],
    ['Nike', 'Web Designer', 'assets/NikeLogo.png', 20],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
          ),
          // AppBar :
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                'assets/LeftMenu.png',
                scale: 40,
              ),
              height: 50,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "Discover a New Path",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'assets/Search.png',
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for a job..',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/Settings.png',
                    scale: 30,
                    color: Colors.white,
                  ),
                  height: 50,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
              padding: EdgeInsets.only(
                left: 12,
              ),
              child: Text(
                "For You",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return JobCard(
                  companyName: JobsForYou[index][0],
                  jobTitle: JobsForYou[index][1],
                  logoPath: JobsForYou[index][2],
                  hourlyRate: JobsForYou[index][3],
                );
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
              padding: EdgeInsets.only(
                left: 12,
              ),
              child: Text(
                "Recent Jobs",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: RecentJobs.length,
                itemBuilder: (BuildContext context, int index) {
                  return RecentJobCards(
                    companyName: RecentJobs[index][0],
                    jobTitle: RecentJobs[index][1],
                    logoPath: RecentJobs[index][2],
                    hourlyRate: RecentJobs[index][3],
                  );
                },
              ),
            ),
          )
          // Discover a new path :
          // Search bar :
          // for you : job cards
          // recently added : job titles
        ],
      ),
    );
  }
}
