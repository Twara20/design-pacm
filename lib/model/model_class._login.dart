class Contain {
  bool? success;
  String? message;
  Data? data;

  Contain({this.success, this.message, this.data});

  Contain.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? token;
  String? refreshToken;
  String? expiration;
  String? refreshExpireTime;
  bool? isLoginWithTempPassword;
  bool? isAccountApproved;
  UserData? userData;

  Data(
      {this.token,
        this.refreshToken,
        this.expiration,
        this.refreshExpireTime,
        this.isLoginWithTempPassword,
        this.isAccountApproved,
        this.userData});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    refreshToken = json['refreshToken'];
    expiration = json['expiration'];
    refreshExpireTime = json['refreshExpireTime'];
    isLoginWithTempPassword = json['isLoginWithTempPassword'];
    isAccountApproved = json['isAccountApproved'];
    userData = json['userData'] != null
        ? new UserData.fromJson(json['userData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['refreshToken'] = this.refreshToken;
    data['expiration'] = this.expiration;
    data['refreshExpireTime'] = this.refreshExpireTime;
    data['isLoginWithTempPassword'] = this.isLoginWithTempPassword;
    data['isAccountApproved'] = this.isAccountApproved;
    if (this.userData != null) {
      data['userData'] = this.userData!.toJson();
    }
    return data;
  }
}

class UserData {
  int? userId;
  String? email;
  String? firstName;
  String? lastName;
  int? userTypeId;
  int? userPermissionId;
  String? companyName;
  String? role;
  String? phoneNumber;
  String? pacmContactName;
  Null? pacmContactEmail;
  int? userAccountTypeId;
  int? userStatusId;
  bool? isLoginWithTempPassword;
  bool? isAccountApproved;
  bool? isAdmin;
  bool? isAccountLock;
  String? refreshToken;
  String? refreshTokenExpTime;
  bool? isMicrosoftLogin;

  UserData(
      {this.userId,
        this.email,
        this.firstName,
        this.lastName,
        this.userTypeId,
        this.userPermissionId,
        this.companyName,
        this.role,
        this.phoneNumber,
        this.pacmContactName,
        this.pacmContactEmail,
        this.userAccountTypeId,
        this.userStatusId,
        this.isLoginWithTempPassword,
        this.isAccountApproved,
        this.isAdmin,
        this.isAccountLock,
        this.refreshToken,
        this.refreshTokenExpTime,
        this.isMicrosoftLogin});

  UserData.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['LastName'];
    userTypeId = json['userTypeId'];
    userPermissionId = json['userPermissionId'];
    companyName = json['CompanyName'];
    role = json['role'];
    phoneNumber = json['phoneNumber'];
    pacmContactName = json['pacmContactName'];
    pacmContactEmail = json['pacmContactEmail'];
    userAccountTypeId = json['userAccountTypeId'];
    userStatusId = json['userStatusId'];
    isLoginWithTempPassword = json['isLoginWithTempPassword'];
    isAccountApproved = json['isAccountApproved'];
    isAdmin = json['isAdmin'];
    isAccountLock = json['isAccountLock'];
    refreshToken = json['refreshToken'];
    refreshTokenExpTime = json['refreshTokenExpTime'];
    isMicrosoftLogin = json['isMicrosoftLogin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['email'] = this.email;
    data['firstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['userTypeId'] = this.userTypeId;
    data['userPermissionId'] = this.userPermissionId;
    data['CompanyName'] = this.companyName;
    data['role'] = this.role;
    data['phoneNumber'] = this.phoneNumber;
    data['pacmContactName'] = this.pacmContactName;
    data['pacmContactEmail'] = this.pacmContactEmail;
    data['userAccountTypeId'] = this.userAccountTypeId;
    data['userStatusId'] = this.userStatusId;
    data['isLoginWithTempPassword'] = this.isLoginWithTempPassword;
    data['isAccountApproved'] = this.isAccountApproved;
    data['isAdmin'] = this.isAdmin;
    data['isAccountLock'] = this.isAccountLock;
    data['refreshToken'] = this.refreshToken;
    data['refreshTokenExpTime'] = this.refreshTokenExpTime;
    data['isMicrosoftLogin'] = this.isMicrosoftLogin;
    return data;
  }
}

