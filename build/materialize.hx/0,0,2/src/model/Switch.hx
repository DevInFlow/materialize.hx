package model;
import js.html.DivElement;
@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'switch-form'))
abstract Switch(DivElement) to DivElement{}

