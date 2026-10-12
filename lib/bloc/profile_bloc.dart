import 'package:bloc/bloc.dart';
import '../services/profile_repository.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository repository;

  ProfileBloc({required this.repository}) : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
        fetchProfile: (e) => _onFetch(emit),
        refreshProfile: (e) => _onFetch(emit),
      );
    });
  }

  Future<void> _onFetch(Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    try {
      final profile = await repository.fetchProfile();
      emit(ProfileState.loaded(profile));
    } catch (e) {
      emit(ProfileState.error(e.toString()));
    }
  }
}
