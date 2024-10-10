
class Modal{
  String? name,email,token;

  Modal({required this.name,required this.email,required this.token});

  factory Modal.fromJson(Map m1){
    return Modal(name: m1['name'], email: m1['email'], token: m1['token']);
  }

   Map toMap(Modal modal){
    return{
      'name' : modal.name ?? 'Niraj',
      'email' : modal.email ?? 'nirajrajput6983@gmail.com',
    };
   }
}