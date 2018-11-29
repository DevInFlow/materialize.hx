package model;
import js.html.DivElement;
import js.Browser.document;
@:forward
abstract Container(DivElement) to DivElement{
    public inline function new() {
        this = document.createDivElement();
        this.classList.add(model.Css.Grid.container);
    }
}
@:forward
abstract Row(DivElement) to DivElement{
    public inline function new() {
        this = document.createDivElement();
        this.classList.add(model.Css.Grid.row);
    }
}
@:forward
abstract Col(DivElement) to DivElement{
    public inline function new() {
        this = document.createDivElement();
        this.classList.add(model.Css.Grid.col);
    }
}
