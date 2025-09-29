import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Karthik Yadav Portfolio",
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
        title: const Text("Karthik Yadav"),
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
              backgroundImage: AssetImage("assets/img.jpg"), 
              
            ),
            const SizedBox(height: 20),

            sectionTitle("📌 Professional Summary"),
            const Text(
              "Motivated web developer with hands-on experience in web development, C, Python, and basic Java. Proficient in data structures and eager to apply problem-solving skills in real world projects. Seeking an internship opportunity to further develop technical expertise and contribute to team success.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            sectionTitle("💻 Skills"),
            bulletPoints([
              "Web Development (HTML, CSS, JavaScript)",
              "C Programming",
              "Python",
              "Basic Java",
              "AutoCAD",
              "Microsoft Excel"
            ]),
            const SizedBox(height: 20),

            sectionTitle("📂 Projects"),
            projectTile("Amma’s Grocery List",
                "A simple grocery list UI where users can add, remove, and mark items as bought using JavaScript (local storage for persistence)."),
            projectTile("Study Planner UI",
                "A frontend planner where users can add, edit, and remove study tasks with a clean, calendar-like layout."),
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
              "📧 bandakarthikyadav89@gmail.com\n📱 +91 95052 25728",
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
