package model;
import js.html.DivElement;
@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'col'))
abstract BreadcrumbContainer (DivElement) to DivElement {
    public function addItem(breadcrumb:Breadcrumb):Void this.appendChild(breadcrumb);
    public function removeItem(breadcrumb:Breadcrumb):Void this.removeChild(breadcrumb);
}
