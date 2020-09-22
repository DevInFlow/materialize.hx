package model;
import js.html.DivElement;
@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'col'))
abstract Col(DivElement) to DivElement{}
