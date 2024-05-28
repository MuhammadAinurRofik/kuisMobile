import 'package:flutter/material.dart';

// Widget untuk menampilkan profil anggota kelompok
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: Color.fromRGBO(31, 37, 68, 1),
        title: Text(
          'Anggota Kelompok 10',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromRGBO(31, 37, 68, 1),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Card 1 - Profil Muhammad Ainur Rofik
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: Colors.grey[800],
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('images/profile1.jpg'),
                            backgroundColor: Colors.yellow,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Muhammad Ainur Rofik',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            'WEB DEVELOPER',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(height: 10),
                          // Informasi kontak
                          buildContactInfo(
                              Icons.phone_iphone, '+6285157110104'),
                          SizedBox(height: 5),
                          buildContactInfo(Icons.mail_outline_rounded,
                              'muhammadainur.22005@mhs.unesa.ac.id'),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),

                // Card 2 - Profil Ihda Anisa Ulfa
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: Colors.grey[800],
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('images/profile2.jpg'),
                            backgroundColor: Colors.yellow,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Ihda Anisa Ulfa',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            'DATA ANALYST',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(height: 10),
                          // Informasi kontak
                          buildContactInfo(
                              Icons.phone_iphone, '+62882003365621'),
                          SizedBox(height: 5),
                          buildContactInfo(Icons.mail_outline_rounded,
                              'ihdaanisa.22019@mhs.unesa.ac.id'),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),

                // Card 3 - Profil Roy Nurfaza
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: Colors.grey[800],
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('images/profile3.jpg'),
                            backgroundColor: Colors.yellow,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Roy Nurfaza',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            'ANDROID DEVELOPER',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(height: 10),
                          // Informasi kontak
                          buildContactInfo(
                              Icons.phone_iphone, '+6285853111266'),
                          SizedBox(height: 5),
                          buildContactInfo(Icons.mail_outline_rounded,
                              'roy.22035@mhs.unesa.ac.id'),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget untuk menampilkan informasi kontak
  Widget buildContactInfo(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      width: 260,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black, size: 20),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
