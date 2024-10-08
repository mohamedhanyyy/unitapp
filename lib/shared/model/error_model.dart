class ErrorModel {
  bool? status;
  dynamic errNum;
  String? msg;

  ErrorModel({this.status, this.errNum, this.msg});

  ErrorModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['errNum'] = errNum;
    data['msg'] = msg;
    return data;
  }
}
