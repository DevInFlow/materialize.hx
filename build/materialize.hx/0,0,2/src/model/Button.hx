package model;
import js.html.AnchorElement;
import js.html.ButtonElement;
@:forward
@:build(model.macro.Macro.domContainer(AnchorElement, 'btn', 'waves-effect', 'waves-light'))
abstract RaisedButton (AnchorElement) to AnchorElement{}

@:forward
@:build(model.macro.Macro.domContainer(AnchorElement, 'red', 'btn-floating', 'waves-effect', 'waves-light'))
abstract FloatingButton (AnchorElement) to AnchorElement {}

@:forward
@:build(model.macro.Macro.domContainer(ButtonElement, 'waves-effect', 'waves-light','btn'))
abstract SubmitButton (ButtonElement) to ButtonElement {}

@:forward
@:build(model.macro.Macro.domContainer(AnchorElement, 'sidenav-trigger'))
abstract SidenavTrigger (AnchorElement) to AnchorElement{}

