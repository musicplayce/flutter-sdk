import 'package:music_playce_sdk/core/api/endpoints/playlist_endpoint.dart';
import 'package:music_playce_sdk/core/api/models/playlists/playlist_response.model.dart';
import 'package:music_playce_sdk/core/api/models/posts/posts.model.dart';

/// The abstract class for PlaylistsRepository
///
/// The subclasses need to implement his methods
/// in order to communicate with the playlists endpoints
abstract class PlaylistsRepository {
  /// Sends an HTTP request to the playlists endpoint in order to
  /// fetch a specific playlist by its ID
  ///
  /// The request is made to [PlaylistEndpoint.getAPlaylist]
  /// It receive a [String] that is a [playlistId]
  ///
  /// It returns a [PlaylistResponse] object
  Future<PlaylistResponse> getAPlaylist(String playlistId);

  /// Sends an HTTP request to the playlists endpoint in order to
  /// add a post to a playlist by its ID
  ///
  /// The request is made to [PlaylistEndpoint.addAPostToPlaylist]
  /// It receive an object [Post] and a [String] that is a [playlistId]
  ///
  /// It returns a [PlaylistResponse] object
  Future<PlaylistResponse> addAPostToPlaylist(String playlistId, Post post);

  /// Sends an HTTP request to the playlists endpoint in order to
  /// delete a post from a playlist by its ID
  ///
  /// The request is made to [PlaylistEndpoint.deleteAPostFromAPlaylist]
  /// It receive a [String] that is a [postId] and a [String] that is a
  /// [playlistId]
  ///
  /// It returns a [PlaylistResponse] object
  Future<PlaylistResponse> deleteAPostFromAPlaylist(
      String playlistId, String postId);

  /// Sends an HTTP request to the playlists endpoint in order to
  /// create an empty playlist with a parameter name
  ///
  /// The request is made to [PlaylistEndpoint.createPlaylist]
  /// It receive a [String] that is a [name]
  ///
  /// It returns an boolean that shows if playlist was add or not
  Future<bool> createPlaylist(String name);

  /// Sends an HTTP request to the playlists endpoint in order to
  /// delete a playlist by its ID
  ///
  /// The request is made to [PlaylistEndpoint.deleteAPlaylist]
  /// It receive a [String] that is a [playlistId]
  ///
  /// It returns an boolean that shows if playlist was deleted or not
  Future<bool> deleteAPlaylist(String playlistId);
}