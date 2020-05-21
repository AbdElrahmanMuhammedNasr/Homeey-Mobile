import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseService{
  final String uid ;
  DataBaseService({this.uid});

  final CollectionReference postRef = Firestore.instance.collection("Posts");

  Future addNewFood(String name, String price) async{
      return await postRef.document(uid).setData({
        'name': name,
        'price':price
      });
  }

  //get post
  Stream<QuerySnapshot> get post {
      return postRef.snapshots();
  }


}