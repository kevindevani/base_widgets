import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///You can configure as per your requirement.

///Base TextFormField
class BaseTextFormField extends StatelessWidget {
  final bool txAutoFocus;
  final bool txAutoValidate;
  final TextEditingController txController;
  final String txHint;
  final String txLabel;
  final String txHelper;
  final bool txObscurtxtext;
  final FocusNode txFocusNode;
  final TextInputAction txTextInputAction;
  final TextInputType txTextInputType;
  final TextCapitalization txTextCapitalization;
  final List<TextInputFormatter> txTextInputFormatter;
  final FormFieldValidator<String> txValidator;
  final Function(String) txOnFieldSubmitted;
  final int txMaxLines;
  final int txMinLines;
  final int txMaxLength;
  final int txErrorMaxLines;
  final double txCursorHeight;
  final Widget txCounter;
  final String txCounterText;
  final Function(String) txOnChange;
  final bool txEnable;
  final TextStyle txTextStyle;
  final EdgeInsetsGeometry txContentPadding;
  final Widget txIcon;
  final Widget txSuffix;
  final Widget txprefix;
  final bool txIsDense;
  final Color txCursorColor;
  final TextStyle txErrorStyle;
  final TextStyle txHintStyle;
  final TextStyle txHelperStyle;
  final TextStyle txCounterStyle;

  BaseTextFormField({
    this.txAutoFocus,
    this.txAutoValidate,
    this.txController,
    this.txHint,
    this.txLabel,
    this.txHelper,
    this.txObscurtxtext,
    this.txFocusNode,
    this.txTextInputAction,
    this.txTextInputType,
    this.txTextCapitalization,
    this.txTextInputFormatter,
    this.txValidator,
    this.txOnFieldSubmitted,
    this.txMaxLines,
    this.txCursorHeight,
    this.txErrorMaxLines,
    this.txMinLines,
    this.txMaxLength,
    this.txCounter,
    this.txCounterText,
    this.txOnChange,
    this.txEnable,
    this.txTextStyle,
    this.txContentPadding,
    this.txIcon,
    this.txSuffix,
    this.txprefix,
    this.txIsDense,
    this.txCursorColor,
    this.txErrorStyle,
    this.txHintStyle,
    this.txHelperStyle,
    this.txCounterStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: txAutoFocus ?? false,
      textAlignVertical: TextAlignVertical.center,
      autovalidateMode: txAutoValidate != null
          ? txAutoValidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled
          : AutovalidateMode.disabled,
      controller: txController,
      obscureText: txObscurtxtext ?? false,
      focusNode: txFocusNode,
      textCapitalization: txTextCapitalization ?? TextCapitalization.none,
      keyboardType: txTextInputType ?? TextInputType.text,
      textInputAction: txTextInputAction ?? TextInputAction.next,
      onFieldSubmitted: txOnFieldSubmitted,
      onChanged: txOnChange,
      validator: txValidator,
      minLines: txMinLines ?? 1,
      maxLength: txMaxLength,
      enabled: txEnable ?? true,
      maxLines: txMaxLines ?? 1,
      inputFormatters: txTextInputFormatter,
      cursorHeight: txCursorHeight,
      decoration: InputDecoration(
        contentPadding: txContentPadding ?? null,
        hintText: txHint,
        labelText: txLabel,
        helperText: txHelper,
        counter: txCounter,
        counterText: txCounterText,
        icon: txIcon ?? null,
        suffixIcon: txSuffix ?? null,
        prefixIcon: txprefix ?? null,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 0.8,
          ),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 0.8,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 0.8,
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 0.8,
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 0.8,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 0.8,
          ),
        ),
        errorStyle: txErrorStyle ??
            TextStyle(
              color: Colors.red,
            ),
        hintStyle: txHintStyle ??
            TextStyle(
              color: Colors.grey,
            ),
        helperStyle: txHelperStyle ??
            TextStyle(
              color: Colors.black,
            ),
        counterStyle: txCounterStyle ??
            TextStyle(
              color: Colors.black,
            ),
        errorMaxLines: txErrorMaxLines ?? 3,
      ),
      style: txTextStyle ??
          TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
      cursorColor: txCursorColor ?? Colors.black,
    );
  }
}
