import 'dart:convert';

import 'package:music_playce_sdk/core/api/models/users/picture.model.dart';
import 'package:music_playce_sdk/core/api/models/users/follows.dart';
import 'package:music_playce_sdk/core/api/models/users/user_roles.model.dart';

class User {
  String id;
  bool acceptedMarketing;
  bool deleted;
  bool emailConfirmed;
  bool phoneConfirmed;
  bool confirmed;
  int uploadsRemainingExtra;
  List<String> triedProducts;
  String uId;
  String name;
  String username;
  UserRoles role;
  int acceptedTerms;
  int acceptedPolicy;
  DateTime datetimeCreated;
  DateTime datetimeUpdated;
  String description;
  int interpretations;
  String location;
  String placeId;
  int followers;
  int compositions;
  int indications;
  String infoYoutube;
  int indicationsFrom;
  int following;
  int liked;
  String infoWebsite;
  String infoFbPage;
  String infoInsta;
  bool profileDeleted;
  bool verifiedProfile;
  Follows follows;
  bool isArtist;
  DateTime profileDatetimeCreated;
  DateTime profileDatetimeUpdated;
  Picture pictureProfile;
  Picture pictureCover;
  String email;
  String phone;
  String idRole;
  String usId;
  int rank;
  String type;

  User({
    this.id,
    this.acceptedMarketing,
    this.deleted,
    this.emailConfirmed,
    this.phoneConfirmed,
    this.confirmed,
    this.uploadsRemainingExtra,
    this.triedProducts,
    this.uId,
    this.name,
    this.username,
    this.role,
    this.acceptedTerms,
    this.acceptedPolicy,
    this.datetimeCreated,
    this.datetimeUpdated,
    this.description,
    this.interpretations,
    this.location,
    this.placeId,
    this.followers,
    this.compositions,
    this.indications,
    this.infoYoutube,
    this.indicationsFrom,
    this.following,
    this.liked,
    this.infoWebsite,
    this.infoFbPage,
    this.infoInsta,
    this.profileDeleted,
    this.verifiedProfile,
    this.follows,
    this.isArtist,
    this.profileDatetimeCreated,
    this.profileDatetimeUpdated,
    this.pictureCover,
    this.pictureProfile,
    this.email,
    this.phone,
    this.idRole,
    this.usId,
    this.rank,
    this.type,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => new User(
        id: json["_id"] == null ? null : json["_id"],
        acceptedMarketing: json['accepted_marketing'] == null
            ? false
            : json["accepted_marketing"],
        deleted: json["user_deleted"] == null ? null : json["user_deleted"],
        emailConfirmed:
            json["email_confirmed"] == null ? null : json["email_confirmed"],
        phoneConfirmed:
            json["phone_confirmed"] == null ? null : json["phone_confirmed"],
        confirmed: json["confirmed"] == null ? null : json["confirmed"],
        uploadsRemainingExtra: json["uploads_remaining_extra"] == null
            ? null
            : json["uploads_remaining_extra"].runtimeType == int
                ? json["uploads_remaining_extra"]
                : (json["uploads_remaining_extra"] as double).toInt(),
        triedProducts: json["tried_produts"] == null
            ? null
            : List<String>.from(json["tried_produts"].map((x) => x)),
        uId: json["id_user"] == null ? null : json["id_user"],
        name: json["name"] == null ? null : json["name"],
        username: json["username"] == null ? null : json["username"],
        role: json["role"] == null ? null : UserRoles.fromMap(json["role"]),
        acceptedTerms: json["accepted_terms"] == null
            ? null
            : json["accepted_terms"].runtimeType == int
                ? json["accepted_terms"]
                : (json["accepted_terms"] as double).toInt(),
        acceptedPolicy: json["accepted_policy"] == null
            ? null
            : json["accepted_policy"].runtimeType == int
                ? json["accepted_policy"]
                : (json["accepted_policy"] as double).toInt(),
        datetimeCreated: json["user_datetime_created"] == null
            ? null
            : DateTime.parse(json["user_datetime_created"]),
        datetimeUpdated: json["user_datetime_updated"] == null
            ? null
            : DateTime.parse(json["user_datetime_updated"]),
        description: json["description"] == null ? null : json["description"],
        interpretations: json["interpretations"] == null
            ? null
            : json["interpretations"].runtimeType == int
                ? json["interpretations"]
                : (json["interpretations"] as double).toInt(),
        location: json["location"] == null ? null : json["location"],
        placeId: json["place_id"] == null ? null : json["place_id"],
        followers: json["followers"] == null
            ? null
            : json["followers"].runtimeType == int
                ? json["followers"]
                : (json["followers"] as double).toInt(),
        compositions: json["compositions"] == null
            ? null
            : json["compositions"].runtimeType == int
                ? json["compositions"]
                : (json["compositions"] as double).toInt(),
        indications: json["indications"] == null
            ? null
            : json["indications"].runtimeType == int
                ? json["indications"]
                : (json["indications"] as double).toInt(),
        infoYoutube: json["info_youtube"] == null ? null : json["info_youtube"],
        indicationsFrom: json["indications_from"] == null
            ? null
            : json["indications_from"].runtimeType == int
                ? json["indications_from"]
                : (json["indications_from"] as double).toInt(),
        following: json["following"] == null
            ? null
            : json["following"].runtimeType == int
                ? json["following"]
                : (json["following"] as double).toInt(),
        liked: json["liked"] == null
            ? null
            : json["liked"].runtimeType == int
                ? json["liked"]
                : (json["liked"] as double).toInt(),
        infoWebsite: json["info_website"] == null ? null : json["info_website"],
        infoFbPage: json["info_fb_page"] == null ? null : json["info_fb_page"],
        infoInsta: json["info_insta"] == null ? null : json["info_insta"],
        profileDeleted:
            json["profile_deleted"] == null ? null : json["profile_deleted"],
        verifiedProfile:
            json["verified_profile"] == null ? null : json["verified_profile"],
        follows:
            json["follows"] == null ? null : Follows.fromMap(json["follows"]),
        isArtist: json["is_artist"] == null ? null : json["is_artist"],
        profileDatetimeCreated: json["profile_datetime_created"] == null
            ? null
            : DateTime.parse(json["profile_datetime_created"]),
        profileDatetimeUpdated: json["profile_datetime_updated"] == null
            ? null
            : DateTime.parse(json["profile_datetime_updated"]),
        pictureProfile: json["picture_profile"] == null
            ? null
            : Picture.fromMap(json["picture_profile"]),
        pictureCover: json["picture_cover"] == null
            ? null
            : Picture.fromMap(json["picture_cover"]),
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        idRole: json["id_role"] == null ? null : json["id_role"],
        usId: json["idUser"] == null ? null : json["idUser"],
        rank: json["rank"] == null
            ? null
            : json["rank"].runtimeType == int
                ? json["rank"]
                : (json["rank"] as double).toInt(),
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id == null ? null : id,
        "accepted_marketing":
            acceptedMarketing == null ? null : acceptedMarketing,
        "user_deleted": deleted == null ? null : deleted,
        "email_confirmed": emailConfirmed == null ? null : emailConfirmed,
        "phone_confirmed": phoneConfirmed == null ? null : phoneConfirmed,
        "confirmed": confirmed == null ? null : confirmed,
        "uploads_remaining_extra":
            uploadsRemainingExtra == null ? null : uploadsRemainingExtra,
        "tried_produts": triedProducts == null
            ? null
            : List<String>.from(triedProducts.map((x) => x)),
        "id_user": uId == null ? null : uId,
        "name": name == null ? null : name,
        "username": username == null ? null : username,
        "role": role == null ? null : role.toMap(),
        "accepted_terms": acceptedTerms == null ? null : acceptedTerms,
        "accepted_policy": acceptedPolicy == null ? null : acceptedPolicy,
        "user_datetime_created":
            datetimeCreated == null ? null : datetimeCreated.toIso8601String(),
        "user_datetime_updated":
            datetimeUpdated == null ? null : datetimeUpdated.toIso8601String(),
        "description": description == null ? null : description,
        "interpretations": interpretations == null ? null : interpretations,
        "location": location == null ? null : location,
        "place_id": placeId == null ? null : placeId,
        "followers": followers == null ? null : followers,
        "compositions": compositions == null ? null : compositions,
        "indications": indications == null ? null : indications,
        "info_youtube": infoYoutube == null ? null : infoYoutube,
        "indications_from": indicationsFrom == null ? null : indicationsFrom,
        "following": following == null ? null : following,
        "liked": liked == null ? null : liked,
        "info_website": infoWebsite == null ? null : infoWebsite,
        "info_fb_page": infoFbPage == null ? null : infoFbPage,
        "info_insta": infoInsta == null ? null : infoInsta,
        "profile_deleted": profileDeleted == null ? null : profileDeleted,
        "verified_profile": verifiedProfile == null ? null : verifiedProfile,
        "follows": follows == null ? null : follows.toMap(),
        "is_artist": isArtist == null ? null : isArtist,
        "profile_datetime_created": profileDatetimeCreated == null
            ? null
            : profileDatetimeCreated.toIso8601String(),
        "profile_datetime_updated": profileDatetimeUpdated == null
            ? null
            : profileDatetimeUpdated.toIso8601String(),
        "picture_profile":
            pictureProfile == null ? null : pictureProfile.toMap(),
        "picture_cover": pictureCover == null ? null : pictureCover.toMap(),
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
        "idUser": usId == null ? null : usId,
        "id_role": idRole == null ? null : idRole,
        "type": type == null ? null : type,
        "rank": rank == null ? null : rank,
      };
}
