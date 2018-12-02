package test.collection;
import model.Css.Buttons;
import model.Components.SubmitButton;
import Buttons.FloatingActionButton;
import model.Components.FloatingButton;
import model.Css.Grid;
import model.Containers.Col;
import model.Containers.Row;
import model.Css.Icons;
import model.Components.Icon;
import model.Components.RaisedButton;
import model.Containers.Container;
import test.base.BaseTest;
class ButtonTest extends BaseTest {
    public function new(container:Container) {
        super(container);
        this.raisedButton();
        this.floatingButton();
        this.submitButton();
    }

    private function raisedButton():Void {

        var raisedRow:Row = new Row();
        var raisedNormal:RaisedButton = new RaisedButton();
        var raisedButtonIconLeft:RaisedButton = new RaisedButton();
        var raisedButtonIconRight:RaisedButton = new RaisedButton();
        raisedNormal.text = raisedButtonIconLeft.text = raisedButtonIconRight.text = "BUTTON";

        raisedButtonIconLeft.setIcon(new Icon({icon:Icons.CLOUD, direction:model.Css.Direction.left}));
        raisedButtonIconRight.setIcon(new Icon({icon:Icons.CLOUD, direction:model.Css.Direction.right}));

        raisedRow.appendChild(raisedNormal);
        raisedRow.appendChild(raisedButtonIconLeft);
        raisedRow.appendChild(raisedButtonIconRight);
        this.col.appendChild(raisedRow);


    }

    private function floatingButton():Void {
        var floatingRow:Row = new Row();
        var floatingButton:FloatingButton = new FloatingButton();
        floatingButton.setIcon(new Icon({icon:Icons.ADD}));

        floatingRow.appendChild(floatingButton);
        this.col.appendChild(floatingRow);

    }

    private function submitButton():Void {
        var submitRow:Row = new Row();

        var submitButton:SubmitButton = new SubmitButton({type:Buttons.btnSmall});
        submitButton.textContent = "Submit";
        submitButton.setIcon(new Icon({icon:Icons.SEND}));
        submitRow.appendChild(submitButton);
        this.col.appendChild(submitRow);

    }
}
