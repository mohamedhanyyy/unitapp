class UserModel {
  bool? status;
  String? errNum;
  String? msg;
  User? user;

  UserModel({this.status, this.errNum, this.msg, this.user});

  UserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['errNum'] = errNum;
    data['msg'] = msg;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? phone;
  dynamic image;
  int? verify;
  String? apiToken;
  String? type;

  User(
      {this.id,
      this.name,
      this.phone,
      this.image,
      this.verify,
      this.apiToken,
      this.type});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    image = json['image'];
    verify = json['verify'];
    apiToken = json['api_token'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = phone;
    data['image'] = image;
    data['verify'] = verify;
    data['api_token'] = apiToken;
    data['type'] = type;
    return data;
  }
}
