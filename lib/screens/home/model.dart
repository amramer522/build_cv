

class UserInfo {
  String? name, place, phoneNumber, emailAddress,summary,jobTitle;
  List<Course>? courses;
  Faculty? faculty;
  List<Experience>? experience;
  List<String>? skills;
  List<String>? hobbies;
  List<Language>? languages;

  UserInfo(
      {this.name,
      this.place,
        this.jobTitle,
      this.phoneNumber,this.summary,
      this.emailAddress,
      this.faculty,
      this.courses,
      this.experience,
      this.skills,
      this.hobbies,
      this.languages});
}

class Faculty {
  String? name, universityName, fromDate, toDate,graduationGrade;

  Faculty({this.name, this.universityName,this.graduationGrade, this.fromDate, this.toDate});
}

class Course {
  String? name, fromDate, toDate;

  Course({this.name, this.fromDate, this.toDate});
}

class Experience {
  String? companyName, fromDate, toDate, title;

  Experience({this.companyName, this.fromDate, this.title, this.toDate});
}

class Language {
  String? name, level;

  Language({this.name, this.level});
}
