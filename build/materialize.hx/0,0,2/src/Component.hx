package ;

typedef GlobalOptions = {
?onOpenStart:Void -> Void,
?onOpenEnd:Void -> Void,
?onCloseStart:Void -> Void,
?onCloseEnd:Void -> Void
}
extern class Component {
    public function destroy():Void;

}
