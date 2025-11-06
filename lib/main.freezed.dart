// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserProfile {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  List<UserActivity> get recentActivities => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
    UserProfile value,
    $Res Function(UserProfile) then,
  ) = _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call({
    String id,
    String name,
    String email,
    String? avatarUrl,
    List<UserActivity> recentActivities,
  });
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? avatarUrl = freezed,
    Object? recentActivities = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            recentActivities: null == recentActivities
                ? _value.recentActivities
                : recentActivities // ignore: cast_nullable_to_non_nullable
                      as List<UserActivity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
    _$UserProfileImpl value,
    $Res Function(_$UserProfileImpl) then,
  ) = __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String email,
    String? avatarUrl,
    List<UserActivity> recentActivities,
  });
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
    _$UserProfileImpl _value,
    $Res Function(_$UserProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? avatarUrl = freezed,
    Object? recentActivities = null,
  }) {
    return _then(
      _$UserProfileImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        recentActivities: null == recentActivities
            ? _value._recentActivities
            : recentActivities // ignore: cast_nullable_to_non_nullable
                  as List<UserActivity>,
      ),
    );
  }
}

/// @nodoc

class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl({
    required this.id,
    required this.name,
    required this.email,
    this.avatarUrl,
    final List<UserActivity> recentActivities = const [],
  }) : _recentActivities = recentActivities;

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? avatarUrl;
  final List<UserActivity> _recentActivities;
  @override
  @JsonKey()
  List<UserActivity> get recentActivities {
    if (_recentActivities is EqualUnmodifiableListView)
      return _recentActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentActivities);
  }

  @override
  String toString() {
    return 'UserProfile(id: $id, name: $name, email: $email, avatarUrl: $avatarUrl, recentActivities: $recentActivities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality().equals(
              other._recentActivities,
              _recentActivities,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    email,
    avatarUrl,
    const DeepCollectionEquality().hash(_recentActivities),
  );

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile({
    required final String id,
    required final String name,
    required final String email,
    final String? avatarUrl,
    final List<UserActivity> recentActivities,
  }) = _$UserProfileImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String? get avatarUrl;
  @override
  List<UserActivity> get recentActivities;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserActivity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  ActivityType get type => throw _privateConstructorUsedError;

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserActivityCopyWith<UserActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActivityCopyWith<$Res> {
  factory $UserActivityCopyWith(
    UserActivity value,
    $Res Function(UserActivity) then,
  ) = _$UserActivityCopyWithImpl<$Res, UserActivity>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    DateTime timestamp,
    ActivityType type,
  });
}

/// @nodoc
class _$UserActivityCopyWithImpl<$Res, $Val extends UserActivity>
    implements $UserActivityCopyWith<$Res> {
  _$UserActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? timestamp = null,
    Object? type = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as ActivityType,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserActivityImplCopyWith<$Res>
    implements $UserActivityCopyWith<$Res> {
  factory _$$UserActivityImplCopyWith(
    _$UserActivityImpl value,
    $Res Function(_$UserActivityImpl) then,
  ) = __$$UserActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    DateTime timestamp,
    ActivityType type,
  });
}

/// @nodoc
class __$$UserActivityImplCopyWithImpl<$Res>
    extends _$UserActivityCopyWithImpl<$Res, _$UserActivityImpl>
    implements _$$UserActivityImplCopyWith<$Res> {
  __$$UserActivityImplCopyWithImpl(
    _$UserActivityImpl _value,
    $Res Function(_$UserActivityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? timestamp = null,
    Object? type = null,
  }) {
    return _then(
      _$UserActivityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ActivityType,
      ),
    );
  }
}

/// @nodoc

class _$UserActivityImpl implements _UserActivity {
  const _$UserActivityImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.timestamp,
    required this.type,
  });

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime timestamp;
  @override
  final ActivityType type;

  @override
  String toString() {
    return 'UserActivity(id: $id, title: $title, description: $description, timestamp: $timestamp, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserActivityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, timestamp, type);

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserActivityImplCopyWith<_$UserActivityImpl> get copyWith =>
      __$$UserActivityImplCopyWithImpl<_$UserActivityImpl>(this, _$identity);
}

abstract class _UserActivity implements UserActivity {
  const factory _UserActivity({
    required final String id,
    required final String title,
    required final String description,
    required final DateTime timestamp,
    required final ActivityType type,
  }) = _$UserActivityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get timestamp;
  @override
  ActivityType get type;

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserActivityImplCopyWith<_$UserActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function() edit,
    required TResult Function(String name, String email) updateProfile,
    required TResult Function(String? avatarUrl) changeAvatar,
    required TResult Function(bool enabled) toggleNotifications,
    required TResult Function() logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function()? edit,
    TResult? Function(String name, String email)? updateProfile,
    TResult? Function(String? avatarUrl)? changeAvatar,
    TResult? Function(bool enabled)? toggleNotifications,
    TResult? Function()? logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function()? edit,
    TResult Function(String name, String email)? updateProfile,
    TResult Function(String? avatarUrl)? changeAvatar,
    TResult Function(bool enabled)? toggleNotifications,
    TResult Function()? logout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) load,
    required TResult Function(RefreshProfileEvent value) refresh,
    required TResult Function(EditProfileEvent value) edit,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangeAvatarEvent value) changeAvatar,
    required TResult Function(ToggleNotificationsEvent value)
    toggleNotifications,
    required TResult Function(LogoutEvent value) logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? load,
    TResult? Function(RefreshProfileEvent value)? refresh,
    TResult? Function(EditProfileEvent value)? edit,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangeAvatarEvent value)? changeAvatar,
    TResult? Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult? Function(LogoutEvent value)? logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? load,
    TResult Function(RefreshProfileEvent value)? refresh,
    TResult Function(EditProfileEvent value)? edit,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangeAvatarEvent value)? changeAvatar,
    TResult Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
    ProfileEvent value,
    $Res Function(ProfileEvent) then,
  ) = _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadProfileEventImplCopyWith<$Res> {
  factory _$$LoadProfileEventImplCopyWith(
    _$LoadProfileEventImpl value,
    $Res Function(_$LoadProfileEventImpl) then,
  ) = __$$LoadProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LoadProfileEventImpl>
    implements _$$LoadProfileEventImplCopyWith<$Res> {
  __$$LoadProfileEventImplCopyWithImpl(
    _$LoadProfileEventImpl _value,
    $Res Function(_$LoadProfileEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadProfileEventImpl implements LoadProfileEvent {
  const _$LoadProfileEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function() edit,
    required TResult Function(String name, String email) updateProfile,
    required TResult Function(String? avatarUrl) changeAvatar,
    required TResult Function(bool enabled) toggleNotifications,
    required TResult Function() logout,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function()? edit,
    TResult? Function(String name, String email)? updateProfile,
    TResult? Function(String? avatarUrl)? changeAvatar,
    TResult? Function(bool enabled)? toggleNotifications,
    TResult? Function()? logout,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function()? edit,
    TResult Function(String name, String email)? updateProfile,
    TResult Function(String? avatarUrl)? changeAvatar,
    TResult Function(bool enabled)? toggleNotifications,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) load,
    required TResult Function(RefreshProfileEvent value) refresh,
    required TResult Function(EditProfileEvent value) edit,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangeAvatarEvent value) changeAvatar,
    required TResult Function(ToggleNotificationsEvent value)
    toggleNotifications,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? load,
    TResult? Function(RefreshProfileEvent value)? refresh,
    TResult? Function(EditProfileEvent value)? edit,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangeAvatarEvent value)? changeAvatar,
    TResult? Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? load,
    TResult Function(RefreshProfileEvent value)? refresh,
    TResult Function(EditProfileEvent value)? edit,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangeAvatarEvent value)? changeAvatar,
    TResult Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadProfileEvent implements ProfileEvent {
  const factory LoadProfileEvent() = _$LoadProfileEventImpl;
}

/// @nodoc
abstract class _$$RefreshProfileEventImplCopyWith<$Res> {
  factory _$$RefreshProfileEventImplCopyWith(
    _$RefreshProfileEventImpl value,
    $Res Function(_$RefreshProfileEventImpl) then,
  ) = __$$RefreshProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$RefreshProfileEventImpl>
    implements _$$RefreshProfileEventImplCopyWith<$Res> {
  __$$RefreshProfileEventImplCopyWithImpl(
    _$RefreshProfileEventImpl _value,
    $Res Function(_$RefreshProfileEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshProfileEventImpl implements RefreshProfileEvent {
  const _$RefreshProfileEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function() edit,
    required TResult Function(String name, String email) updateProfile,
    required TResult Function(String? avatarUrl) changeAvatar,
    required TResult Function(bool enabled) toggleNotifications,
    required TResult Function() logout,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function()? edit,
    TResult? Function(String name, String email)? updateProfile,
    TResult? Function(String? avatarUrl)? changeAvatar,
    TResult? Function(bool enabled)? toggleNotifications,
    TResult? Function()? logout,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function()? edit,
    TResult Function(String name, String email)? updateProfile,
    TResult Function(String? avatarUrl)? changeAvatar,
    TResult Function(bool enabled)? toggleNotifications,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) load,
    required TResult Function(RefreshProfileEvent value) refresh,
    required TResult Function(EditProfileEvent value) edit,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangeAvatarEvent value) changeAvatar,
    required TResult Function(ToggleNotificationsEvent value)
    toggleNotifications,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? load,
    TResult? Function(RefreshProfileEvent value)? refresh,
    TResult? Function(EditProfileEvent value)? edit,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangeAvatarEvent value)? changeAvatar,
    TResult? Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? load,
    TResult Function(RefreshProfileEvent value)? refresh,
    TResult Function(EditProfileEvent value)? edit,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangeAvatarEvent value)? changeAvatar,
    TResult Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshProfileEvent implements ProfileEvent {
  const factory RefreshProfileEvent() = _$RefreshProfileEventImpl;
}

/// @nodoc
abstract class _$$EditProfileEventImplCopyWith<$Res> {
  factory _$$EditProfileEventImplCopyWith(
    _$EditProfileEventImpl value,
    $Res Function(_$EditProfileEventImpl) then,
  ) = __$$EditProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$EditProfileEventImpl>
    implements _$$EditProfileEventImplCopyWith<$Res> {
  __$$EditProfileEventImplCopyWithImpl(
    _$EditProfileEventImpl _value,
    $Res Function(_$EditProfileEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditProfileEventImpl implements EditProfileEvent {
  const _$EditProfileEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.edit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function() edit,
    required TResult Function(String name, String email) updateProfile,
    required TResult Function(String? avatarUrl) changeAvatar,
    required TResult Function(bool enabled) toggleNotifications,
    required TResult Function() logout,
  }) {
    return edit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function()? edit,
    TResult? Function(String name, String email)? updateProfile,
    TResult? Function(String? avatarUrl)? changeAvatar,
    TResult? Function(bool enabled)? toggleNotifications,
    TResult? Function()? logout,
  }) {
    return edit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function()? edit,
    TResult Function(String name, String email)? updateProfile,
    TResult Function(String? avatarUrl)? changeAvatar,
    TResult Function(bool enabled)? toggleNotifications,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) load,
    required TResult Function(RefreshProfileEvent value) refresh,
    required TResult Function(EditProfileEvent value) edit,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangeAvatarEvent value) changeAvatar,
    required TResult Function(ToggleNotificationsEvent value)
    toggleNotifications,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? load,
    TResult? Function(RefreshProfileEvent value)? refresh,
    TResult? Function(EditProfileEvent value)? edit,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangeAvatarEvent value)? changeAvatar,
    TResult? Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? load,
    TResult Function(RefreshProfileEvent value)? refresh,
    TResult Function(EditProfileEvent value)? edit,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangeAvatarEvent value)? changeAvatar,
    TResult Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class EditProfileEvent implements ProfileEvent {
  const factory EditProfileEvent() = _$EditProfileEventImpl;
}

/// @nodoc
abstract class _$$UpdateProfileEventImplCopyWith<$Res> {
  factory _$$UpdateProfileEventImplCopyWith(
    _$UpdateProfileEventImpl value,
    $Res Function(_$UpdateProfileEventImpl) then,
  ) = __$$UpdateProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$UpdateProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfileEventImpl>
    implements _$$UpdateProfileEventImplCopyWith<$Res> {
  __$$UpdateProfileEventImplCopyWithImpl(
    _$UpdateProfileEventImpl _value,
    $Res Function(_$UpdateProfileEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? email = null}) {
    return _then(
      _$UpdateProfileEventImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdateProfileEventImpl implements UpdateProfileEvent {
  const _$UpdateProfileEventImpl({required this.name, required this.email});

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'ProfileEvent.updateProfile(name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileEventImplCopyWith<_$UpdateProfileEventImpl> get copyWith =>
      __$$UpdateProfileEventImplCopyWithImpl<_$UpdateProfileEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function() edit,
    required TResult Function(String name, String email) updateProfile,
    required TResult Function(String? avatarUrl) changeAvatar,
    required TResult Function(bool enabled) toggleNotifications,
    required TResult Function() logout,
  }) {
    return updateProfile(name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function()? edit,
    TResult? Function(String name, String email)? updateProfile,
    TResult? Function(String? avatarUrl)? changeAvatar,
    TResult? Function(bool enabled)? toggleNotifications,
    TResult? Function()? logout,
  }) {
    return updateProfile?.call(name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function()? edit,
    TResult Function(String name, String email)? updateProfile,
    TResult Function(String? avatarUrl)? changeAvatar,
    TResult Function(bool enabled)? toggleNotifications,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) load,
    required TResult Function(RefreshProfileEvent value) refresh,
    required TResult Function(EditProfileEvent value) edit,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangeAvatarEvent value) changeAvatar,
    required TResult Function(ToggleNotificationsEvent value)
    toggleNotifications,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? load,
    TResult? Function(RefreshProfileEvent value)? refresh,
    TResult? Function(EditProfileEvent value)? edit,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangeAvatarEvent value)? changeAvatar,
    TResult? Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? load,
    TResult Function(RefreshProfileEvent value)? refresh,
    TResult Function(EditProfileEvent value)? edit,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangeAvatarEvent value)? changeAvatar,
    TResult Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileEvent implements ProfileEvent {
  const factory UpdateProfileEvent({
    required final String name,
    required final String email,
  }) = _$UpdateProfileEventImpl;

  String get name;
  String get email;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileEventImplCopyWith<_$UpdateProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAvatarEventImplCopyWith<$Res> {
  factory _$$ChangeAvatarEventImplCopyWith(
    _$ChangeAvatarEventImpl value,
    $Res Function(_$ChangeAvatarEventImpl) then,
  ) = __$$ChangeAvatarEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? avatarUrl});
}

/// @nodoc
class __$$ChangeAvatarEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ChangeAvatarEventImpl>
    implements _$$ChangeAvatarEventImplCopyWith<$Res> {
  __$$ChangeAvatarEventImplCopyWithImpl(
    _$ChangeAvatarEventImpl _value,
    $Res Function(_$ChangeAvatarEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? avatarUrl = freezed}) {
    return _then(
      _$ChangeAvatarEventImpl(
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ChangeAvatarEventImpl implements ChangeAvatarEvent {
  const _$ChangeAvatarEventImpl({this.avatarUrl});

  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'ProfileEvent.changeAvatar(avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAvatarEventImpl &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatarUrl);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAvatarEventImplCopyWith<_$ChangeAvatarEventImpl> get copyWith =>
      __$$ChangeAvatarEventImplCopyWithImpl<_$ChangeAvatarEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function() edit,
    required TResult Function(String name, String email) updateProfile,
    required TResult Function(String? avatarUrl) changeAvatar,
    required TResult Function(bool enabled) toggleNotifications,
    required TResult Function() logout,
  }) {
    return changeAvatar(avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function()? edit,
    TResult? Function(String name, String email)? updateProfile,
    TResult? Function(String? avatarUrl)? changeAvatar,
    TResult? Function(bool enabled)? toggleNotifications,
    TResult? Function()? logout,
  }) {
    return changeAvatar?.call(avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function()? edit,
    TResult Function(String name, String email)? updateProfile,
    TResult Function(String? avatarUrl)? changeAvatar,
    TResult Function(bool enabled)? toggleNotifications,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (changeAvatar != null) {
      return changeAvatar(avatarUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) load,
    required TResult Function(RefreshProfileEvent value) refresh,
    required TResult Function(EditProfileEvent value) edit,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangeAvatarEvent value) changeAvatar,
    required TResult Function(ToggleNotificationsEvent value)
    toggleNotifications,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return changeAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? load,
    TResult? Function(RefreshProfileEvent value)? refresh,
    TResult? Function(EditProfileEvent value)? edit,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangeAvatarEvent value)? changeAvatar,
    TResult? Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return changeAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? load,
    TResult Function(RefreshProfileEvent value)? refresh,
    TResult Function(EditProfileEvent value)? edit,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangeAvatarEvent value)? changeAvatar,
    TResult Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (changeAvatar != null) {
      return changeAvatar(this);
    }
    return orElse();
  }
}

abstract class ChangeAvatarEvent implements ProfileEvent {
  const factory ChangeAvatarEvent({final String? avatarUrl}) =
      _$ChangeAvatarEventImpl;

  String? get avatarUrl;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAvatarEventImplCopyWith<_$ChangeAvatarEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleNotificationsEventImplCopyWith<$Res> {
  factory _$$ToggleNotificationsEventImplCopyWith(
    _$ToggleNotificationsEventImpl value,
    $Res Function(_$ToggleNotificationsEventImpl) then,
  ) = __$$ToggleNotificationsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class __$$ToggleNotificationsEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ToggleNotificationsEventImpl>
    implements _$$ToggleNotificationsEventImplCopyWith<$Res> {
  __$$ToggleNotificationsEventImplCopyWithImpl(
    _$ToggleNotificationsEventImpl _value,
    $Res Function(_$ToggleNotificationsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? enabled = null}) {
    return _then(
      _$ToggleNotificationsEventImpl(
        enabled: null == enabled
            ? _value.enabled
            : enabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ToggleNotificationsEventImpl implements ToggleNotificationsEvent {
  const _$ToggleNotificationsEventImpl({required this.enabled});

  @override
  final bool enabled;

  @override
  String toString() {
    return 'ProfileEvent.toggleNotifications(enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleNotificationsEventImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleNotificationsEventImplCopyWith<_$ToggleNotificationsEventImpl>
  get copyWith =>
      __$$ToggleNotificationsEventImplCopyWithImpl<
        _$ToggleNotificationsEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function() edit,
    required TResult Function(String name, String email) updateProfile,
    required TResult Function(String? avatarUrl) changeAvatar,
    required TResult Function(bool enabled) toggleNotifications,
    required TResult Function() logout,
  }) {
    return toggleNotifications(enabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function()? edit,
    TResult? Function(String name, String email)? updateProfile,
    TResult? Function(String? avatarUrl)? changeAvatar,
    TResult? Function(bool enabled)? toggleNotifications,
    TResult? Function()? logout,
  }) {
    return toggleNotifications?.call(enabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function()? edit,
    TResult Function(String name, String email)? updateProfile,
    TResult Function(String? avatarUrl)? changeAvatar,
    TResult Function(bool enabled)? toggleNotifications,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (toggleNotifications != null) {
      return toggleNotifications(enabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) load,
    required TResult Function(RefreshProfileEvent value) refresh,
    required TResult Function(EditProfileEvent value) edit,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangeAvatarEvent value) changeAvatar,
    required TResult Function(ToggleNotificationsEvent value)
    toggleNotifications,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return toggleNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? load,
    TResult? Function(RefreshProfileEvent value)? refresh,
    TResult? Function(EditProfileEvent value)? edit,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangeAvatarEvent value)? changeAvatar,
    TResult? Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return toggleNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? load,
    TResult Function(RefreshProfileEvent value)? refresh,
    TResult Function(EditProfileEvent value)? edit,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangeAvatarEvent value)? changeAvatar,
    TResult Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (toggleNotifications != null) {
      return toggleNotifications(this);
    }
    return orElse();
  }
}

abstract class ToggleNotificationsEvent implements ProfileEvent {
  const factory ToggleNotificationsEvent({required final bool enabled}) =
      _$ToggleNotificationsEventImpl;

  bool get enabled;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleNotificationsEventImplCopyWith<_$ToggleNotificationsEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutEventImplCopyWith<$Res> {
  factory _$$LogoutEventImplCopyWith(
    _$LogoutEventImpl value,
    $Res Function(_$LogoutEventImpl) then,
  ) = __$$LogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LogoutEventImpl>
    implements _$$LogoutEventImplCopyWith<$Res> {
  __$$LogoutEventImplCopyWithImpl(
    _$LogoutEventImpl _value,
    $Res Function(_$LogoutEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutEventImpl implements LogoutEvent {
  const _$LogoutEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function() edit,
    required TResult Function(String name, String email) updateProfile,
    required TResult Function(String? avatarUrl) changeAvatar,
    required TResult Function(bool enabled) toggleNotifications,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function()? edit,
    TResult? Function(String name, String email)? updateProfile,
    TResult? Function(String? avatarUrl)? changeAvatar,
    TResult? Function(bool enabled)? toggleNotifications,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function()? edit,
    TResult Function(String name, String email)? updateProfile,
    TResult Function(String? avatarUrl)? changeAvatar,
    TResult Function(bool enabled)? toggleNotifications,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) load,
    required TResult Function(RefreshProfileEvent value) refresh,
    required TResult Function(EditProfileEvent value) edit,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangeAvatarEvent value) changeAvatar,
    required TResult Function(ToggleNotificationsEvent value)
    toggleNotifications,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? load,
    TResult? Function(RefreshProfileEvent value)? refresh,
    TResult? Function(EditProfileEvent value)? edit,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangeAvatarEvent value)? changeAvatar,
    TResult? Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? load,
    TResult Function(RefreshProfileEvent value)? refresh,
    TResult Function(EditProfileEvent value)? edit,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangeAvatarEvent value)? changeAvatar,
    TResult Function(ToggleNotificationsEvent value)? toggleNotifications,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements ProfileEvent {
  const factory LogoutEvent() = _$LogoutEventImpl;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserProfile profile) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserProfile profile) updating,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserProfile profile)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserProfile profile)? updating,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserProfile profile)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserProfile profile)? updating,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileUpdating value) updating,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileUpdating value)? updating,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileUpdating value)? updating,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
    ProfileState value,
    $Res Function(ProfileState) then,
  ) = _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileInitialImplCopyWith<$Res> {
  factory _$$ProfileInitialImplCopyWith(
    _$ProfileInitialImpl value,
    $Res Function(_$ProfileInitialImpl) then,
  ) = __$$ProfileInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileInitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileInitialImpl>
    implements _$$ProfileInitialImplCopyWith<$Res> {
  __$$ProfileInitialImplCopyWithImpl(
    _$ProfileInitialImpl _value,
    $Res Function(_$ProfileInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileInitialImpl implements ProfileInitial {
  const _$ProfileInitialImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserProfile profile) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserProfile profile) updating,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserProfile profile)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserProfile profile)? updating,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserProfile profile)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserProfile profile)? updating,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileUpdating value) updating,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileUpdating value)? updating,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileUpdating value)? updating,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileInitial implements ProfileState {
  const factory ProfileInitial() = _$ProfileInitialImpl;
}

/// @nodoc
abstract class _$$ProfileLoadingImplCopyWith<$Res> {
  factory _$$ProfileLoadingImplCopyWith(
    _$ProfileLoadingImpl value,
    $Res Function(_$ProfileLoadingImpl) then,
  ) = __$$ProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadingImpl>
    implements _$$ProfileLoadingImplCopyWith<$Res> {
  __$$ProfileLoadingImplCopyWithImpl(
    _$ProfileLoadingImpl _value,
    $Res Function(_$ProfileLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLoadingImpl implements ProfileLoading {
  const _$ProfileLoadingImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserProfile profile) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserProfile profile) updating,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserProfile profile)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserProfile profile)? updating,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserProfile profile)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserProfile profile)? updating,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileUpdating value) updating,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileUpdating value)? updating,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileUpdating value)? updating,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$ProfileLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileLoadedImplCopyWith<$Res> {
  factory _$$ProfileLoadedImplCopyWith(
    _$ProfileLoadedImpl value,
    $Res Function(_$ProfileLoadedImpl) then,
  ) = __$$ProfileLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfile profile});

  $UserProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$ProfileLoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadedImpl>
    implements _$$ProfileLoadedImplCopyWith<$Res> {
  __$$ProfileLoadedImplCopyWithImpl(
    _$ProfileLoadedImpl _value,
    $Res Function(_$ProfileLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? profile = null}) {
    return _then(
      _$ProfileLoadedImpl(
        profile: null == profile
            ? _value.profile
            : profile // ignore: cast_nullable_to_non_nullable
                  as UserProfile,
      ),
    );
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get profile {
    return $UserProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$ProfileLoadedImpl implements ProfileLoaded {
  const _$ProfileLoadedImpl({required this.profile});

  @override
  final UserProfile profile;

  @override
  String toString() {
    return 'ProfileState.loaded(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadedImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileLoadedImplCopyWith<_$ProfileLoadedImpl> get copyWith =>
      __$$ProfileLoadedImplCopyWithImpl<_$ProfileLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserProfile profile) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserProfile profile) updating,
  }) {
    return loaded(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserProfile profile)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserProfile profile)? updating,
  }) {
    return loaded?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserProfile profile)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserProfile profile)? updating,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileUpdating value) updating,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileUpdating value)? updating,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileUpdating value)? updating,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoaded implements ProfileState {
  const factory ProfileLoaded({required final UserProfile profile}) =
      _$ProfileLoadedImpl;

  UserProfile get profile;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileLoadedImplCopyWith<_$ProfileLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileErrorImplCopyWith<$Res> {
  factory _$$ProfileErrorImplCopyWith(
    _$ProfileErrorImpl value,
    $Res Function(_$ProfileErrorImpl) then,
  ) = __$$ProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProfileErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileErrorImpl>
    implements _$$ProfileErrorImplCopyWith<$Res> {
  __$$ProfileErrorImplCopyWithImpl(
    _$ProfileErrorImpl _value,
    $Res Function(_$ProfileErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ProfileErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ProfileErrorImpl implements ProfileError {
  const _$ProfileErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      __$$ProfileErrorImplCopyWithImpl<_$ProfileErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserProfile profile) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserProfile profile) updating,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserProfile profile)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserProfile profile)? updating,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserProfile profile)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserProfile profile)? updating,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileUpdating value) updating,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileUpdating value)? updating,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileUpdating value)? updating,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileError implements ProfileState {
  const factory ProfileError({required final String message}) =
      _$ProfileErrorImpl;

  String get message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileUpdatingImplCopyWith<$Res> {
  factory _$$ProfileUpdatingImplCopyWith(
    _$ProfileUpdatingImpl value,
    $Res Function(_$ProfileUpdatingImpl) then,
  ) = __$$ProfileUpdatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfile profile});

  $UserProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$ProfileUpdatingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileUpdatingImpl>
    implements _$$ProfileUpdatingImplCopyWith<$Res> {
  __$$ProfileUpdatingImplCopyWithImpl(
    _$ProfileUpdatingImpl _value,
    $Res Function(_$ProfileUpdatingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? profile = null}) {
    return _then(
      _$ProfileUpdatingImpl(
        profile: null == profile
            ? _value.profile
            : profile // ignore: cast_nullable_to_non_nullable
                  as UserProfile,
      ),
    );
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get profile {
    return $UserProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$ProfileUpdatingImpl implements ProfileUpdating {
  const _$ProfileUpdatingImpl({required this.profile});

  @override
  final UserProfile profile;

  @override
  String toString() {
    return 'ProfileState.updating(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdatingImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUpdatingImplCopyWith<_$ProfileUpdatingImpl> get copyWith =>
      __$$ProfileUpdatingImplCopyWithImpl<_$ProfileUpdatingImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserProfile profile) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserProfile profile) updating,
  }) {
    return updating(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserProfile profile)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserProfile profile)? updating,
  }) {
    return updating?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserProfile profile)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserProfile profile)? updating,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileUpdating value) updating,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileUpdating value)? updating,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileUpdating value)? updating,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class ProfileUpdating implements ProfileState {
  const factory ProfileUpdating({required final UserProfile profile}) =
      _$ProfileUpdatingImpl;

  UserProfile get profile;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileUpdatingImplCopyWith<_$ProfileUpdatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
