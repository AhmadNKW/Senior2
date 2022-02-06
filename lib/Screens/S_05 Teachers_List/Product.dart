//teacher_information

// ignore_for_file: non_constant_identifier_names

class Teacher {
  final int id;
  final String name;
  final List<String> images;
  final double rating;
  final String edu_degree;
  final String cost;

  Teacher({
    this.cost,
    this.edu_degree,
    this.id,
    this.images,
    this.rating = 0.0,
    this.name,
  });
}

// Our demo Products

List<Teacher> demoTeachers = [
  Teacher(
    id: 1,
    images: ["assets/images/boss2.png"],
    name: "حمزة عودة",
    rating: 4.8,
    edu_degree: "باكالوريوس",
    cost: "ليرة 5000",
  ),
  Teacher(
    id: 2,
    images: ["assets/images/woman2.png"],
    name: "علوشة",
    rating: 4.1,
    edu_degree: "باكالوريوس",
    cost: "ليرة 1000",
  ),
  Teacher(
    id: 3,
    images: ["assets/images/boss2.png"],
    name: "أحمد نقاوة",
    rating: 4.1,
    edu_degree: "باكالوريوس",
    cost: "5000 ل",
  ),
  Teacher(
    id: 4,
    images: ["assets/images/boss2.png"],
    name: "يحيى قريعية",
    rating: 4.1,
    edu_degree: "باكالوريوس",
    cost: "5000",
  ),
];
