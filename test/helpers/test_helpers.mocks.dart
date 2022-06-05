// Mocks generated by Mockito 5.2.0 from annotations
// in orodomop_app/test/helpers/test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;
import 'dart:convert' as _i10;
import 'dart:typed_data' as _i11;

import 'package:dartz/dartz.dart' as _i2;
import 'package:http/http.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:orodomop_app/common/failure.dart' as _i6;
import 'package:orodomop_app/data/data_sources/news_remote_data_source.dart'
    as _i8;
import 'package:orodomop_app/data/models/news_model.dart' as _i9;
import 'package:orodomop_app/domain/entities/news.dart' as _i7;
import 'package:orodomop_app/domain/repositorys/news_repository.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeResponse_1 extends _i1.Fake implements _i3.Response {}

class _FakeStreamedResponse_2 extends _i1.Fake implements _i3.StreamedResponse {
}

/// A class which mocks [NewsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockNewsRepository extends _i1.Mock implements _i4.NewsRepository {
  MockNewsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.Either<_i6.Failure, List<_i7.News>>> getNews() =>
      (super.noSuchMethod(Invocation.method(#getNews, []),
          returnValue: Future<_i2.Either<_i6.Failure, List<_i7.News>>>.value(
              _FakeEither_0<_i6.Failure, List<_i7.News>>())) as _i5
          .Future<_i2.Either<_i6.Failure, List<_i7.News>>>);
  @override
  _i5.Future<_i2.Either<_i6.Failure, _i7.News>> getNewsDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#getNewsDetail, [id]),
              returnValue: Future<_i2.Either<_i6.Failure, _i7.News>>.value(
                  _FakeEither_0<_i6.Failure, _i7.News>()))
          as _i5.Future<_i2.Either<_i6.Failure, _i7.News>>);
}

/// A class which mocks [NewsRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockNewsRemoteDataSource extends _i1.Mock
    implements _i8.NewsRemoteDataSource {
  MockNewsRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<List<_i9.NewsModel>> getNews() =>
      (super.noSuchMethod(Invocation.method(#getNews, []),
              returnValue: Future<List<_i9.NewsModel>>.value(<_i9.NewsModel>[]))
          as _i5.Future<List<_i9.NewsModel>>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i3.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i3.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i5.Future<_i3.Response>);
  @override
  _i5.Future<_i3.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i5.Future<_i3.Response>);
  @override
  _i5.Future<_i3.Response> post(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i10.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i5.Future<_i3.Response>);
  @override
  _i5.Future<_i3.Response> put(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i10.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i5.Future<_i3.Response>);
  @override
  _i5.Future<_i3.Response> patch(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i10.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i5.Future<_i3.Response>);
  @override
  _i5.Future<_i3.Response> delete(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i10.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i5.Future<_i3.Response>);
  @override
  _i5.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i5.Future<String>);
  @override
  _i5.Future<_i11.Uint8List> readBytes(Uri? url,
          {Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#readBytes, [url], {#headers: headers}),
              returnValue: Future<_i11.Uint8List>.value(_i11.Uint8List(0)))
          as _i5.Future<_i11.Uint8List>);
  @override
  _i5.Future<_i3.StreamedResponse> send(_i3.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
              returnValue:
                  Future<_i3.StreamedResponse>.value(_FakeStreamedResponse_2()))
          as _i5.Future<_i3.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
}
