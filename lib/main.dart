import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';

// ==================== MODELS ====================

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String id,
    required String name,
    required String email,
    String? avatarUrl,
    @Default([]) List<UserActivity> recentActivities,
  }) = _UserProfile;
}

@freezed
class UserActivity with _$UserActivity {
  const factory UserActivity({
    required String id,
    required String title,
    required String description,
    required DateTime timestamp,
    required ActivityType type,
  }) = _UserActivity;
}

enum ActivityType {
  login('Вход в систему', Icons.login, Colors.blue),
  update('Обновление профиля', Icons.edit, Colors.orange),
  purchase('Покупка', Icons.shopping_cart, Colors.green),
  comment('Комментарий', Icons.comment, Colors.purple),
  like('Лайк', Icons.favorite, Colors.red),
  share('Поделился', Icons.share, Colors.teal);

  final String label;
  final IconData icon;
  final Color color;

  const ActivityType(this.label, this.icon, this.color);
}

// ==================== EVENTS ====================

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.load() = LoadProfileEvent;
  const factory ProfileEvent.refresh() = RefreshProfileEvent;
  const factory ProfileEvent.edit() = EditProfileEvent;
  const factory ProfileEvent.updateProfile({
    required String name,
    required String email,
  }) = UpdateProfileEvent;
  const factory ProfileEvent.changeAvatar({String? avatarUrl}) =
      ChangeAvatarEvent;
  const factory ProfileEvent.toggleNotifications({required bool enabled}) =
      ToggleNotificationsEvent;
  const factory ProfileEvent.logout() = LogoutEvent;
}

// ==================== STATES ====================

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitial;
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.loaded({required UserProfile profile}) =
      ProfileLoaded;
  const factory ProfileState.error({required String message}) = ProfileError;
  const factory ProfileState.updating({required UserProfile profile}) =
      ProfileUpdating;
}

// ==================== BLOC ====================

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(
        load: () => _onLoadProfile(emit),
        refresh: () => _onRefreshProfile(emit),
        edit: () => _onEditProfile(emit),
        updateProfile: (name, email) => _onUpdateProfile(emit, name, email),
        changeAvatar: (avatarUrl) => _onChangeAvatar(emit, avatarUrl),
        toggleNotifications: (enabled) => _onToggleNotifications(emit, enabled),
        logout: () => _onLogout(emit),
      );
    });
  }

  Future<void> _onLoadProfile(Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());

    try {
      // Симуляция загрузки данных
      await Future.delayed(const Duration(seconds: 1));

      final profile = UserProfile(
        id: '1',
        name: 'Александр Петров',
        email: 'alexander.petrov@example.com',
        avatarUrl: 'https://i.pravatar.cc/300',
        recentActivities: _generateMockActivities(),
      );

      emit(ProfileState.loaded(profile: profile));
    } catch (e) {
      emit(ProfileState.error(message: 'Ошибка загрузки профиля: $e'));
    }
  }

  Future<void> _onRefreshProfile(Emitter<ProfileState> emit) async {
    await state.whenOrNull(
      loaded: (profile) async {
        try {
          // Симуляция обновления данных
          await Future.delayed(const Duration(milliseconds: 500));

          final updatedProfile = profile.copyWith(
            recentActivities: _generateMockActivities(),
          );

          emit(ProfileState.loaded(profile: updatedProfile));
        } catch (e) {
          emit(ProfileState.error(message: 'Ошибка обновления: $e'));
        }
      },
    );
  }

  Future<void> _onEditProfile(Emitter<ProfileState> emit) async {
    // Логика для редактирования профиля
    debugPrint('Edit profile clicked');
  }

  Future<void> _onUpdateProfile(
    Emitter<ProfileState> emit,
    String name,
    String email,
  ) async {
    await state.whenOrNull(
      loaded: (profile) async {
        emit(ProfileState.updating(profile: profile));

        try {
          // Симуляция сохранения данных
          await Future.delayed(const Duration(seconds: 1));

          final updatedProfile = profile.copyWith(name: name, email: email);

          emit(ProfileState.loaded(profile: updatedProfile));
        } catch (e) {
          emit(ProfileState.error(message: 'Ошибка сохранения: $e'));
        }
      },
    );
  }

  Future<void> _onChangeAvatar(
    Emitter<ProfileState> emit,
    String? avatarUrl,
  ) async {
    await state.whenOrNull(
      loaded: (profile) async {
        emit(ProfileState.updating(profile: profile));

        try {
          // Симуляция загрузки аватара
          await Future.delayed(const Duration(milliseconds: 800));

          final updatedProfile = profile.copyWith(avatarUrl: avatarUrl);

          emit(ProfileState.loaded(profile: updatedProfile));
        } catch (e) {
          emit(ProfileState.error(message: 'Ошибка загрузки аватара: $e'));
        }
      },
    );
  }

  Future<void> _onToggleNotifications(
    Emitter<ProfileState> emit,
    bool enabled,
  ) async {
    // Симуляция переключения уведомлений
    debugPrint('Notifications toggled: $enabled');
  }

  Future<void> _onLogout(Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());

    try {
      // Симуляция выхода
      await Future.delayed(const Duration(seconds: 1));
      emit(const ProfileState.initial());
    } catch (e) {
      emit(ProfileState.error(message: 'Ошибка выхода: $e'));
    }
  }

  List<UserActivity> _generateMockActivities() {
    final now = DateTime.now();
    return [
      UserActivity(
        id: '1',
        title: 'Вход в систему',
        description: 'Вы вошли в систему с нового устройства',
        timestamp: now.subtract(const Duration(minutes: 30)),
        type: ActivityType.login,
      ),
      UserActivity(
        id: '2',
        title: 'Обновление профиля',
        description: 'Изменена контактная информация',
        timestamp: now.subtract(const Duration(hours: 2)),
        type: ActivityType.update,
      ),
      UserActivity(
        id: '3',
        title: 'Новая покупка',
        description: 'Оформлен заказ #12345',
        timestamp: now.subtract(const Duration(hours: 5)),
        type: ActivityType.purchase,
      ),
      UserActivity(
        id: '4',
        title: 'Оставлен комментарий',
        description: 'К статье "Лучшие практики Flutter"',
        timestamp: now.subtract(const Duration(days: 1)),
        type: ActivityType.comment,
      ),
      UserActivity(
        id: '5',
        title: 'Поставлен лайк',
        description: 'Понравилась публикация в блоге',
        timestamp: now.subtract(const Duration(days: 2)),
        type: ActivityType.like,
      ),
      UserActivity(
        id: '6',
        title: 'Поделился контентом',
        description: 'Статья отправлена 5 друзьям',
        timestamp: now.subtract(const Duration(days: 3)),
        type: ActivityType.share,
      ),
    ];
  }
}

// ==================== UI ====================

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc()..add(const ProfileEvent.load()),
      child: const ProfileView(),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Инициализация...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (profile) => _ProfileContent(profile: profile),
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 64, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(
                    message,
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<ProfileBloc>().add(
                        const ProfileEvent.load(),
                      );
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Повторить'),
                  ),
                ],
              ),
            ),
            updating: (profile) => Stack(
              children: [
                _ProfileContent(profile: profile),
                Container(
                  color: Colors.black.withOpacity(0.3),
                  child: const Center(
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(height: 16),
                            Text('Обновление...'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ProfileContent extends StatelessWidget {
  final UserProfile profile;

  const _ProfileContent({required this.profile});

  void _showEditDialog(BuildContext context, UserProfile profile) {
    final nameController = TextEditingController(text: profile.name);
    final emailController = TextEditingController(text: profile.email);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Редактировать профиль'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Имя',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      context.read<ProfileBloc>().add(
                        const ProfileEvent.changeAvatar(avatarUrl: null),
                      );
                      Navigator.of(dialogContext).pop();
                    },
                    icon: const Icon(Icons.delete),
                    label: const Text('Удалить фото'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // Генерируем случайный аватар
                      final randomId = DateTime.now().millisecondsSinceEpoch;
                      context.read<ProfileBloc>().add(
                        ProfileEvent.changeAvatar(
                          avatarUrl: 'https://i.pravatar.cc/300?img=$randomId',
                        ),
                      );
                      Navigator.of(dialogContext).pop();
                    },
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Сменить фото'),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Отмена'),
          ),
          FilledButton(
            onPressed: () {
              context.read<ProfileBloc>().add(
                ProfileEvent.updateProfile(
                  name: nameController.text,
                  email: emailController.text,
                ),
              );
              Navigator.of(dialogContext).pop();
            },
            child: const Text('Сохранить'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<ProfileBloc>().add(const ProfileEvent.refresh());
        await Future.delayed(const Duration(seconds: 1));
      },
      child: CustomScrollView(
        slivers: [
          // AppBar
          SliverAppBar(
            expandedHeight: 280,
            floating: false,
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue.shade600, Colors.blue.shade400],
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Avatar
                      Hero(
                        tag: 'avatar',
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 48,
                            backgroundColor: Colors.grey[200],
                            backgroundImage: profile.avatarUrl != null
                                ? NetworkImage(profile.avatarUrl!)
                                : null,
                            child: profile.avatarUrl == null
                                ? Text(
                                    profile.name.isNotEmpty
                                        ? profile.name[0].toUpperCase()
                                        : 'U',
                                    style: const TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  )
                                : null,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Name
                      Text(
                        profile.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Email
                      Text(
                        profile.email,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Edit Button
                      ElevatedButton.icon(
                        onPressed: () {
                          context.read<ProfileBloc>().add(
                            const ProfileEvent.edit(),
                          );
                          _showEditDialog(context, profile);
                        },
                        icon: const Icon(Icons.edit, size: 18),
                        label: const Text('Редактировать профиль'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blue.shade600,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              title: LayoutBuilder(
                builder: (context, constraints) {
                  final isCollapsed = constraints.maxHeight <= 80;
                  return AnimatedOpacity(
                    opacity: isCollapsed ? 1 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: Text(
                      profile.name,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
              centerTitle: true,
            ),
            actions: [
              PopupMenuButton<String>(
                icon: const Icon(Icons.settings, color: Colors.black87),
                onSelected: (value) {
                  switch (value) {
                    case 'notifications':
                      context.read<ProfileBloc>().add(
                        const ProfileEvent.toggleNotifications(enabled: true),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Уведомления включены'),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                      break;
                    case 'logout':
                      showDialog(
                        context: context,
                        builder: (dialogContext) => AlertDialog(
                          title: const Text('Выход'),
                          content: const Text('Вы уверены, что хотите выйти?'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.of(dialogContext).pop(),
                              child: const Text('Отмена'),
                            ),
                            FilledButton(
                              onPressed: () {
                                Navigator.of(dialogContext).pop();
                                context.read<ProfileBloc>().add(
                                  const ProfileEvent.logout(),
                                );
                              },
                              child: const Text('Выйти'),
                            ),
                          ],
                        ),
                      );
                      break;
                    case 'settings':
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Открыть настройки'),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                      break;
                  }
                },
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem(
                    value: 'notifications',
                    child: Row(
                      children: [
                        Icon(Icons.notifications, size: 20),
                        SizedBox(width: 12),
                        Text('Уведомления'),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'settings',
                    child: Row(
                      children: [
                        Icon(Icons.settings, size: 20),
                        SizedBox(width: 12),
                        Text('Настройки'),
                      ],
                    ),
                  ),
                  const PopupMenuDivider(),
                  const PopupMenuItem(
                    value: 'logout',
                    child: Row(
                      children: [
                        Icon(Icons.logout, size: 20, color: Colors.red),
                        SizedBox(width: 12),
                        Text('Выйти', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Statistics Cards
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  Expanded(
                    child: _StatCard(
                      title: 'Активность',
                      value: '${profile.recentActivities.length}',
                      subtitle: 'действий',
                      icon: Icons.trending_up,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _StatCard(
                      title: 'Рейтинг',
                      value: '4.8',
                      subtitle: 'из 5.0',
                      icon: Icons.star,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _StatCard(
                      title: 'Уровень',
                      value: '12',
                      subtitle: 'эксперт',
                      icon: Icons.emoji_events,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Recent Activities Header
          const SliverPadding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Последние действия',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
          ),

          // Activities List
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final activity = profile.recentActivities[index];
                return _ActivityCard(
                  activity: activity,
                  isFirst: index == 0,
                  isLast: index == profile.recentActivities.length - 1,
                );
              }, childCount: profile.recentActivities.length),
            ),
          ),

          // Bottom Padding
          const SliverPadding(
            padding: EdgeInsets.only(bottom: 24),
            sliver: SliverToBoxAdapter(child: SizedBox()),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final Color color;

  const _StatCard({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 20, color: color),
          ),
          const SizedBox(height: 12),
          Text(
            value,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            subtitle,
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey[500],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActivityCard extends StatelessWidget {
  final UserActivity activity;
  final bool isFirst;
  final bool isLast;

  const _ActivityCard({
    required this.activity,
    required this.isFirst,
    required this.isLast,
  });

  String _formatTime(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes} мин. назад';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} ч. назад';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} дн. назад';
    } else {
      return '${timestamp.day}.${timestamp.month.toString().padLeft(2, '0')}.${timestamp.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: isFirst ? 0 : 4, bottom: isLast ? 0 : 4),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: isFirst ? const Radius.circular(16) : Radius.zero,
          bottom: isLast ? const Radius.circular(16) : Radius.zero,
        ),
        elevation: 1,
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Открыть: ${activity.title}'),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          borderRadius: BorderRadius.vertical(
            top: isFirst ? const Radius.circular(16) : Radius.zero,
            bottom: isLast ? const Radius.circular(16) : Radius.zero,
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: isLast
                  ? null
                  : Border(
                      bottom: BorderSide(color: Colors.grey.shade200, width: 1),
                    ),
            ),
            child: Row(
              children: [
                // Icon
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: activity.type.color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    activity.type.icon,
                    color: activity.type.color,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                // Content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        activity.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        activity.description,
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                // Time
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      _formatTime(activity.timestamp),
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                    const SizedBox(height: 4),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey[400],
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ==================== MAIN ====================

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: const UserProfileScreen(),
    );
  }
}
