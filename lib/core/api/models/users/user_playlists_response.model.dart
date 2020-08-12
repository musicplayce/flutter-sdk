import 'package:music_playce_sdk/core/api/models/posts/picture.model.dart';

import '../posts/posts.model.dart';

class UserPlaylists {
  String idPlaylist;
  String idProfile;
  String playlistName;
  int duration;
  int length;
  bool isEditable;
  bool isPublic;
  Picture picture;
  List<Post> posts;

  UserPlaylists({
    this.idPlaylist,
    this.idProfile,
    this.playlistName,
    this.duration,
    this.length,
    this.isEditable,
    this.isPublic,
    this.picture,
    this.posts,
  });

  Map<String, dynamic> toJson() {
    return {
      "_id": idPlaylist,
      "id_profile": idProfile,
      "name": playlistName,
      "duration": duration,
      "length": length,
      "is_editable": isEditable,
      "is_public": isPublic,
      "picture": picture,
      "posts": posts != null ? posts.map((e) => e.toMap()) : null,
    };
  }

  factory UserPlaylists.fromJson(dynamic data) {
    return UserPlaylists(
      idPlaylist: data['_id'],
      idProfile: data['id_profile'],
      playlistName: data['name'],
      duration: data['duration'].toInt(),
      length: data['length'],
      isEditable: data['is_editable'],
      isPublic: data['is_public'],
      picture: data['picture'],
      posts: data['posts'] != null ? data['posts'].map<Post>((post){
        return Post.fromMap(post);
      }).toList() : null
    );
  }
}