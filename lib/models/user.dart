import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  static const NAME = 'name';
  static const EMAIL = "email";
  static const ID = 'id';
  static const STRIPE_ID = 'stripeId';


  String _name;
  String _email;
  String _id;
  String _stripeId;
//  GETTERS
  String get name => _name;
  String get email => _email;
  String get id => _id;
  String get stripeId => _stripeId;

  UserModel.fromSnapshot(DocumentSnapshot snap){
    _email = snap.data[EMAIL];
    _name = snap.data[NAME];
    _id = snap.data[ID];
    _stripeId = snap[STRIPE_ID] ?? null;
  }
}