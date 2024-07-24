class UserModel{
  String? title;
  String? description;

  UserModel({
    required this.title,
    required this.description
});

  //Map to Model
  factory UserModel.toModel(Map<String,dynamic>map){
    return UserModel(
        title: map['title'],
        description: map['description']
    );
  }

  //Model to Map
  Map<String,dynamic> toMap(){
    return {
      'title' : title,
      'description' : description
    };
  }


}