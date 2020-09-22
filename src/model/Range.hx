package model;
import js.html.DivElement;
import js.html.ParagraphElement;
@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'range-field'))
abstract RangeNoUiSlider(DivElement) to DivElement{}

@:forward
@:build(model.macro.Macro.domContainer(ParagraphElement, 'range-field'))
abstract HTML5Range(ParagraphElement) to ParagraphElement{}
