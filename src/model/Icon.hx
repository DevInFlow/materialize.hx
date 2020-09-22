package model;
import js.html.Element;
import model.Css.Icons;
@:forward
@:build(model.macro.Macro.domContainer(i, 'material-icons','right'))
abstract Icon(Element) to Element{

    public inline function changeIcon(icon:Icons):Void {
        this.innerText = icon;
    }
}
