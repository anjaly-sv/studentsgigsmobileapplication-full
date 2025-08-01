// To parse this JSON data, do
//
//     final seachdata = seachdataFromJson(jsonString);

import 'dart:convert';

Seachdata seachdataFromJson(String str) => Seachdata.fromJson(json.decode(str));

String seachdataToJson(Seachdata data) => json.encode(data.toJson());
// heyyyy
class Seachdata {
  int pageNumber;
  int totalPages;
  List<Datum> data;

  Seachdata({
    required this.pageNumber,
    required this.totalPages,
    required this.data,
  });

  factory Seachdata.fromJson(Map<String, dynamic> json) => Seachdata(
    pageNumber: json["page_number"],
    totalPages: json["total_pages"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "page_number": pageNumber,
    "total_pages": totalPages,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  int id;
  List<PreferredJobCategory> preferredJobCategories;
  List<WorkPreference> workPreferences;
  Profile profile;
  bool premiumBadge;
  String ?name;
  dynamic profilePhoto;
  String ?email;
  String? phone;
  String ?preferredWorkLocation;
  int availableWorkHours;
  String? portfolio;
  String ?about;
  String? jobTitle;
  String? gender;
  DateTime dateOfBirth;
  int age;
  String ?plan;
  int profileView;
  DateTime createdDate;
  int user;

  Datum({
    required this.id,
    required this.preferredJobCategories,
    required this.workPreferences,
    required this.profile,
    required this.premiumBadge,
     this.name,
    this.profilePhoto,
     this.email,
     this.phone,
     this.preferredWorkLocation,
    required this.availableWorkHours,
     this.portfolio,
     this.about,
     this.jobTitle,
     this.gender,
    required this.dateOfBirth,
    required this.age,
     this.plan,
    required this.profileView,
    required this.createdDate,
    required this.user,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    preferredJobCategories: List<PreferredJobCategory>.from(json["preferred_job_categories"].map((x) => PreferredJobCategory.fromJson(x))),
    workPreferences: List<WorkPreference>.from(json["work_preferences"].map((x) => WorkPreference.fromJson(x))),
    profile: Profile.fromJson(json["profile"]),
    premiumBadge: json["premium_badge"],
    name: json["name"]?? "",
    profilePhoto: json["profile_photo"]?? "",
    email: json["email"]?? "",
    phone: json["phone"]?? "",
    preferredWorkLocation: json["preferred_work_location"]?? "",
    availableWorkHours: json["available_work_hours"],
    portfolio: json["portfolio"]?? "",
    about: json["about"]?? "",
    jobTitle: json["job_title"]?? "",
    gender: json["gender"]?? "",
    dateOfBirth: DateTime.parse(json["date_of_birth"]),
    age: json["age"],
    plan: json["plan"]?? "",
    profileView: json["profile_view"],
    createdDate: DateTime.parse(json["created_date"]),
    user: json["user"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "preferred_job_categories": List<dynamic>.from(preferredJobCategories.map((x) => x.toJson())),
    "work_preferences": List<dynamic>.from(workPreferences.map((x) => x.toJson())),
    "profile": profile.toJson(),
    "premium_badge": premiumBadge,
    "name": name,
    "profile_photo": profilePhoto,
    "email": email,
    "phone": phone,
    "preferred_work_location": preferredWorkLocation,
    "available_work_hours": availableWorkHours,
    "portfolio": portfolio,
    "about": about,
    "job_title": jobTitle,
    "gender": gender,
    "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
    "age": age,
    "plan": plan,
    "profile_view": profileView,
    "created_date": createdDate.toIso8601String(),
    "user": user,
  };
}

class PreferredJobCategory {
  int id;
  String? preferredJobCategory;
  int employee;

  PreferredJobCategory({
    required this.id,
     this.preferredJobCategory,
    required this.employee,
  });

  factory PreferredJobCategory.fromJson(Map<String, dynamic> json) => PreferredJobCategory(
    id: json["id"],
    preferredJobCategory: json["preferred_job_category"]?? "",
    employee: json["employee"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "preferred_job_category": preferredJobCategory,
    "employee": employee,
  };
}

class Profile {
  int id;
  String ?coverPhoto;
  String? profilePic;
  int employee;

  Profile({
    required this.id,
     this.coverPhoto,
     this.profilePic,
    required this.employee,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    id: json["id"],
    coverPhoto: json["cover_photo"]?? "",
    profilePic: json["profile_pic"]?? "",
    employee: json["employee"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "cover_photo": coverPhoto,
    "profile_pic": profilePic,
    "employee": employee,
  };
}

class WorkPreference {
  int id;
  String ?interestedJobType;
  String ?expectedSalaryRange;
  String? availability;
  String? transportationAvailability;
  int employee;

  WorkPreference({
    required this.id,
     this.interestedJobType,
     this.expectedSalaryRange,
     this.availability,
     this.transportationAvailability,
    required this.employee,
  });

  factory WorkPreference.fromJson(Map<String, dynamic> json) => WorkPreference(
    id: json["id"],
    interestedJobType: json["interested_job_type"]?? "",
    expectedSalaryRange: json["expected_salary_range"]?? "",
    availability: json["availability"]?? "",
    transportationAvailability: json["transportation_availability"]?? "",
    employee: json["employee"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "interested_job_type": interestedJobType,
    "expected_salary_range": expectedSalaryRange,
    "availability": availability,
    "transportation_availability": transportationAvailability,
    "employee": employee,
  };
}
