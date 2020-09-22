package model;
import js.html.DivElement;
import js.jquery.JQuery;
import js.html.Element;
import js.html.LIElement;
import js.html.UListElement;
@:forward
@:build(model.macro.Macro.domContainer(UListElement, 'componenets'))
abstract ListCollection (UListElement) to UListElement{
    public function addItem(value:CollectionItem):Void this.appendChild(value);
}

@:forward
@:build(model.macro.Macro.domContainer(LIElement, 'componenets-item'))
abstract CollectionItem(LIElement) to LIElement{

    public function setSecondaryContent(secondary:Element):Void {
        if (new JQuery(this).has('.' + secondaryContent).length == 0) {
            var div:DivElement = document.createDivElement();
            div.innerHTML = this.innerHTML;
            secondary.classList.add(secondaryContent);
            div.appendChild(secondary);
            this.innerHTML = div.outerHTML;
        }
    }
}

