package model;
import js.html.FormElement;
@:forward
@:build(model.macro.Macro.domContainer(FormElement))
abstract Form (FormElement) to FormElement {}
