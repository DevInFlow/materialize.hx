package model;

import model.base.BaseInputElement;
@:forward
@:build(model.macro.Macro.domContainer(BaseInputElement))
abstract TextInput(BaseInputElement) to BaseInputElement{}

@:forward
@:build(model.macro.Macro.domContainer(BaseInputElement))
abstract NumberInput(BaseInputElement) to BaseInputElement{}

@:forward
@:build(model.macro.Macro.domContainer(BaseInputElement))
abstract EmailInput(BaseInputElement) to BaseInputElement{}

@:forward
@:build(model.macro.Macro.domContainer(BaseInputElement))
abstract PasswordInput(BaseInputElement) to BaseInputElement{}

@:forward
@:build(model.macro.Macro.domContainer(BaseInputElement, 'autocomplete'))
abstract Autocomplete (BaseInputElement) to BaseInputElement {}


