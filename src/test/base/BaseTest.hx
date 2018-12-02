package test.base;
import js.html.Element;
import model.Containers.Col;
import model.Containers.Container;
import model.Containers.Row;
import model.Css.Grid;
class BaseTest {
    private var row:Row = new Row();
    @:protected var col:Col = new Col([Grid.s12]);
    private var container:Container;

    public function new(container:Container) {
        this.container = container;
        this.row.appendChild(this.col);
        this.container.appendChild(this.row);
    }

    public function appendChild(value:Element):Void {
        this.container.appendChild(value);
    }
}
