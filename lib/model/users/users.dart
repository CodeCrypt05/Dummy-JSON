import 'user.dart';

class Users {
  List<User>? users;
  int? total;
  int? skip;
  int? limit;

  Users({this.users, this.total, this.skip, this.limit});

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        users: (json['users'] as List<dynamic>?)
            ?.map((e) => User.fromJson(e as Map<String, dynamic>))
            .toList(),
        total: json['total'] as int?,
        skip: json['skip'] as int?,
        limit: json['limit'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'users': users?.map((e) => e.toJson()).toList(),
        'total': total,
        'skip': skip,
        'limit': limit,
      };

  @override
  String toString() {
    return 'Users{users: $users, total: $total, skip: $skip, limit: $limit}';
  }
}
