// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 89, 170, 241),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Stack(alignment: Alignment.center, children: [
                CircleAvatar(
                  radius: 104.0,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('images/image1.jpg'),
                ),
              ]),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Ahmed Algzery',
                style: TextStyle(
                  fontSize: 35.0,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Flutter Devolper',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              const Divider(
                thickness: 2.0,
                color: Color.fromRGBO(10, 38, 71, 0.5),
                endIndent: 10.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                width: 250,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () async {
                    launchInBrowser(Uri.parse(
                        'https://www.linkedin.com/in/%D9%90%D9%90ahmed-algzery/'));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 22.0,
                        backgroundImage: AssetImage('images/linkedin.png'),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'LinkedIn ',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 10, 38, 71),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: 250,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () async {
                    launchInBrowser(Uri.parse(
                        'https://www.facebook.com/profile.php?id=100014851561834'));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 22.0,
                        backgroundImage: AssetImage('images/facebook.png'),
                      ),
                      // Image.asset('images/linkedin.png'),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Facebook',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 10, 38, 71),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: 250,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () async {
                    launchInBrowser(
                        Uri.parse('https://github.com/ahmedalgzery'));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 22.0,
                        backgroundImage: AssetImage('images/github.png'),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'GitHub',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 10, 38, 71),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
