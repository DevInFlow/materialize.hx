package model;
import js.html.InputElement;
@:forward
@:build(model.macro.Macro.domContainer(InputElement))
abstract Radio(InputElement) to InputElement{}

@:forward
@:build(model.macro.Macro.domContainer(InputElement, 'with-gap'))
abstract RadioWithGap(InputElement) to InputElement{}

