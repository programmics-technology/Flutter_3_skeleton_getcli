class UserModel {
  Data? data;
  String? message;
  bool? status;

  UserModel({this.data, this.message, this.status});

  UserModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class Data {
  int? id;
  String? associateId;
  String? name;
  String? verificationCode;
  String? username;
  String? profilePic;
  String? email;
  String? emailVerifiedAt;
  String? aadharCardNo;
  String? aadharCardFront;
  String? aadharCardBack;
  String? panCardNo;
  String? panCardPic;
  String? city;
  String? experienceYear;
  String? experienceCategory;
  String? isReraRegistered;
  String? reraRegNo;
  String? contactNo;
  String? mobileVerifiedAt;
  String? deviceToken;
  String? createdAt;
  String? updatedAt;
  String? role;
  String? status;
  String? isActive;

  Data(
      {this.id,
      this.associateId,
      this.name,
      this.verificationCode,
      this.username,
      this.profilePic,
      this.email,
      this.emailVerifiedAt,
      this.aadharCardNo,
      this.aadharCardFront,
      this.aadharCardBack,
      this.panCardNo,
      this.panCardPic,
      this.city,
      this.experienceYear,
      this.experienceCategory,
      this.isReraRegistered,
      this.reraRegNo,
      this.contactNo,
      this.mobileVerifiedAt,
      this.deviceToken,
      this.createdAt,
      this.updatedAt,
      this.role,
      this.status,
      this.isActive});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    associateId = json['associate_id'];
    name = json['name'];
    verificationCode = json['verification_code'];
    username = json['username'];
    profilePic = json['profile_pic'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    aadharCardNo = json['aadhar_card_no'];
    aadharCardFront = json['aadhar_card_front'];
    aadharCardBack = json['aadhar_card_back'];
    panCardNo = json['pan_card_no'];
    panCardPic = json['pan_card_pic'];
    city = json['city'];
    experienceYear = json['experience_year'];
    experienceCategory = json['experience_category'];
    isReraRegistered = json['is_rera_registered'];
    reraRegNo = json['rera_reg_no'];
    contactNo = json['contact_no'];
    mobileVerifiedAt = json['mobile_verified_at'];
    deviceToken = json['device_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    role = json['role'];
    status = json['status'];
    isActive = json['is_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['associate_id'] = associateId;
    data['name'] = name;
    data['verification_code'] = verificationCode;
    data['username'] = username;
    data['profile_pic'] = profilePic;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['aadhar_card_no'] = aadharCardNo;
    data['aadhar_card_front'] = aadharCardFront;
    data['aadhar_card_back'] = aadharCardBack;
    data['pan_card_no'] = panCardNo;
    data['pan_card_pic'] = panCardPic;
    data['city'] = city;
    data['experience_year'] = experienceYear;
    data['experience_category'] = experienceCategory;
    data['is_rera_registered'] = isReraRegistered;
    data['rera_reg_no'] = reraRegNo;
    data['contact_no'] = contactNo;
    data['mobile_verified_at'] = mobileVerifiedAt;
    data['device_token'] = deviceToken;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['role'] = role;
    data['status'] = status;
    data['is_active'] = isActive;
    return data;
  }
}
