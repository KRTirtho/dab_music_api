import 'dart:convert';

import 'package:dab_music_api/src/dab_music.dart';
import 'package:dio/dio.dart';

void main() async {
  final dab = DabMusicApiClient(Dio(), baseUrl: "https://dab.yeet.su/api");
  final res = await dab.music.getSearch(q: "The Craving");

  print(jsonEncode(res));
}
