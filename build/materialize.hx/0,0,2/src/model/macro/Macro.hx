package model.macro;

import Array;
import haxe.macro.Context;
import haxe.macro.Expr.Access;
import haxe.macro.Expr.Constant;
import haxe.macro.Expr.ExprDef;
import haxe.macro.Expr.Field;
import haxe.macro.Expr.FieldType;
import haxe.macro.Expr;
import haxe.macro.ExprTools;


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
                    var classes:Array<String> = $v {defaultClasses.map(function(value:Expr) {return ExprTools.getValue(value);})};
                    for (cls in classes)
                        this.classList.add(cls);

                    if (params != null) {
                        model.macro.Macro.defaultParams();
                        model.macro.Macro.parseParams($v{localClass});
                        model.macro.Macro.parseClasses();
                    }
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
                        this.appendChild(new model.Icon({icon:icon}));
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
                    return cast new js.jquery.JQuery(this).find("i." + model.Css.Componenets.materialIcons).get(0);
                },
                args:[],
                ret:macro:model.Icon

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

    public static macro function parseClasses():Expr {
        return macro {
            if (Reflect.hasField(params, 'classList')) {
                for (field in Reflect.fields(params.classList))
                    this.classList.add(Reflect.field(params.classList, field));
            }
        }
    }

    public static macro function defaultParams():Expr {
        return macro {
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
            if (params.id != null)
                this.id = params.id;
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
                    this.appendChild(new model.Icon({icon:params.icon, direction:(params.direction != null) ? params.direction : model.Css.Direction.right}));
                }

            }
            case "RaisedButton_Impl_":macro {
                if (Reflect.hasField(params, 'icon'))
                    this.appendChild(new model.Icon({icon:params.icon, direction:(params.direction != null) ? params.direction : model.Css.Direction.right}));

            }
            case "SubmitButton_Impl_":macro {
                if (Reflect.hasField(params, 'icon'))
                    this.appendChild(new model.Icon({icon:params.icon, direction:(params.direction != null) ? params.direction : model.Css.Direction.right}));

                this.type = 'submit';
                this.name = 'action';
            }
            case "DatePicker_Impl_":macro {
                this.type = 'text';
                if (params.placeholder != null)
                    new js.jquery.JQuery(this).attr('placeholder', params.placeholder);
            }
            case "RadioWithGap_Impl_":macro {
                this.type = 'radio';
            }
            case "Radio_Impl_":macro {
                this.type = 'radio';
            }
            case "Checkbox_Impl_":macro {
                this.type = 'checkbox';
            }
            case "RangeNoUiSlider_Impl_":macro {
                NoUiSlider.create(this, cast params.options);
            }
            case "HTML5Range_Impl_":macro {
                var options:model.Params.HTML5RangeOptions = (params.options != null) ? cast params.options : {};
                var input:js.html.InputElement = js.Browser.document.createInputElement();
                input.min = cast options.min;
                input.max = cast options.max;
                input.type = 'range';
                this.appendChild(input);
            }
            case "Switch_Impl_":macro {
                var options:model.Params.SwitchOptions = (params.options != null) ? cast params.options : {};
                var label:js.html.LabelElement = js.Browser.document.createLabelElement();
                var input:js.html.InputElement = js.Browser.document.createInputElement();
                var span:js.html.SpanElement = js.Browser.document.createSpanElement();
                input.type = 'checkbox';
                span.classList.add('lever');
                label.innerHTML = options.labelOff + input.outerHTML + span.outerHTML + options.labelOn;
                this.appendChild(label);
            }
            case "InputField_Impl_":macro {
                var input:js.html.InputElement = js.Browser.document.createInputElement();
                var options:model.Params.InputOptions = (params.options != null) ? cast params.options : {};
                model.macro.Macro.defaultInput();

                if (options.label != null) {
                    var label:js.html.LabelElement = js.Browser.document.createLabelElement();
                    label.setAttribute('for', input.id);
                    label.innerText = options.label;
                    this.appendChild(label);
                }

                if (options.helper != null) {
                    var helper:js.html.SpanElement = js.Browser.document.createSpanElement();
                    helper.classList.add('helper-text');
                    helper.setAttribute('data-error', options.helper.error);
                    helper.setAttribute('data-success', options.helper.success);
                    this.appendChild(helper);
                }


                this.appendChild(input);
            };
            case "NumberInput_Impl_":macro {
                var input = cast this;
                model.macro.Macro.defaultInput();
                input.type = model.Params.InputType.number;
            };
            case "PasswordInput_Impl_":macro {
                var input = cast this;
                model.macro.Macro.defaultInput();
                input.type = model.Params.InputType.password;
            };
            case "EmailInput_Impl_":macro {
                var input = cast this;
                model.macro.Macro.defaultInput();
                input.type = model.Params.InputType.email;
            };
            case "TextInput_Impl_":macro {
                var input = cast this;
                model.macro.Macro.defaultInput();
                input.type = model.Params.InputType.text;
            };

            case "Select_Impl_":macro {
                var options:model.Params.SelectOptions = cast params.options;

                var optionElement:js.html.OptionElement;
                if (options.values != null) {

                    for (option in options.values) {
                        optionElement = js.Browser.document.createOptionElement();
                        optionElement.text = option.text;
                        optionElement.disabled = option.disabled;
                        optionElement.selected = option.selected;
                        optionElement.value = option.value;
                        this.appendChild(optionElement);
                    }
                }
                if(params.placeholder!=null){

                }

            };
            case "SidenavTrigger_Impl_":macro {
                var options:model.Params.SidenavTriggerOptions = (params.options != null) ? cast params.options : {};

                if (params.icon != null)
                    this.appendChild(new model.Icon({icon:params.icon}));
                this.href = (options.href != null) ? options.href : "#";
                if (options.dataTarget != null)
                    this.setAttribute('data-target', options.dataTarget);
            }

            case "SidenavItem_Impl_":macro {
                var options:model.Params.SidenavItemOptions = (params.options != null) ? cast params.options : {};
                var anchor:js.html.AnchorElement = js.Browser.document.createAnchorElement();
                anchor.href = (options.href != null) ? options.href : "#";

                if (options.text != null)
                    anchor.innerText = options.text;
                if (options.html != null)
                    anchor.innerHTML = options.html;

                this.appendChild(anchor);

            }

            default: macro {};
        }

        return result;
    }

    public static macro function defaultInput():Expr {
        return macro {
            var options:model.Params.InputOptions = (params.options != null) ? cast params.options : {};
            input.disabled = (params.disabled != null) ? params.disabled : false;
            input.id = (params.id == null) ? Random.string(16) : params.id;
            if (params.placeholder != null)
                input.placeholder = params.placeholder;


            if (options.value != null)
                input.value = options.value;

            if (options.type != null)
                input.type = options.type;

            if (options.required != null)
                input.setAttribute('required', '');

            if (options.ariaRequired != null)
                input.setAttribute('aria-required', cast options.ariaRequired);
            if (options.validate)
                input.classList.add('validate');
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
                    case "InputElement": return macro js.Browser.document.createInputElement();
                    case "BaseInputElement": return macro new model.base.BaseInputElement();
                    case "ParagraphElement": return macro js.Browser.document.createParagraphElement();
                    case "SelectElement": return macro js.Browser.document.createSelectElement();
                    case "FormElement": return macro js.Browser.document.createFormElement();
                    case "Chips": return macro new model.Chips();
                    case "InputField": return macro new model.Forms.InputField();
                    case "NavElement": return macro js.Browser.document.createElement('nav');
                    default: return macro js.Browser.document.createElement($v{cls});
                }
            default:
                return macro js.Browser.document.createElement('div');
        }
    }
}