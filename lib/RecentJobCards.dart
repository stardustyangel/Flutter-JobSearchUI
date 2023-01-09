import 'package:flutter/material.dart';

class RecentJobCards extends StatelessWidget {
  final String? companyName;
  final String? jobTitle;
  final String? logoPath;
  final int? hourlyRate;
  RecentJobCards(
      {required this.companyName,
      required this.jobTitle,
      required this.logoPath,
      required this.hourlyRate});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.grey[300],
                    height: 50,
                    child: Image.asset(logoPath!),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobTitle!,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      companyName!,
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Text('\$' + hourlyRate.toString() + '/hr'),
                color: Colors.green[300],
              ),
            )
          ],
        ),
      ),
    );
  }
}
