package test.base;
import js.html.Element;
import model.Components.Col;
import model.Components.Container;
import model.Components.Row;
import model.Css.Grid;
class BaseTest {
    private var row:Row = new Row();
    @:protected var col:Col = new Col();

    private var container:Container;

    public function new(container:Container) {
        this.container = container;
        this.col.classList.add(Grid.s12);
        this.row.appendChild(this.col);
        this.container.appendChild(this.row);
    }

    public function appendChild(value:Element):Void {
        this.container.appendChild(value);
    }
}
