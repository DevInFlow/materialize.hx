package model;
import js.html.DivElement;
@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'row'))
abstract Row(DivElement) to DivElement{}
