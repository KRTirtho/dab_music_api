// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dab_music.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      email: json['email'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'created_at': instance.createdAt?.toIso8601String(),
    };

Track _$TrackFromJson(Map<String, dynamic> json) => Track(
      id: json['id'],
      title: json['title'] as String?,
      artist: json['artist'] as String?,
      artistId: (json['artistId'] as num?)?.toInt(),
      albumTitle: json['albumTitle'] as String?,
      albumCover: json['albumCover'] as String?,
      albumId: json['albumId'] as String?,
      releaseDate: json['releaseDate'] as String?,
      genre: json['genre'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      audioQuality: json['audioQuality'] == null
          ? null
          : AudioQuality.fromJson(json['audioQuality'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TrackToJson(Track instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'artist': instance.artist,
      'artistId': instance.artistId,
      'albumTitle': instance.albumTitle,
      'albumCover': instance.albumCover,
      'albumId': instance.albumId,
      'releaseDate': instance.releaseDate,
      'genre': instance.genre,
      'duration': instance.duration,
      'audioQuality': instance.audioQuality,
    };

Album _$AlbumFromJson(Map<String, dynamic> json) => Album(
      id: json['id'] as String?,
      title: json['title'] as String?,
      artist: json['artist'] as String?,
      releaseDate: json['releaseDate'] as String?,
      genre: json['genre'] as String?,
      cover: json['cover'] as String?,
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
      trackCount: (json['trackCount'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      audioQuality: json['audioQuality'] == null
          ? null
          : AudioQuality.fromJson(json['audioQuality'] as Map<String, dynamic>),
      label: json['label'] as String?,
      upc: json['upc'] as String?,
      url: json['url'] as String?,
      streamable: json['streamable'] as bool?,
      downloadable: json['downloadable'] as bool?,
      mediaCount: (json['mediaCount'] as num?)?.toInt(),
      maximumChannelCount: (json['maximumChannelCount'] as num?)?.toInt(),
      parentalWarning: json['parental_warning'] as bool?,
      popularity: (json['popularity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'artist': instance.artist,
      'releaseDate': instance.releaseDate,
      'genre': instance.genre,
      'cover': instance.cover,
      'tracks': instance.tracks,
      'trackCount': instance.trackCount,
      'duration': instance.duration,
      'audioQuality': instance.audioQuality,
      'label': instance.label,
      'upc': instance.upc,
      'url': instance.url,
      'streamable': instance.streamable,
      'downloadable': instance.downloadable,
      'mediaCount': instance.mediaCount,
      'maximumChannelCount': instance.maximumChannelCount,
      'parental_warning': instance.parentalWarning,
      'popularity': instance.popularity,
    };

Artist _$ArtistFromJson(Map<String, dynamic> json) => Artist(
      id: json['id'] as String?,
      name: json['name'] as String?,
      albumsCount: (json['albumsCount'] as num?)?.toInt(),
      albumsAsPrimaryArtistCount:
          (json['albumsAsPrimaryArtistCount'] as num?)?.toInt(),
      albumsAsPrimaryComposerCount:
          (json['albumsAsPrimaryComposerCount'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      image: json['image'] as String?,
      biography: json['biography'] as String?,
      similarArtistIds: (json['similarArtistIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      information: json['information'] as String?,
    );

Map<String, dynamic> _$ArtistToJson(Artist instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'albumsCount': instance.albumsCount,
      'albumsAsPrimaryArtistCount': instance.albumsAsPrimaryArtistCount,
      'albumsAsPrimaryComposerCount': instance.albumsAsPrimaryComposerCount,
      'slug': instance.slug,
      'image': instance.image,
      'biography': instance.biography,
      'similarArtistIds': instance.similarArtistIds,
      'information': instance.information,
    };

Library _$LibraryFromJson(Map<String, dynamic> json) => Library(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      isPublic: json['isPublic'] as bool?,
      trackCount: (json['trackCount'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$LibraryToJson(Library instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isPublic': instance.isPublic,
      'trackCount': instance.trackCount,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

AudioQuality _$AudioQualityFromJson(Map<String, dynamic> json) => AudioQuality(
      maximumBitDepth: (json['maximumBitDepth'] as num?)?.toInt(),
      maximumSamplingRate: json['maximumSamplingRate'] as num?,
      isHiRes: json['isHiRes'] as bool?,
    );

Map<String, dynamic> _$AudioQualityToJson(AudioQuality instance) =>
    <String, dynamic>{
      'maximumBitDepth': instance.maximumBitDepth,
      'maximumSamplingRate': instance.maximumSamplingRate,
      'isHiRes': instance.isHiRes,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      hasMore: json['hasMore'] as bool?,
      loaded: (json['loaded'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'total': instance.total,
      'hasMore': instance.hasMore,
      'loaded': instance.loaded,
    };

ResponseError _$ResponseErrorFromJson(Map<String, dynamic> json) =>
    ResponseError(
      error: json['error'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ResponseErrorToJson(ResponseError instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
    };

SearchResultItem _$SearchResultItemFromJson(Map<String, dynamic> json) =>
    SearchResultItem();

Map<String, dynamic> _$SearchResultItemToJson(SearchResultItem instance) =>
    <String, dynamic>{};

MessageResponse _$MessageResponseFromJson(Map<String, dynamic> json) =>
    MessageResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$MessageResponseToJson(MessageResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) => LoginRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    RegisterRequest(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      inviteCode: json['inviteCode'] as String?,
    );

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'inviteCode': instance.inviteCode,
    };

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

LogoutResponse _$LogoutResponseFromJson(Map<String, dynamic> json) =>
    LogoutResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$LogoutResponseToJson(LogoutResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

CurrentUserResponse _$CurrentUserResponseFromJson(Map<String, dynamic> json) =>
    CurrentUserResponse(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentUserResponseToJson(
        CurrentUserResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

ForgotPasswordRequest _$ForgotPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordRequest(
      email: json['email'] as String,
    );

Map<String, dynamic> _$ForgotPasswordRequestToJson(
        ForgotPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

ResetPasswordRequest _$ResetPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordRequest(
      token: json['token'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$ResetPasswordRequestToJson(
        ResetPasswordRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'password': instance.password,
    };

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    SearchResponse(
      albums: (json['albums'] as List<dynamic>?)
          ?.map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      query: json['query'] as String?,
      searchType: json['searchType'] == null
          ? null
          : SearchResponseSearchType.fromJson(json['searchType'] as String),
    );

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) =>
    <String, dynamic>{
      'albums': instance.albums,
      'tracks': instance.tracks,
      'artists': instance.artists,
      'pagination': instance.pagination,
      'query': instance.query,
      'searchType': _$SearchResponseSearchTypeEnumMap[instance.searchType],
    };

const _$SearchResponseSearchTypeEnumMap = {
  SearchResponseSearchType.track: 'track',
  SearchResponseSearchType.album: 'album',
  SearchResponseSearchType.artist: 'artist',
  SearchResponseSearchType.all: 'all',
  SearchResponseSearchType.$unknown: r'$unknown',
};

AlbumResponse _$AlbumResponseFromJson(Map<String, dynamic> json) =>
    AlbumResponse(
      album: json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AlbumResponseToJson(AlbumResponse instance) =>
    <String, dynamic>{
      'album': instance.album,
    };

DiscographyResponse _$DiscographyResponseFromJson(Map<String, dynamic> json) =>
    DiscographyResponse(
      artist: json['artist'] == null
          ? null
          : Artist.fromJson(json['artist'] as Map<String, dynamic>),
      albums: (json['albums'] as List<dynamic>?)
          ?.map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DiscographyResponseToJson(
        DiscographyResponse instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'albums': instance.albums,
    };

StreamResponse _$StreamResponseFromJson(Map<String, dynamic> json) =>
    StreamResponse(
      streamUrl: json['streamUrl'] as String?,
    );

Map<String, dynamic> _$StreamResponseToJson(StreamResponse instance) =>
    <String, dynamic>{
      'streamUrl': instance.streamUrl,
    };

LyricsResponse _$LyricsResponseFromJson(Map<String, dynamic> json) =>
    LyricsResponse(
      lyrics: json['lyrics'] as String?,
      unsynced: json['unsynced'] as bool?,
    );

Map<String, dynamic> _$LyricsResponseToJson(LyricsResponse instance) =>
    <String, dynamic>{
      'lyrics': instance.lyrics,
      'unsynced': instance.unsynced,
    };

FavoritesResponse _$FavoritesResponseFromJson(Map<String, dynamic> json) =>
    FavoritesResponse(
      favorites: (json['favorites'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FavoritesResponseToJson(FavoritesResponse instance) =>
    <String, dynamic>{
      'favorites': instance.favorites,
    };

AddToFavoritesRequest _$AddToFavoritesRequestFromJson(
        Map<String, dynamic> json) =>
    AddToFavoritesRequest(
      track: Track.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddToFavoritesRequestToJson(
        AddToFavoritesRequest instance) =>
    <String, dynamic>{
      'track': instance.track,
    };

LibrariesResponse _$LibrariesResponseFromJson(Map<String, dynamic> json) =>
    LibrariesResponse(
      libraries: (json['libraries'] as List<dynamic>?)
          ?.map((e) => Library.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LibrariesResponseToJson(LibrariesResponse instance) =>
    <String, dynamic>{
      'libraries': instance.libraries,
    };

CreateLibraryRequest _$CreateLibraryRequestFromJson(
        Map<String, dynamic> json) =>
    CreateLibraryRequest(
      name: json['name'] as String,
      isPublic: json['isPublic'] as bool? ?? false,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CreateLibraryRequestToJson(
        CreateLibraryRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'isPublic': instance.isPublic,
    };

CreateLibraryResponse _$CreateLibraryResponseFromJson(
        Map<String, dynamic> json) =>
    CreateLibraryResponse(
      message: json['message'] as String?,
      libraryValue: json['library'] == null
          ? null
          : Library.fromJson(json['library'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateLibraryResponseToJson(
        CreateLibraryResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'library': instance.libraryValue,
    };

LibraryDetailsResponse _$LibraryDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    LibraryDetailsResponse(
      libraryValue: LibraryDetailsResponseLibrary.fromJson(
          json['library'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LibraryDetailsResponseToJson(
        LibraryDetailsResponse instance) =>
    <String, dynamic>{
      'library': instance.libraryValue,
    };

UpdateLibraryRequest _$UpdateLibraryRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateLibraryRequest(
      name: json['name'] as String?,
      description: json['description'] as String?,
      isPublic: json['isPublic'] as bool?,
    );

Map<String, dynamic> _$UpdateLibraryRequestToJson(
        UpdateLibraryRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'isPublic': instance.isPublic,
    };

AddTrackToLibraryRequest _$AddTrackToLibraryRequestFromJson(
        Map<String, dynamic> json) =>
    AddTrackToLibraryRequest(
      track: Track.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddTrackToLibraryRequestToJson(
        AddTrackToLibraryRequest instance) =>
    <String, dynamic>{
      'track': instance.track,
    };

QueueResponse _$QueueResponseFromJson(Map<String, dynamic> json) =>
    QueueResponse(
      queue: (json['queue'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QueueResponseToJson(QueueResponse instance) =>
    <String, dynamic>{
      'queue': instance.queue,
    };

SaveQueueRequest _$SaveQueueRequestFromJson(Map<String, dynamic> json) =>
    SaveQueueRequest(
      queue: (json['queue'] as List<dynamic>)
          .map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SaveQueueRequestToJson(SaveQueueRequest instance) =>
    <String, dynamic>{
      'queue': instance.queue,
    };

LibraryDetailsResponseLibrary _$LibraryDetailsResponseLibraryFromJson(
        Map<String, dynamic> json) =>
    LibraryDetailsResponseLibrary(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      isPublic: json['isPublic'] as bool?,
      trackCount: (json['trackCount'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LibraryDetailsResponseLibraryToJson(
        LibraryDetailsResponseLibrary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isPublic': instance.isPublic,
      'trackCount': instance.trackCount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'tracks': instance.tracks,
      'pagination': instance.pagination,
    };

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _AuthenticationClient implements AuthenticationClient {
  _AuthenticationClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<LoginResponse> postAuthLogin({required LoginRequest body}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<LoginResponse>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/auth/login',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late LoginResponse _value;
    try {
      _value = LoginResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<RegisterResponse> postAuthRegister({
    required RegisterRequest body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<RegisterResponse>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/auth/register',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late RegisterResponse _value;
    try {
      _value = RegisterResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<LogoutResponse> postAuthLogout() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<LogoutResponse>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/auth/logout',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late LogoutResponse _value;
    try {
      _value = LogoutResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<CurrentUserResponse> getAuthMe() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<CurrentUserResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/auth/me',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late CurrentUserResponse _value;
    try {
      _value = CurrentUserResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MessageResponse> postAuthForgotPassword({
    required ForgotPasswordRequest body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<MessageResponse>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/auth/forgot-password',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MessageResponse _value;
    try {
      _value = MessageResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MessageResponse> postAuthResetPassword({
    required ResetPasswordRequest body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<MessageResponse>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/auth/reset-password',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MessageResponse _value;
    try {
      _value = MessageResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _MusicClient implements MusicClient {
  _MusicClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<SearchResponse> getSearch({
    required String q,
    Type? type = Type.track,
    int? limit = 20,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'q': q,
      r'type': type,
      r'limit': limit,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<SearchResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/search',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SearchResponse _value;
    try {
      _value = SearchResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<AlbumResponse> getAlbum({required String albumId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'albumId': albumId};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<AlbumResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/album',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late AlbumResponse _value;
    try {
      _value = AlbumResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<AlbumResponse> getAlbumId({required String id}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<AlbumResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/album/${id}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late AlbumResponse _value;
    try {
      _value = AlbumResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<DiscographyResponse> getDiscography({required String artistId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'artistId': artistId};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<DiscographyResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/discography',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DiscographyResponse _value;
    try {
      _value = DiscographyResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<AlbumResponse> getDownload({
    required String albumId,
    String? quality = '27',
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'albumId': albumId,
      r'quality': quality,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<AlbumResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/download',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late AlbumResponse _value;
    try {
      _value = AlbumResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<StreamResponse> getStream({
    required String trackId,
    String? quality = '27',
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'trackId': trackId,
      r'quality': quality,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<StreamResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/stream',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StreamResponse _value;
    try {
      _value = StreamResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<LyricsResponse> getLyrics({
    required String artist,
    required String title,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'artist': artist,
      r'title': title,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<LyricsResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/lyrics',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late LyricsResponse _value;
    try {
      _value = LyricsResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _UserFeaturesClient implements UserFeaturesClient {
  _UserFeaturesClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<FavoritesResponse> getFavorites() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<FavoritesResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/favorites',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late FavoritesResponse _value;
    try {
      _value = FavoritesResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MessageResponse> postFavorites({
    required AddToFavoritesRequest body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<MessageResponse>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/favorites',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MessageResponse _value;
    try {
      _value = MessageResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MessageResponse> deleteFavorites({required String trackId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'trackId': trackId};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<MessageResponse>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/favorites',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MessageResponse _value;
    try {
      _value = MessageResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _LibrariesClient implements LibrariesClient {
  _LibrariesClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<LibrariesResponse> getLibraries() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<LibrariesResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/libraries',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late LibrariesResponse _value;
    try {
      _value = LibrariesResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<CreateLibraryResponse> postLibraries({
    required CreateLibraryRequest body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<CreateLibraryResponse>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/libraries',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late CreateLibraryResponse _value;
    try {
      _value = CreateLibraryResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<LibraryDetailsResponse> getLibrariesId({
    required String id,
    int? page = 1,
    int? limit = 20,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page, r'limit': limit};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<LibraryDetailsResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/libraries/${id}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late LibraryDetailsResponse _value;
    try {
      _value = LibraryDetailsResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MessageResponse> deleteLibrariesId({required String id}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<MessageResponse>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/libraries/${id}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MessageResponse _value;
    try {
      _value = MessageResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MessageResponse> patchLibrariesId({
    required String id,
    required UpdateLibraryRequest body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<MessageResponse>(
      Options(method: 'PATCH', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/libraries/${id}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MessageResponse _value;
    try {
      _value = MessageResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MessageResponse> postLibrariesIdTracks({
    required String id,
    required AddTrackToLibraryRequest body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<MessageResponse>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/libraries/${id}/tracks',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MessageResponse _value;
    try {
      _value = MessageResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MessageResponse> deleteLibrariesIdTracksTrackId({
    required String id,
    required String trackId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<MessageResponse>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/libraries/${id}/tracks/${trackId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MessageResponse _value;
    try {
      _value = MessageResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _QueueClient implements QueueClient {
  _QueueClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<QueueResponse> getQueue() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<QueueResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/queue',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late QueueResponse _value;
    try {
      _value = QueueResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MessageResponse> postQueue({required SaveQueueRequest body}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<MessageResponse>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/queue',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MessageResponse _value;
    try {
      _value = MessageResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MessageResponse> deleteQueue() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<MessageResponse>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/queue',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MessageResponse _value;
    try {
      _value = MessageResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on
