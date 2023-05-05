module uim.baklava.controllers.actions.action;

@safe:
import uim.baklava;

// Action controllers response to a submitted form.
class DBKLActionController : DBKLController {
  mixin(BKLControllerThis!("BKLActionController"));
}
mixin(BKLControllerCalls!("BKLActionController", "DBKLActionController"));

version(test_baklava) { unittest {
  testBKLController(BKLActionController, "BKLActionController");

  assert(BKLController.name == "BKLActionController");
  assert(BKLController.create.name == "BKLActionController");
  assert(BKLController.clone.name == "BKLActionController");
}} 