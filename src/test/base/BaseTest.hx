package test.base;
import js.html.Element;
import js.Browser;
import model.Containers.Container;
import model.Containers.Row;
import js.html.DivElement;
class BaseTest {
    @:protected var row:Row = new Row();
    @:protected var container:Container;

    public function new(container:Container) {
        this.container = container;
    }

    public function appendChild(value:Element):Void {
        this.container.appendChild(value);
    }
}
