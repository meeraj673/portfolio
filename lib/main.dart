import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meeraj Portfolio",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PortfolioHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meeraj"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 👇 Profile Photo
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/image.png"), 
            ),
            const SizedBox(height: 20),

            sectionTitle("📌 Professional Summary"),
            const Text(
              "Enthusiastic and detail-oriented developer with experience in web development, C, Python, and Microsoft Excel. Skilled in creating intuitive user interfaces and solutions. Currently focused on developing real-world applications that enhance productivity and user experience. Looking for opportunities to contribute to impactful projects and grow technical expertise.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            sectionTitle("💻 Skills"),
            bulletPoints([
              "Web Development (HTML, CSS, JavaScript)",
              "C Programming",
              "Python",
              "Microsoft Excel"
            ]),
            const SizedBox(height: 20),

            sectionTitle("📂 Projects"),
            projectTile("Amma’s Grocery List",
                "A simple grocery list UI where users can add, remove, and mark items as bought using JavaScript (local storage for persistence)."),
            projectTile("Study Planner UI",
                "A frontend planner where users can add, edit, and remove study tasks with a clean, calendar-like layout."),
            projectTile("Mammas Monitor",
                "A user interface connecting doctors and pregnant patients, enabling appointment management, health tracking, and easy communication."),
            const SizedBox(height: 20),

            sectionTitle("📜 Certificates"),
            bulletPoints([
              "Data Analysis using Microsoft Excel – Analyzed datasets (student dataset, webtoons dataset), visualized using bar, pie, line, histogram charts, and presented findings.",
              "Google AI Essentials (Coursera)",
              "Data Science Foundations (Great Learning)",
              "Introduction to Machine Learning (Great Learning)"
            ]),
            const SizedBox(height: 20),

            sectionTitle("🎓 Education"),
            const Text(
              "BTech in Computer Science Engineering\n"
              "College: C R RAO Advanced Institute of Mathematics, Statistics, and Computer Science",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            sectionTitle("📞 Contact"),
            const Text(
              "📧 Sanjaymogli673@gamil.com\n📱 +91 99081 74127",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget bulletPoints(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text("• $e", style: const TextStyle(fontSize: 16)),
              ))
          .toList(),
    );
  }

  Widget projectTile(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(description, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
