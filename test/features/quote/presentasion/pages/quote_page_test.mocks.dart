// Mocks generated by Mockito 5.2.0 from annotations
// in orodomop_app/test/features/news/presentasion/pages/news_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;
import 'dart:ui' as _i7;

import 'package:mockito/mockito.dart' as _i1;
import 'package:orodomop_app/common/state_enum.dart' as _i5;
import 'package:orodomop_app/domain/entities/quote.dart' as _i4;
import 'package:orodomop_app/domain/usecases/get_quote.dart' as _i2;
import 'package:orodomop_app/presentation/provider/quote_list_notifier.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeGetQuote_0 extends _i1.Fake implements _i2.GetQuote {}

/// A class which mocks [QuoteListNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockQuoteListNotifier extends _i1.Mock implements _i3.QuoteListNotifier {
  MockQuoteListNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetQuote get getQuote => (super.noSuchMethod(Invocation.getter(#getQuote),
      returnValue: _FakeGetQuote_0()) as _i2.GetQuote);
  @override
  List<_i4.Quote> get quoteList =>
      (super.noSuchMethod(Invocation.getter(#quoteList),
          returnValue: <_i4.Quote>[]) as List<_i4.Quote>);
  @override
  _i5.RequestState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _i5.RequestState.Empty) as _i5.RequestState);
  @override
  String get message =>
      (super.noSuchMethod(Invocation.getter(#message), returnValue: '')
          as String);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i6.Future<void> fetchGetQuote() =>
      (super.noSuchMethod(Invocation.method(#fetchGetQuote, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  void addListener(_i7.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i7.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
