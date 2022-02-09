// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_slider_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageSliderModel _$ImageSliderModelFromJson(Map<String, dynamic> json) {
  return _ImageSliderModel.fromJson(json);
}

/// @nodoc
class _$ImageSliderModelTearOff {
  const _$ImageSliderModelTearOff();

  _ImageSliderModel call(
      {String? title1,
      required String singer,
      required String by,
      String? noOfTracks,
      required String imageUrl}) {
    return _ImageSliderModel(
      title1: title1,
      singer: singer,
      by: by,
      noOfTracks: noOfTracks,
      imageUrl: imageUrl,
    );
  }

  ImageSliderModel fromJson(Map<String, Object?> json) {
    return ImageSliderModel.fromJson(json);
  }
}

/// @nodoc
const $ImageSliderModel = _$ImageSliderModelTearOff();

/// @nodoc
mixin _$ImageSliderModel {
  String? get title1 => throw _privateConstructorUsedError;
  String get singer => throw _privateConstructorUsedError;
  String get by => throw _privateConstructorUsedError;
  String? get noOfTracks => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageSliderModelCopyWith<ImageSliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSliderModelCopyWith<$Res> {
  factory $ImageSliderModelCopyWith(
          ImageSliderModel value, $Res Function(ImageSliderModel) then) =
      _$ImageSliderModelCopyWithImpl<$Res>;
  $Res call(
      {String? title1,
      String singer,
      String by,
      String? noOfTracks,
      String imageUrl});
}

/// @nodoc
class _$ImageSliderModelCopyWithImpl<$Res>
    implements $ImageSliderModelCopyWith<$Res> {
  _$ImageSliderModelCopyWithImpl(this._value, this._then);

  final ImageSliderModel _value;
  // ignore: unused_field
  final $Res Function(ImageSliderModel) _then;

  @override
  $Res call({
    Object? title1 = freezed,
    Object? singer = freezed,
    Object? by = freezed,
    Object? noOfTracks = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title1: title1 == freezed
          ? _value.title1
          : title1 // ignore: cast_nullable_to_non_nullable
              as String?,
      singer: singer == freezed
          ? _value.singer
          : singer // ignore: cast_nullable_to_non_nullable
              as String,
      by: by == freezed
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String,
      noOfTracks: noOfTracks == freezed
          ? _value.noOfTracks
          : noOfTracks // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageSliderModelCopyWith<$Res>
    implements $ImageSliderModelCopyWith<$Res> {
  factory _$ImageSliderModelCopyWith(
          _ImageSliderModel value, $Res Function(_ImageSliderModel) then) =
      __$ImageSliderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title1,
      String singer,
      String by,
      String? noOfTracks,
      String imageUrl});
}

/// @nodoc
class __$ImageSliderModelCopyWithImpl<$Res>
    extends _$ImageSliderModelCopyWithImpl<$Res>
    implements _$ImageSliderModelCopyWith<$Res> {
  __$ImageSliderModelCopyWithImpl(
      _ImageSliderModel _value, $Res Function(_ImageSliderModel) _then)
      : super(_value, (v) => _then(v as _ImageSliderModel));

  @override
  _ImageSliderModel get _value => super._value as _ImageSliderModel;

  @override
  $Res call({
    Object? title1 = freezed,
    Object? singer = freezed,
    Object? by = freezed,
    Object? noOfTracks = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_ImageSliderModel(
      title1: title1 == freezed
          ? _value.title1
          : title1 // ignore: cast_nullable_to_non_nullable
              as String?,
      singer: singer == freezed
          ? _value.singer
          : singer // ignore: cast_nullable_to_non_nullable
              as String,
      by: by == freezed
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String,
      noOfTracks: noOfTracks == freezed
          ? _value.noOfTracks
          : noOfTracks // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageSliderModel implements _ImageSliderModel {
  _$_ImageSliderModel(
      {this.title1,
      required this.singer,
      required this.by,
      this.noOfTracks,
      required this.imageUrl});

  factory _$_ImageSliderModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageSliderModelFromJson(json);

  @override
  final String? title1;
  @override
  final String singer;
  @override
  final String by;
  @override
  final String? noOfTracks;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ImageSliderModel(title1: $title1, singer: $singer, by: $by, noOfTracks: $noOfTracks, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageSliderModel &&
            const DeepCollectionEquality().equals(other.title1, title1) &&
            const DeepCollectionEquality().equals(other.singer, singer) &&
            const DeepCollectionEquality().equals(other.by, by) &&
            const DeepCollectionEquality()
                .equals(other.noOfTracks, noOfTracks) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title1),
      const DeepCollectionEquality().hash(singer),
      const DeepCollectionEquality().hash(by),
      const DeepCollectionEquality().hash(noOfTracks),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$ImageSliderModelCopyWith<_ImageSliderModel> get copyWith =>
      __$ImageSliderModelCopyWithImpl<_ImageSliderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageSliderModelToJson(this);
  }
}

abstract class _ImageSliderModel implements ImageSliderModel {
  factory _ImageSliderModel(
      {String? title1,
      required String singer,
      required String by,
      String? noOfTracks,
      required String imageUrl}) = _$_ImageSliderModel;

  factory _ImageSliderModel.fromJson(Map<String, dynamic> json) =
      _$_ImageSliderModel.fromJson;

  @override
  String? get title1;
  @override
  String get singer;
  @override
  String get by;
  @override
  String? get noOfTracks;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$ImageSliderModelCopyWith<_ImageSliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
