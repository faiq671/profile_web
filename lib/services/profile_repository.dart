import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import '../models/profile_model.dart';

class ProfileRepository {
  final Dio _dio;

  ProfileRepository({Dio? dio})
      : _dio = dio ??
            Dio(
              BaseOptions(
                connectTimeout: const Duration(seconds: 10),
                receiveTimeout: const Duration(seconds: 10),
                headers: {
                  'Accept': 'application/json',
                },
              ),
            );

  /// Fetches the profile data via Dio HTTP GET with asset fallback.
  Future<ProfileData> fetchProfile({String endpoint = 'data/profile_data.json'}) async {
    try {
      final response = await _dio.get(endpoint);
      dynamic data = response.data;
      if (data is String) {
        data = jsonDecode(data);
      }
      if (data is Map<String, dynamic>) {
        return ProfileData.fromJson(data);
      }
      throw Exception('Unexpected data format from $endpoint');
    } catch (e) {
      // Graceful fallback to bundled asset in case of network or local path issues
      try {
        final localJsonString =
            await rootBundle.loadString('assets/data/profile_data.json');
        final localData = jsonDecode(localJsonString) as Map<String, dynamic>;
        return ProfileData.fromJson(localData);
      } catch (assetError) {
        throw Exception(
            'Gagal memuat data profil melalui Dio ($e) maupun asset lokal ($assetError)');
      }
    }
  }
}
