class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String? phone;

  User(UserBuilder builder)
      : firstName = builder.firstName!,
        lastName = builder.lastName!,
        age = builder.age,
        phone = builder.phone;
}

class UserBuilder {
  String? firstName;
  String? lastName;
  int? age;
  String? phone;

  UserBuilder setFirstName(String firstName) {
    this.firstName = firstName;
    return this;
  }

  UserBuilder setLastName(String lastName) {
    this.lastName = lastName;
    return this;
  }

  UserBuilder setAge(int age) {
    this.age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    this.phone = phone;
    return this;
  }

  User build() {
    if (firstName == null || lastName == null) {
      throw Exception("First name and Last name are required");
    }
    return User(this);
  }
}
