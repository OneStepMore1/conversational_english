import '../api/profile_api.dart';
import '../models/active_models_model.dart';
import '../models/user_model.dart';
import '../models/view_state_model.dart';
import 'base_controller.dart';

class CProfile extends CBase {
  late final ProfileApi _profileApi = ProfileApi();

  ViewState userViewState = ViewState.initial;
  MUserInfo userInfo = MUserInfo();
  getUserInfo() async {
    userViewState = ViewState.loading;
    notify();
    try {
      userInfo = await _profileApi.userInfoApi();
      userViewState = ViewState.loaded;
      await getActiveModels();
    } catch (e, s) {
      userViewState = ViewState.error;
      setException(
        error: e,
        stackTrace: s,
        setExceptionOnly: true,
      );
    }
    notify();
  }

  ViewState activeModelViewState = ViewState.initial;
  MActiveModels activeModels = MActiveModels();
  getActiveModels() async {
    activeModelViewState = ViewState.loading;
    notify();
    try {
      activeModels = await _profileApi.activeModelsApi();
      setActiveMode(activeModels.data?.first ?? MActiveModel());
      activeModelViewState = ViewState.loaded;
    } catch (e, s) {
      activeModelViewState = ViewState.error;
      setException(
        error: e,
        stackTrace: s,
        setExceptionOnly: true,
      );
    }
    notify();
  }

  MActiveModel selectedActiveModel = MActiveModel();
  setActiveMode(MActiveModel value) {
    selectedActiveModel = value;
    notify();
  }

  notify() {
    notifyListeners();
  }
}
