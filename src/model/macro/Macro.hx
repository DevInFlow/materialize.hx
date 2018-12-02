package model.macro;
import haxe.macro.TypeTools;
import haxe.macro.Context;
import haxe.macro.ExprTools;
import haxe.macro.Expr.ExprDef;
import haxe.macro.Expr;
import haxe.macro.Expr.FieldType;
import haxe.macro.Expr.Access;
import haxe.macro.Context;
import haxe.macro.Expr.Constant;
import haxe.macro.Expr.Field;
import haxe.macro.Expr.ExprDef;

import haxe.macro.Expr;
import Type as RunTimeType;


class Macro {
    macro public static function iconize():Array<Field> {
        var fields:Array<Field> = Context.getBuildFields();
        fields.push({
            name:"setIcon",
            access:[Access.APublic],
            kind:FieldType.FFun({
                expr:macro {
                    if (new JQuery(this).has('i.' + model.Css.Componenets.materialIcons).length > 0)
                        new JQuery(this).find('i.' + model.Css.Componenets.materialIcons).remove();
                    this.appendChild(icon);
                },
                args:[{name:"icon", type:macro:model.Components.Icon}],
                ret:null

            }),
            pos:Context.currentPos()
        });
        fields.push({
            name:"getIcon",
            access:[Access.APublic],
            kind:FieldType.FFun({
                expr:macro {
                    return cast new JQuery(this).find("i." + materialIcons).get(0);
                },
                args:[],
                ret:macro:model.Components.Icon

            }),
            pos:Context.currentPos()
        });
        return fields;
    }

    macro public static function direction():Array<Field> {
        var fields:Array<Field> = Context.getBuildFields();
        fields.push({
            name:"setDirection",
            access:[Access.APublic, Access.AInline],
            kind:FieldType.FFun({
                expr:macro {

//                    public inline function setDirection(direction:model.Css.Direction):Void {
                    this.classList.remove(model.Css.Direction.right, model.Css.Direction.left);
                    this.classList.add(cast direction);
//                    }

                },
                args:[{name:"direction", type:macro:model.Css.Direction}],
                ret:null

            }),
            pos:Context.currentPos()
        });
        fields.push({
            name:"getDirection",
            access:[Access.APublic, Access.AInline],
            kind:FieldType.FFun({
                expr:macro {

                    if (this.classList.contains(model.Css.Direction.right))
                        return model.Css.Direction.right;
                    return model.Css.Direction.left;

                },
                args:[],
                ret:macro:model.Css.Direction

            }),
            pos:Context.currentPos()
        });
        return fields;
    }

    macro public static function domContainer(type):Array<Field> {
        var fields:Array<Field> = Context.getBuildFields();
        fields.push({
            name:"_new",
            access:[Access.APublic, Access.AInline],
            kind:FieldType.FFun({
                expr:macro {

                    trace($v{type});

                },
                args:[
                    {
                        name:"content",
                        type:macro:EitherType<Array<Element>, String>
                    }],
                ret:null

            }),
            pos:Context.currentPos()
        });
        fields.push({
            name:"getDirection",
            access:[Access.APublic, Access.AInline],
            kind:FieldType.FFun({
                expr:macro {

                    if (this.classList.contains(model.Css.Direction.right))
                        return model.Css.Direction.right;
                    return model.Css.Direction.left;

                },
                args:[],
                ret:macro:model.Css.Direction

            }),
            pos:Context.currentPos()
        });
        return fields;
    }

    public static macro function construct(type:Expr):Expr {


        switch (type.expr) {
            case EConst(CIdent(cls)):
            switch(cls.toString()){
                case "DivElement":
                return macro js.Browser.document.createDivElement();
            }
            default:
        }

        return macro {
//            this = $v{ExprTools.getValue(type.expr)};
        }


    }
}
