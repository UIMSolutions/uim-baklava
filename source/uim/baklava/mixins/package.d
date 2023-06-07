module uim.baklava.mixins;

public {
  import uim.baklava.mixins.base;
  import uim.baklava.mixins.layout;
  import uim.baklava.mixins.model;
  import uim.baklava.mixins.view;
  import uim.baklava.mixins.viewcomponent;
  import uim.baklava.mixins.controller;
  import uim.baklava.mixins.controllercomponent;
}

template BKLParameter(string name) {
  const char[] BKLParameter = `
    O `~name~`(this O)(string value) {
      this.parameter("`~name~`", value);
      return cast(O)this;
    }
    string `~name~`() {
      return this.parameter("`~name~`");
    }
  `;
}