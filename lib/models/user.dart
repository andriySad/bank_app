import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

import 'credit_card.dart';

/// {@template user}
/// User model
///
/// [User.empty] represents an unauthenticated user.
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.id,
    this.email,
    this.username,
    this.photo,
    this.cards = const [],
  });

  /// The current user's email address.
  final String? email;

  /// The current user's id.
  final String id;

  /// The current username (display name).
  final String? username;

  /// Url for the current user's photo.
  final String? photo;

  /// Url for the current user's cards.
  final List<CreditCard> cards;

  /// Empty user which represents an unauthenticated user.
  static const empty = User(id: '');

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  /// Convert User object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'photo': photo,
      'cards': cards.map((card) => card.toJson()).toList(),
    };
  }

  User copyWith({
    String? email,
    String? id,
    String? username,
    String? photo,
    int? balance,
    List<CreditCard>? cards,
  }) {
    return User(
      email: email ?? this.email,
      id: id ?? this.id,
      username: username ?? this.username,
      photo: photo ?? this.photo,
      cards: cards ?? this.cards,
    );
  }

  static User fromSnap(DocumentSnapshot snapshot) {
    if (snapshot.data() == null) {
      return User.empty;
    }
    final data = snapshot.data()! as Map<String, dynamic>;
    return User(
      id: data['id'] as String,
      email: data['email'] as String,
      username: data['username'] as String,
      photo: data['photo'] as String,
      cards: (data['cards'] as List<dynamic>)
          .map((e) => CreditCard.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  List<Object?> get props => [
        email,
        id,
        username,
        photo,
        cards,
      ];
  @override
  String toString() {
    return 'User(email: $email, id: $id, username: $username, photo: $photo, cards: $cards)';
  }
}
