package model;
import js.html.InputElement;
@:forward
@:build(model.macro.Macro.domContainer(InputElement, 'autocomplete'))
abstract Checkbox (InputElement) to InputElement {}