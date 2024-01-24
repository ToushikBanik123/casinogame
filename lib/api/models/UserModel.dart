class UserModel {
  late String id;
  late String name;
  late String phone;
  late String email;
  late String userName;
  late String password;
  late String status;
  late String referralId;
  late String createdAt;
  late String balance;
  late String masterAdminId;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.userName,
    required this.password,
    required this.status,
    required this.referralId,
    required this.createdAt,
    required this.balance,
    required this.masterAdminId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      userName: json['user_name'],
      password: json['password'],
      status: json['status'],
      referralId: json['referal_id'],
      createdAt: json['create_at'],
      balance: json['balance'],
      masterAdminId: json['master_admin_id'],
    );
  }
}
