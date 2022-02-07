//teacher_information

// ignore_for_file: non_constant_identifier_names

class Teacher {
  final int id;
  final String name;
  final String images;
  final double rating;
  final String edu_degree;
  final int cost;
  final String classToTeach;
  final String placeToTeach;
  final String genderToTeach;
  //bio

  Teacher({
    this.classToTeach,
    this.placeToTeach,
    this.genderToTeach,
    this.cost,
    this.edu_degree,
    this.id,
    this.images,
    this.rating = 0.0,
    this.name,
  });
}

// Our demo Products

List<Teacher> TeacherList = [
  Teacher(
    id: 1,
    images: "assets/images/boss2.png",
    name: "حمزة عودة",
    rating: 1.8,
    edu_degree: "بكالوريوس",
    cost: 10000,
    classToTeach: "الأول - الثاني",
    placeToTeach: "بيت الطالب - بيت الأستاذ",
    genderToTeach: "ذكر - أنثى",
  ),
  Teacher(
    id: 2,
    images: "assets/images/woman2.png",
    name: "علوشة",
    rating: 1.2,
    edu_degree: "بكالوريوس",
    cost: 1000,
    classToTeach: "الأول - الثاني",
    placeToTeach: "بيت الطالب - بيت الأستاذ",
    genderToTeach: "ذكر - أنثى",
  ),
  Teacher(
    id: 3,
    images: "assets/images/boss2.png",
    name: "أحمد نقاوة ",
    rating: 4.2,
    edu_degree: "بكالوريوس",
    cost: 5000,
    classToTeach: "الأول - الثاني",
    placeToTeach: "بيت الطالب - بيت الأستاذ",
    genderToTeach: "ذكر - أنثى",
  ),
  Teacher(
    id: 4,
    images: "assets/images/boss2.png",
    name: "Yahya  kkk",
    rating: 2.8,
    edu_degree: "بكالوريوس",
    cost: 5000,
    classToTeach: "الأول - الثاني",
    placeToTeach: "بيت الطالب - بيت الأستاذ",
    genderToTeach: "ذكر - أنثى",
  ),
];
