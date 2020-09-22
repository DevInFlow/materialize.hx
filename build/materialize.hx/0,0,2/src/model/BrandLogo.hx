package model;
import js.html.AnchorElement;
@:forward
@:build(model.macro.Macro.domContainer(AnchorElement, 'brand-logo'))
abstract BrandLogo(AnchorElement) to AnchorElement{}
