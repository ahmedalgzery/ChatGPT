// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 44, 116, 179),
      ),
      backgroundColor: const Color.fromARGB(255, 44, 116, 179),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(alignment: Alignment.center, children: const [
                CircleAvatar(
                  radius: 104.0,
                  backgroundColor: Color.fromARGB(255, 10, 38, 71),
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
                  color: Color.fromARGB(255, 10, 38, 71),
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
                    const url = '+201013784288';
                    final uri = Uri.parse(url);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 6.0, right: 6.0),
                        child: Icon(
                          Icons.call,
                          color: Colors.blue,
                          size: 28.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Call Now',
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
                    const url = 'algzeryahmed14@gmail.com';
                    final uri = Uri.parse(url);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 6.0, right: 6.0),
                        child: Icon(
                          
                          Icons.mail,
                          color: Colors.blue,
                          size: 28.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Send Email',
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
                    const url =
                        'https://www.linkedin.com/in/%D9%90%D9%90ahmed-algzery/';
                    final uri = Uri.parse(url);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
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
                    const url =
                        'https://www.facebook.com/profile.php?id=100014851561834';
                    final uri = Uri.parse(url);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
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
                    const url = 'https://github.com/ahmedalgzery';
                    final uri = Uri.parse(url);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 22.0,
                        backgroundImage: AssetImage('images/github.png'),
                      ),
                      // Image.asset('images/linkedin.png'),
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
