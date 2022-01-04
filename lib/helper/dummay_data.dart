import 'package:build_cv/screens/home/model.dart';

UserInfo userInfo = UserInfo(
  name: "Ahmed Mahmoud Amer",
  jobTitle: "Tester",
  place: "Nasr city, Cairo, Egypt",
  phoneNumber: "01022523246",
  emailAddress: "ahmmedamer5@gmail.com",
  summary: "Tester with a computer science background seeking for opportunity to developing myself. I love to share my knowledge with others. Have a good searching technique and always trying to be up to date.",
  faculty: Faculty(
      name: "Computer and Information",
      universityName: "Delta",
      fromDate: "2012",
      graduationGrade: "Very Good",
      toDate: "2016"),
  courses: [
    Course(name: "ISTQB foundation level"),
    Course(name: "Structure Query Language (SQL)"),
    Course(name: "Web Design (HTML, CSS, CSS3)"),
    Course(name: "ICDL (Microsoft Office Package)"),
    Course(name: "CCNA"),
  ],
  languages: [
    Language(name: "Arabic", level: "Native Language"),
    Language(name: "English", level: "Very Good")
  ],
  skills: [
    "Ability to work under pressure",
    "Accurate, patient and ambitious, possessed the personality of a leader",
    "Teamwork Skills",
    "Communication Skills",
  ],
  hobbies: [
    "Sports",
    "Reading Technical books",
    "Watching technical news",
  ],
  experience: [
    Experience(companyName: "We",title: "Technical support",fromDate: "2020",toDate: "2021",),
    Experience(companyName: "export and import company",title: "Sales",fromDate: "2019",toDate: "2021",),
    Experience(title: "Football Referee",fromDate: "2015",toDate: "2022",)
  ],
);


var sections = [
  "Summary",
  "Education",
  "Courses",
  "Experience",
  "Skills",
  "Hobbies",
  "Languages",
];

//
// final name = "Ahmed Mahmoud Amer";
// final place = "Nasr city, Cairo, Egypt";
// final phoneNumber = "01022523246";
// final emailAddress = "ahmmedamer5@gmail.com";
//
// final summaryBody =
//     "Tester with a computer science background seeking for opportunity to developing myself. I love to share my knowledge with others. Have a good searching technique and always trying to be up to date.";
// final educationBody = "Delta University for Computer and Information 2012/2016";
// final educationGrade = "With grate Very Good";
// final coursesBody = [
//   "ISTQB foundation level",
//   "Structure Query Language (SQL)",
//   "Web Design (HTML, CSS, CSS3)",
//   "ICDL (Microsoft Office Package)",
//   "CCNA"
// ];
// final experienceBody = [
//   "Technical support at We 2020/2021",
//   "Sales at export and import company for mobile accessories 2019/2020",
//   "Football Referee 2015/2022",
// ];
// final skillsBody = [
//   "Ability to work under pressure",
//   "Accurate, patient and ambitious, possessed the personality of a leader",
//   "Teamwork Skills",
//   "Communication Skills",
// ];
// final hobbiesBody = [
//   "Sports",
//   "Reading Technical books",
//   "Watching technical news",
// ];
// final languagesBody = [
//   "Arabic (Native Language)",
//   "English (Very Good)",
// ];


