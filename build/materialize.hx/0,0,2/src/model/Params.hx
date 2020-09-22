package model;
typedef Params = {
?src:String,
?html:String,
?text:String,
?disabled:Bool,
?id:String,
?placeholder:String,
?elements:Array<js.html.Element>,
?icon:model.Css.Icons,
?direction:model.Css.Direction,
?classList:Array<Dynamic>,
?options:Dynamic,
}

@:enum abstract InputType(String) to String{
    var email = 'email';
    var checkbox = 'checkbox';
    var password = 'password';
    var number = 'number';
    var text = 'text';
}

typedef InputOptions = {
?ariaRequired:Bool,
?required:Bool,
?type:InputType,
?value:String,
?label:String,
?validate:Bool,
?helper:{
error:String,
success:String
}
}

typedef SelectOptions = {
?values:Array<{text:String, value:String, ?disabled:Bool, ?selected:Bool}>
}

typedef SidenavTriggerOptions = {
?href:String,
?dataTarget:String
}

typedef SidenavItemOptions={
?text:String,
?html:String,
?href:String
}

typedef SwitchOptions = {
labelOn:String,
labelOff:String
}

typedef HTML5RangeOptions = {
?min:Int,
?max:Int
}
