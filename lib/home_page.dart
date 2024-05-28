import 'package:flutter/material.dart';
import 'theme_selection_page.dart';
import 'profile_page.dart'; // Import file profile_page.dart

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/logo3.png", // Path gambar logo
                width: 200, // Lebar gambar
                height: 200, // Tinggi gambar
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200, // Lebar tombol
                height: 50, // Tinggi tombol
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman pemilihan tema saat tombol "Start Quiz" ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThemeSelectionPage()),
                    );
                  },
                  child: Text(
                    'Start Quiz',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200, // Lebar tombol
                height: 50, // Tinggi tombol
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman profil saat tombol "Profile" ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200, // Lebar tombol
                height: 50, // Tinggi tombol
                child: ElevatedButton(
                  onPressed: () {
                    // Keluar dari aplikasi saat tombol "Exit" ditekan
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Exit',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
