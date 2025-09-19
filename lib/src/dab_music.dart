// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'dab_music.g.dart';

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String? baseUrl}) = _AuthenticationClient;

  /// User login.
  ///
  /// Authenticate user with email and password.
  @POST('/auth/login')
  Future<LoginResponse> postAuthLogin({
    @Body() required LoginRequest body,
  });

  /// User registration.
  ///
  /// Register a new user account.
  @POST('/auth/register')
  Future<RegisterResponse> postAuthRegister({
    @Body() required RegisterRequest body,
  });

  /// User logout.
  ///
  /// Logout current user and clear session.
  @POST('/auth/logout')
  Future<LogoutResponse> postAuthLogout();

  /// Get current user.
  ///
  /// Get information about the currently authenticated user.
  @GET('/auth/me')
  Future<CurrentUserResponse> getAuthMe();

  /// Request password reset.
  ///
  /// Send password reset email to user.
  @POST('/auth/forgot-password')
  Future<MessageResponse> postAuthForgotPassword({
    @Body() required ForgotPasswordRequest body,
  });

  /// Reset password.
  ///
  /// Reset user password using reset token.
  @POST('/auth/reset-password')
  Future<MessageResponse> postAuthResetPassword({
    @Body() required ResetPasswordRequest body,
  });
}

@RestApi()
abstract class MusicClient {
  factory MusicClient(Dio dio, {String? baseUrl}) = _MusicClient;

  /// Search for music.
  ///
  /// Search for tracks, albums, or artists. Returns separate arrays for each content type. Depending on the 'type' parameter, some arrays may be empty.
  ///
  /// [q] - Search query.
  ///
  /// [type] - Type of content to search for.
  ///
  /// [limit] - Number of results to return.
  @GET('/search')
  Future<SearchResponse> getSearch({
    @Query('q') required String q,
    @Query('type') Type? type = Type.track,
    @Query('limit') int? limit = 20,
  });

  /// Get album information.
  ///
  /// Retrieve detailed information about an album.
  ///
  /// [albumId] - Album ID.
  @GET('/album')
  Future<AlbumResponse> getAlbum({
    @Query('albumId') required String albumId,
  });

  /// Get album by ID.
  ///
  /// Get album details from database.
  ///
  /// [id] - Album ID.
  @GET('/album/{id}')
  Future<AlbumResponse> getAlbumId({
    @Path('id') required String id,
  });

  /// Get artist discography.
  ///
  /// Retrieve all albums by an artist.
  ///
  /// [artistId] - Artist ID.
  @GET('/discography')
  Future<DiscographyResponse> getDiscography({
    @Query('artistId') required String artistId,
  });

  /// Get album download information.
  ///
  /// Retrieve album information for download.
  ///
  /// [albumId] - Album ID.
  ///
  /// [quality] - Audio quality.
  @GET('/download')
  Future<AlbumResponse> getDownload({
    @Query('albumId') required String albumId,
    @Query('quality') String? quality = '27',
  });

  /// Stream audio track.
  ///
  /// Get streaming URL for a track.
  ///
  /// [trackId] - Track ID.
  ///
  /// [quality] - Audio quality.
  @GET('/stream')
  Future<StreamResponse> getStream({
    @Query('trackId') required String trackId,
    @Query('quality') String? quality = '27',
  });

  /// Get song lyrics.
  ///
  /// Retrieve lyrics for a song.
  ///
  /// [artist] - Artist name.
  ///
  /// [title] - Song title.
  @GET('/lyrics')
  Future<LyricsResponse> getLyrics({
    @Query('artist') required String artist,
    @Query('title') required String title,
  });
}

@RestApi()
abstract class UserFeaturesClient {
  factory UserFeaturesClient(Dio dio, {String? baseUrl}) = _UserFeaturesClient;

  /// Get user favorites.
  ///
  /// Retrieve user's favorite tracks.
  @GET('/favorites')
  Future<FavoritesResponse> getFavorites();

  /// Add track to favorites.
  ///
  /// Add a track to user's favorites.
  @POST('/favorites')
  Future<MessageResponse> postFavorites({
    @Body() required AddToFavoritesRequest body,
  });

  /// Remove track from favorites.
  ///
  /// Remove a track from user's favorites.
  ///
  /// [trackId] - Track ID to remove.
  @DELETE('/favorites')
  Future<MessageResponse> deleteFavorites({
    @Query('trackId') required String trackId,
  });
}

@RestApi()
abstract class LibrariesClient {
  factory LibrariesClient(Dio dio, {String? baseUrl}) = _LibrariesClient;

  /// Get user libraries.
  ///
  /// Retrieve all libraries for the current user.
  @GET('/libraries')
  Future<LibrariesResponse> getLibraries();

  /// Create library.
  ///
  /// Create a new library.
  @POST('/libraries')
  Future<CreateLibraryResponse> postLibraries({
    @Body() required CreateLibraryRequest body,
  });

  /// Get library.
  ///
  /// Get a specific library with its tracks.
  ///
  /// [id] - Library ID.
  ///
  /// [page] - Page number for pagination.
  ///
  /// [limit] - Number of tracks per page.
  @GET('/libraries/{id}')
  Future<LibraryDetailsResponse> getLibrariesId({
    @Path('id') required String id,
    @Query('page') int? page = 1,
    @Query('limit') int? limit = 20,
  });

  /// Delete library.
  ///
  /// Delete a library.
  ///
  /// [id] - Library ID.
  @DELETE('/libraries/{id}')
  Future<MessageResponse> deleteLibrariesId({
    @Path('id') required String id,
  });

  /// Update library.
  ///
  /// Update library information.
  ///
  /// [id] - Library ID.
  @PATCH('/libraries/{id}')
  Future<MessageResponse> patchLibrariesId({
    @Path('id') required String id,
    @Body() required UpdateLibraryRequest body,
  });

  /// Add track to library.
  ///
  /// Add a track to a library.
  ///
  /// [id] - Library ID.
  @POST('/libraries/{id}/tracks')
  Future<MessageResponse> postLibrariesIdTracks({
    @Path('id') required String id,
    @Body() required AddTrackToLibraryRequest body,
  });

  /// Remove track from library.
  ///
  /// Remove a track from a library.
  ///
  /// [id] - Library ID.
  ///
  /// [trackId] - Track ID.
  @DELETE('/libraries/{id}/tracks/{trackId}')
  Future<MessageResponse> deleteLibrariesIdTracksTrackId({
    @Path('id') required String id,
    @Path('trackId') required String trackId,
  });
}

@RestApi()
abstract class QueueClient {
  factory QueueClient(Dio dio, {String? baseUrl}) = _QueueClient;

  /// Get user queue.
  ///
  /// Retrieve user's playback queue.
  @GET('/queue')
  Future<QueueResponse> getQueue();

  /// Save user queue.
  ///
  /// Save user's playback queue.
  @POST('/queue')
  Future<MessageResponse> postQueue({
    @Body() required SaveQueueRequest body,
  });

  /// Clear user queue.
  ///
  /// Clear user's playback queue.
  @DELETE('/queue')
  Future<MessageResponse> deleteQueue();
}

@JsonSerializable()
class User {
  const User({
    this.id,
    this.username,
    this.email,
    this.createdAt,
  });
  
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
  
  final int? id;
  final String? username;
  final String? email;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  Map<String, Object?> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Track {
  const Track({
    this.id,
    this.title,
    this.artist,
    this.artistId,
    this.albumTitle,
    this.albumCover,
    this.albumId,
    this.releaseDate,
    this.genre,
    this.duration,
    this.audioQuality,
  });
  
  factory Track.fromJson(Map<String, Object?> json) => _$TrackFromJson(json);
  
  final dynamic id;
  final String? title;
  final String? artist;
  final int? artistId;
  final String? albumTitle;
  final String? albumCover;
  final String? albumId;
  final String? releaseDate;
  final String? genre;

  /// Duration in seconds
  final int? duration;
  final AudioQuality? audioQuality;

  Map<String, Object?> toJson() => _$TrackToJson(this);
}

@JsonSerializable()
class Album {
  const Album({
    this.id,
    this.title,
    this.artist,
    this.releaseDate,
    this.genre,
    this.cover,
    this.tracks,
    this.trackCount,
    this.duration,
    this.audioQuality,
    this.label,
    this.upc,
    this.url,
    this.streamable,
    this.downloadable,
    this.mediaCount,
    this.maximumChannelCount,
    this.parentalWarning,
    this.popularity,
  });
  
  factory Album.fromJson(Map<String, Object?> json) => _$AlbumFromJson(json);
  
  final String? id;
  final String? title;
  final String? artist;
  final String? releaseDate;
  final String? genre;
  final String? cover;
  final List<Track>? tracks;
  final int? trackCount;

  /// Total duration in seconds
  final int? duration;
  final AudioQuality? audioQuality;
  final String? label;
  final String? upc;
  final String? url;
  final bool? streamable;
  final bool? downloadable;
  final int? mediaCount;
  final int? maximumChannelCount;
  @JsonKey(name: 'parental_warning')
  final bool? parentalWarning;
  final int? popularity;

  Map<String, Object?> toJson() => _$AlbumToJson(this);
}

@JsonSerializable()
class Artist {
  const Artist({
    this.id,
    this.name,
    this.albumsCount,
    this.albumsAsPrimaryArtistCount,
    this.albumsAsPrimaryComposerCount,
    this.slug,
    this.image,
    this.biography,
    this.similarArtistIds,
    this.information,
  });
  
  factory Artist.fromJson(Map<String, Object?> json) => _$ArtistFromJson(json);
  
  final String? id;
  final String? name;
  final int? albumsCount;
  final int? albumsAsPrimaryArtistCount;
  final int? albumsAsPrimaryComposerCount;
  final String? slug;
  final String? image;
  final String? biography;
  final List<String>? similarArtistIds;
  final String? information;

  Map<String, Object?> toJson() => _$ArtistToJson(this);
}

@JsonSerializable()
class Library {
  const Library({
    this.id,
    this.name,
    this.description,
    this.isPublic,
    this.trackCount,
    this.createdAt,
  });
  
  factory Library.fromJson(Map<String, Object?> json) => _$LibraryFromJson(json);
  
  final String? id;
  final String? name;
  final String? description;
  final bool? isPublic;
  final int? trackCount;
  final DateTime? createdAt;

  Map<String, Object?> toJson() => _$LibraryToJson(this);
}

@JsonSerializable()
class AudioQuality {
  const AudioQuality({
    this.maximumBitDepth,
    this.maximumSamplingRate,
    this.isHiRes,
  });
  
  factory AudioQuality.fromJson(Map<String, Object?> json) => _$AudioQualityFromJson(json);
  
  final int? maximumBitDepth;
  final num? maximumSamplingRate;
  final bool? isHiRes;

  Map<String, Object?> toJson() => _$AudioQualityToJson(this);
}

@JsonSerializable()
class Pagination {
  const Pagination({
    this.page,
    this.limit,
    this.total,
    this.hasMore,
    this.loaded,
  });
  
  factory Pagination.fromJson(Map<String, Object?> json) => _$PaginationFromJson(json);
  
  final int? page;
  final int? limit;
  final int? total;
  final bool? hasMore;
  final int? loaded;

  Map<String, Object?> toJson() => _$PaginationToJson(this);
}

@JsonSerializable()
class ResponseError {
  const ResponseError({
    this.error,
    this.message,
  });
  
  factory ResponseError.fromJson(Map<String, Object?> json) => _$ResponseErrorFromJson(json);
  
  final String? error;
  final String? message;

  Map<String, Object?> toJson() => _$ResponseErrorToJson(this);
}

@JsonSerializable()
class SearchResultItem {
  const SearchResultItem();
  
  factory SearchResultItem.fromJson(Map<String, Object?> json) => _$SearchResultItemFromJson(json);
  
  Map<String, Object?> toJson() => _$SearchResultItemToJson(this);
}

@JsonSerializable()
class MessageResponse {
  const MessageResponse({
    this.message,
  });
  
  factory MessageResponse.fromJson(Map<String, Object?> json) => _$MessageResponseFromJson(json);
  
  final String? message;

  Map<String, Object?> toJson() => _$MessageResponseToJson(this);
}

@JsonSerializable()
class LoginRequest {
  const LoginRequest({
    required this.email,
    required this.password,
  });
  
  factory LoginRequest.fromJson(Map<String, Object?> json) => _$LoginRequestFromJson(json);
  
  final String email;
  final String password;

  Map<String, Object?> toJson() => _$LoginRequestToJson(this);
}

@JsonSerializable()
class LoginResponse {
  const LoginResponse({
    this.message,
    this.user,
  });
  
  factory LoginResponse.fromJson(Map<String, Object?> json) => _$LoginResponseFromJson(json);
  
  final String? message;
  final User? user;

  Map<String, Object?> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class RegisterRequest {
  const RegisterRequest({
    required this.username,
    required this.email,
    required this.password,
    this.inviteCode,
  });
  
  factory RegisterRequest.fromJson(Map<String, Object?> json) => _$RegisterRequestFromJson(json);
  
  final String username;
  final String email;
  final String password;

  /// Required if invite system is enabled
  final String? inviteCode;

  Map<String, Object?> toJson() => _$RegisterRequestToJson(this);
}

@JsonSerializable()
class RegisterResponse {
  const RegisterResponse({
    this.message,
  });
  
  factory RegisterResponse.fromJson(Map<String, Object?> json) => _$RegisterResponseFromJson(json);
  
  final String? message;

  Map<String, Object?> toJson() => _$RegisterResponseToJson(this);
}

@JsonSerializable()
class LogoutResponse {
  const LogoutResponse({
    this.message,
  });
  
  factory LogoutResponse.fromJson(Map<String, Object?> json) => _$LogoutResponseFromJson(json);
  
  final String? message;

  Map<String, Object?> toJson() => _$LogoutResponseToJson(this);
}

@JsonSerializable()
class CurrentUserResponse {
  const CurrentUserResponse({
    required this.user,
  });
  
  factory CurrentUserResponse.fromJson(Map<String, Object?> json) => _$CurrentUserResponseFromJson(json);
  
  final User user;

  Map<String, Object?> toJson() => _$CurrentUserResponseToJson(this);
}

@JsonSerializable()
class ForgotPasswordRequest {
  const ForgotPasswordRequest({
    required this.email,
  });
  
  factory ForgotPasswordRequest.fromJson(Map<String, Object?> json) => _$ForgotPasswordRequestFromJson(json);
  
  final String email;

  Map<String, Object?> toJson() => _$ForgotPasswordRequestToJson(this);
}

@JsonSerializable()
class ResetPasswordRequest {
  const ResetPasswordRequest({
    required this.token,
    required this.password,
  });
  
  factory ResetPasswordRequest.fromJson(Map<String, Object?> json) => _$ResetPasswordRequestFromJson(json);
  
  final String token;
  final String password;

  Map<String, Object?> toJson() => _$ResetPasswordRequestToJson(this);
}

@JsonSerializable()
class SearchResponse {
  const SearchResponse({
    this.albums,
    this.tracks,
    this.artists,
    this.pagination,
    this.query,
    this.searchType,
  });
  
  factory SearchResponse.fromJson(Map<String, Object?> json) => _$SearchResponseFromJson(json);
  
  /// Array of albums found
  final List<Album>? albums;

  /// Array of tracks found
  final List<Track>? tracks;

  /// Array of artists found
  final List<Artist>? artists;
  final Pagination? pagination;

  /// Original search query
  final String? query;

  /// Type of search performed
  final SearchResponseSearchType? searchType;

  Map<String, Object?> toJson() => _$SearchResponseToJson(this);
}

@JsonSerializable()
class AlbumResponse {
  const AlbumResponse({
    this.album,
  });
  
  factory AlbumResponse.fromJson(Map<String, Object?> json) => _$AlbumResponseFromJson(json);
  
  final Album? album;

  Map<String, Object?> toJson() => _$AlbumResponseToJson(this);
}

@JsonSerializable()
class DiscographyResponse {
  const DiscographyResponse({
    this.artist,
    this.albums,
  });
  
  factory DiscographyResponse.fromJson(Map<String, Object?> json) => _$DiscographyResponseFromJson(json);
  
  final Artist? artist;
  final List<Album>? albums;

  Map<String, Object?> toJson() => _$DiscographyResponseToJson(this);
}

@JsonSerializable()
class StreamResponse {
  const StreamResponse({
    this.url,
  });
  
  factory StreamResponse.fromJson(Map<String, Object?> json) => _$StreamResponseFromJson(json);
  
  final String? url;

  Map<String, Object?> toJson() => _$StreamResponseToJson(this);
}

@JsonSerializable()
class LyricsResponse {
  const LyricsResponse({
    this.lyrics,
    this.unsynced,
  });
  
  factory LyricsResponse.fromJson(Map<String, Object?> json) => _$LyricsResponseFromJson(json);
  
  final String? lyrics;

  /// Whether lyrics are time-synced
  final bool? unsynced;

  Map<String, Object?> toJson() => _$LyricsResponseToJson(this);
}

@JsonSerializable()
class FavoritesResponse {
  const FavoritesResponse({
    this.favorites,
  });
  
  factory FavoritesResponse.fromJson(Map<String, Object?> json) => _$FavoritesResponseFromJson(json);
  
  final List<Track>? favorites;

  Map<String, Object?> toJson() => _$FavoritesResponseToJson(this);
}

@JsonSerializable()
class AddToFavoritesRequest {
  const AddToFavoritesRequest({
    required this.track,
  });
  
  factory AddToFavoritesRequest.fromJson(Map<String, Object?> json) => _$AddToFavoritesRequestFromJson(json);
  
  final Track track;

  Map<String, Object?> toJson() => _$AddToFavoritesRequestToJson(this);
}

@JsonSerializable()
class LibrariesResponse {
  const LibrariesResponse({
    this.libraries,
  });
  
  factory LibrariesResponse.fromJson(Map<String, Object?> json) => _$LibrariesResponseFromJson(json);
  
  final List<Library>? libraries;

  Map<String, Object?> toJson() => _$LibrariesResponseToJson(this);
}

@JsonSerializable()
class CreateLibraryRequest {
  const CreateLibraryRequest({
    required this.name,
    this.isPublic = false,
    this.description,
  });
  
  factory CreateLibraryRequest.fromJson(Map<String, Object?> json) => _$CreateLibraryRequestFromJson(json);
  
  final String name;
  final String? description;
  final bool isPublic;

  Map<String, Object?> toJson() => _$CreateLibraryRequestToJson(this);
}

@JsonSerializable()
class CreateLibraryResponse {
  const CreateLibraryResponse({
    this.message,
    this.libraryValue,
  });
  
  factory CreateLibraryResponse.fromJson(Map<String, Object?> json) => _$CreateLibraryResponseFromJson(json);
  
  final String? message;

  /// The name has been replaced because it contains a keyword. Original name: `library`.
  @JsonKey(name: 'library')
  final Library? libraryValue;

  Map<String, Object?> toJson() => _$CreateLibraryResponseToJson(this);
}

@JsonSerializable()
class LibraryDetailsResponse {
  const LibraryDetailsResponse({
    required this.libraryValue,
  });
  
  factory LibraryDetailsResponse.fromJson(Map<String, Object?> json) => _$LibraryDetailsResponseFromJson(json);
  
  /// The name has been replaced because it contains a keyword. Original name: `library`.
  /// The name has been replaced because it contains a keyword. Original name: `library`.
  @JsonKey(name: 'library')
  final LibraryDetailsResponseLibrary libraryValue;

  Map<String, Object?> toJson() => _$LibraryDetailsResponseToJson(this);
}

@JsonSerializable()
class UpdateLibraryRequest {
  const UpdateLibraryRequest({
    this.name,
    this.description,
    this.isPublic,
  });
  
  factory UpdateLibraryRequest.fromJson(Map<String, Object?> json) => _$UpdateLibraryRequestFromJson(json);
  
  final String? name;
  final String? description;
  final bool? isPublic;

  Map<String, Object?> toJson() => _$UpdateLibraryRequestToJson(this);
}

@JsonSerializable()
class AddTrackToLibraryRequest {
  const AddTrackToLibraryRequest({
    required this.track,
  });
  
  factory AddTrackToLibraryRequest.fromJson(Map<String, Object?> json) => _$AddTrackToLibraryRequestFromJson(json);
  
  final Track track;

  Map<String, Object?> toJson() => _$AddTrackToLibraryRequestToJson(this);
}

@JsonSerializable()
class QueueResponse {
  const QueueResponse({
    this.queue,
  });
  
  factory QueueResponse.fromJson(Map<String, Object?> json) => _$QueueResponseFromJson(json);
  
  final List<Track>? queue;

  Map<String, Object?> toJson() => _$QueueResponseToJson(this);
}

@JsonSerializable()
class SaveQueueRequest {
  const SaveQueueRequest({
    required this.queue,
  });
  
  factory SaveQueueRequest.fromJson(Map<String, Object?> json) => _$SaveQueueRequestFromJson(json);
  
  final List<Track> queue;

  Map<String, Object?> toJson() => _$SaveQueueRequestToJson(this);
}

@JsonSerializable()
class LibraryDetailsResponseLibrary {
  const LibraryDetailsResponseLibrary({
    this.id,
    this.name,
    this.description,
    this.isPublic,
    this.trackCount,
    this.createdAt,
    this.tracks,
    this.pagination,
  });
  
  factory LibraryDetailsResponseLibrary.fromJson(Map<String, Object?> json) => _$LibraryDetailsResponseLibraryFromJson(json);
  
  final String? id;
  final String? name;
  final String? description;
  final bool? isPublic;
  final int? trackCount;
  final DateTime? createdAt;
  final List<Track>? tracks;
  final Pagination? pagination;

  Map<String, Object?> toJson() => _$LibraryDetailsResponseLibraryToJson(this);
}

@JsonEnum()
enum Type {
  @JsonValue('track')
  track('track'),
  @JsonValue('album')
  album('album'),
  @JsonValue('artist')
  artist('artist'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const Type(this.json);

  factory Type.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  @override
  String toString() => json ?? super.toString();
  /// Returns all defined enum values excluding the $unknown value.
  static List<Type> get $valuesDefined => values.where((value) => value != $unknown).toList();
}

/// Type of search performed
@JsonEnum()
enum SearchResponseSearchType {
  @JsonValue('track')
  track('track'),
  @JsonValue('album')
  album('album'),
  @JsonValue('artist')
  artist('artist'),
  @JsonValue('all')
  all('all'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const SearchResponseSearchType(this.json);

  factory SearchResponseSearchType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  @override
  String toString() => json ?? super.toString();
  /// Returns all defined enum values excluding the $unknown value.
  static List<SearchResponseSearchType> get $valuesDefined => values.where((value) => value != $unknown).toList();
}

/// DAB Music Player API `v1.0.1`.
///
/// A comprehensive music streaming and library management API that provides access to music search,.
/// album information, user authentication, playlist management, and administrative features.
///
/// THIS SOFTWARE AND API ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,.
/// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF.
/// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
/// IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER.
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING.
/// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER.
/// DEALINGS IN THE SOFTWARE OR API.
///
/// By using this API or building on it, you agree that any software or service that incorporates.
/// it must also be made available under an open-source license compatible with AGPLv3.
///
/// ## Authentication.
/// Most endpoints require authentication via JWT tokens stored in HTTP-only cookies.
///
/// ## Base URL.
/// All API endpoints are relative to: `https://dab.yeet.su/api`.
///
class DabMusicApiClient {
  DabMusicApiClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '1.0.1';

  AuthenticationClient? _authentication;
  MusicClient? _music;
  UserFeaturesClient? _userFeatures;
  LibrariesClient? _libraries;
  QueueClient? _queue;

  AuthenticationClient get authentication => _authentication ??= AuthenticationClient(_dio, baseUrl: _baseUrl);

  MusicClient get music => _music ??= MusicClient(_dio, baseUrl: _baseUrl);

  UserFeaturesClient get userFeatures => _userFeatures ??= UserFeaturesClient(_dio, baseUrl: _baseUrl);

  LibrariesClient get libraries => _libraries ??= LibrariesClient(_dio, baseUrl: _baseUrl);

  QueueClient get queue => _queue ??= QueueClient(_dio, baseUrl: _baseUrl);
}

