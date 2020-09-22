package model;
import js.html.AnchorElement;
@:forward
@:build(model.macro.Macro.domContainer(AnchorElement, 'breadcrumb'))
abstract Breadcrumb (AnchorElement) to AnchorElement{}

