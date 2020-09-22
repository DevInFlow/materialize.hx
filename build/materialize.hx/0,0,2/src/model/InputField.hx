package model;
import js.html.DivElement;
@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'input-field'))
abstract InputField(DivElement) to DivElement{}

