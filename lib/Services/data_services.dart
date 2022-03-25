import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Data {
  addData(String name, int rating, String url) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection('items')
        .add({
      'productName': name,
      'productRating': rating,
      'productDescription': 'Loren Ipsum',
      'productUrl': url
    });
  }

  clearData() async {
    FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection('items')
        .get()
        .then((value) {
      for (DocumentSnapshot ds in value.docs) {
        ds.reference.delete();
      }
    });
  }

  getData() {
  return FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection('items')
        .orderBy('productName', descending: false)
        .snapshots();
  }
}
