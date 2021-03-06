import 'package:aldea/locator.dart';
import 'package:aldea/models/community_request.dart';
import 'package:aldea/services/firestore_service.dart';
import 'package:aldea/viewmodels/base_model.dart';

class RequestsViewModel extends BaseModel {
  final FirestoreService _firestoreService = locator<FirestoreService>();
  final Map arguments;
  List<CommunityRequest> requests = [];
  String communityId;

  RequestsViewModel(this.arguments);

  void setArguments() {
    requests = arguments["requests"];
    communityId = arguments["uid"];
  }

  Future removeRequest(String uid, int index) {
    _firestoreService.removeRequest(communityId, uid);
    requests.removeAt(index);
    _firestoreService.removeRequestUser(communityId, uid);
    notifyListeners();
  }

  Future acceptRequest(String uid, int index) {
    _firestoreService
        .addCommunityFromRequest(uid, communityId)
        .then((value) => print("after frist function"));

    _firestoreService
        .followCommunity(uid, communityId)
        .then((value) => print("after 2nd function"));

    _firestoreService.removeRequestUser(communityId, uid);
    _firestoreService.removeRequest(communityId, uid);

    requests.removeAt(index);
    notifyListeners();
  }
}
