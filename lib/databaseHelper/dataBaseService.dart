

import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseService {

  final String uid;
  DataBaseService({required this.uid});

  final CollectionReference score = FirebaseFirestore.instance.collection('user_score');

  Future updateUserScore(int easyScore, int mediumScore, int hardScore) async {
    return await score.doc(uid).set({
      'easy_score' : easyScore,
      'medium_score' : mediumScore,
      'hard_score' : hardScore,
    });
  }

  Future updateEasyLevelSCore(int easyScore) async {
    return await score.doc(uid).update({
      'easy_score' : easyScore,
    });
  }

  Future updateMediumLevelSCore(int easyScore) async {
    return await score.doc(uid).update({
      'easy_score' : easyScore,
    });
  }

}