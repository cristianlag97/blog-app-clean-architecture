class User {
  final String name;
  final String email;
  final String id;

  User({
    required this.name,
    required this.email,
    required this.id,
  });
}


//! core cannot depend on others features
//! other features can depend on core 