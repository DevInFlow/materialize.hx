package model.macro;
import haxe.macro.MacroType;
import haxe.macro.MacroStringTools;
import haxe.extern.EitherType;
import haxe.ds.Either;
import haxe.macro.ExprTools;
import haxe.macro.ExprTools;
import Array;
import haxe.macro.Context;
import haxe.macro.Expr.Access;
import haxe.macro.Expr.Constant;
import haxe.macro.Expr.ExprDef;
import haxe.macro.Expr.Field;
import haxe.macro.Expr.FieldType;
import haxe.macro.Expr;

class Macro {

    macro public static function domContainer(type:Expr, defaultClasses:Array<Expr>):Array<Field> {
        var fields:Array<Field> = Context.getBuildFields();
        var localClass:String = Context.getLocalClass().get().name;


        fields.push({
            name:"new",
            access:[Access.APublic, Access.AInline],
            kind:FieldType.FFun({
                args:[{
                    name:"params",
                    type:macro:model.Params,
                    opt:true

                }],
                expr:macro {
                    this = model.macro.Macro.construct($e{type});
                    for (cls in $v {defaultClasses.map(function(value:Expr) {return ExprTools.getValue(value);})}) this.classList.add(cls);
                    model.macro.Macro.defaultParams($v{localClass});
                    model.macro.Macro.parseParams($v{localClass});
                    model.macro.Macro.parseClasses($v{localClass});
                    model.macro.Macro.extraFields($v{localClass});
                },
                ret:null
            }),
            pos:Context.currentPos()
        });

        fields.push({
            name:"appendHtml",
            access:[Access.APublic],
            kind:FieldType.FFun({
                expr:macro{this.innerHTML!=value;},
                args:[ {
                    name:'value',
                    type:macro:String

                } ],
                ret:null
            }),
            pos:Context.currentPos()
        });

        fields.push({
            name:"setIcon",
            access:[Access.APublic],
            kind:FieldType.FFun({
                expr:macro {
                    if (new js.jquery.JQuery(this).has('i.' + model.Css.Componenets.materialIcons).length > 0)
                        new js.jquery.JQuery(this).find('i.' + model.Css.Componenets.materialIcons).text(cast icon);
                    else
                        this.appendChild(new model.Components.Icon({icon:icon}));
                },
                args:[{name:"icon", type:macro:model.Css.Icons}],
                ret:null

            }),
            pos:Context.currentPos()
        });
        fields.push({
            name:"getIcon",
            access:[Access.APublic],
            kind:FieldType.FFun({
                expr:macro {
                    return cast new js.jquery.JQuery(this).find("i." + materialIcons).get(0);
                },
                args:[],
                ret:macro:model.Components.Icon

            }),
            pos:Context.currentPos()
        });
        fields.push({
            name:"setDirection",
            access:[Access.APublic, Access.AInline],
            kind:FieldType.FFun({
                expr:macro {
                    this.classList.remove(model.Css.Direction.right, model.Css.Direction.left);
                    this.classList.add(cast direction);
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

    public static macro function parseClasses(localClass:Expr):Expr {
        return macro {
            if (params != null) {
                if (Reflect.hasField(params, 'classList')) {
                    for (field in Reflect.fields(params.classList))
                        this.classList.add(Reflect.field(params.classList, field));
                }
            }
        }
    }

    public static macro function defaultParams(localClass:Expr):Expr {
        return macro {
            if (params != null) {
                for (field in Reflect.fields(params)) {
                    switch(field){
                        case 'html':
                            this.innerHTML += params.html;
                        case 'text':
                            this.innerText += params.text;
                        case 'elements':
                            for (field in Reflect.fields(params.elements))
                                this.appendChild(Reflect.field(params.elements, field));
                    }
                }
            }
        }
    }

    public static macro function parseParams(localClass:Expr):Expr {
        var result:Expr;
        result = switch(ExprTools.getValue(localClass)){
            case "Icon_Impl_": macro {
                if (Reflect.hasField(params, 'direction'))
                    setDirection(params.direction);
                else
                    setDirection(model.Css.Direction.right);
                this.innerText = params.icon;
            }
            case "CardImage_Impl_":macro {
                var img:js.html.ImageElement = js.Browser.document.createImageElement();
                img.classList.add('activator');
                img.src = params.src;
                this.appendChild(img);
            }

            case "FloatingButton_Impl_":macro {
                if (Reflect.hasField(params, 'icon')) {
                    this.appendChild(new Icon({icon:params.icon, direction:(params.direction != null) ? params.direction : model.Css.Direction.right}));
                }

            }
            case "RaisedButton_Impl_":macro {
                if (Reflect.hasField(params, 'icon'))
                    this.appendChild(new Icon({icon:params.icon, direction:(params.direction != null) ? params.direction : model.Css.Direction.right}));

            }
            case "SubmitButton_Impl_":macro {
                if (Reflect.hasField(params, 'icon'))
                    this.appendChild(new Icon({icon:params.icon, direction:(params.direction != null) ? params.direction : model.Css.Direction.right}));

            }
            default: macro {};
        }
        return result;
    }


    public static macro function extraFields(localClass:Expr):Expr {


        return switch(ExprTools.getValue(localClass)){
            case "SubmitButton_Impl_": macro {
                this.type = 'submit';
                this.name = 'action';
            }
            default: macro {}
        }
    }

    public static macro function construct(type:Expr):Expr {

        switch (type.expr) {
            case EConst(CIdent(cls)):
                switch(cls.toString()){
                    case "DivElement": return macro js.Browser.document.createDivElement();
                    case "AnchorElement": return macro js.Browser.document.createAnchorElement();
                    case "SpanElement": return macro js.Browser.document.createSpanElement();
                    case "UListElement": return macro js.Browser.document.createUListElement();
                    case "LIElement": return macro js.Browser.document.createLIElement();
                    case "ButtonElement": return macro js.Browser.document.createButtonElement();
                    default: return macro js.Browser.document.createElement($v{cls});
                }
            default:
                return macro js.Browser.document.createElement('div');
        }
    }
}