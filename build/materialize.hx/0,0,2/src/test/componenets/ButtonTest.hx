package test.componenets;
import model.Components.Container;
import model.Components.FloatingButton;
import model.Components.RaisedButton;
import model.Components.Row;
import model.Components.SubmitButton;
import model.Css.Icons;
import test.base.BaseTest;
class ButtonTest extends BaseTest {
    public function new(container:Container) {
        super(container);
        this.raisedButton();
        this.floatingButton();
        this.submitButton();
    }

    private function raisedButton():Void {

        var raisedNormal:RaisedButton = new RaisedButton({text:"NORMAL"});
        var raisedButtonIconLeft:RaisedButton = new RaisedButton({icon:Icons.CLOUD, text:"LEFT ICON", direction:model.Css.Direction.left});
        var raisedButtonIconRight:RaisedButton = new RaisedButton({icon:Icons.CLOUD, text:"RIGHT ICON", direction:model.Css.Direction.right});

        raisedButtonIconLeft.onmousedown = function() {
            raisedButtonIconLeft.setIcon(Icons.AIRPLANEMODE_INACTIVE);
        }
        raisedButtonIconLeft.onmouseup = function() {
            raisedButtonIconLeft.setIcon(Icons.CLOUD);
        }

        this.col.appendChild(new Row({elements:[raisedNormal, raisedButtonIconLeft, raisedButtonIconRight]}));
    }

    private function floatingButton():Void {
        var floatingRow:Row = new Row({elements:[new FloatingButton({icon:Icons.ACCOUNT_BALANCE_WALLET})]});
        this.col.appendChild(floatingRow);
    }

    private function submitButton():Void {
        var submitRow:Row = new Row({elements:[new SubmitButton({text:"Submit", icon:Icons.SEND})]});
        this.col.appendChild(submitRow);
    }
}
