﻿package com.educar.sopa {	import flash.text.TextField;	import flash.text.TextFieldAutoSize;	import flash.text.TextFormat;	import flash.text.Font;		public class AppText {				public static function getAnswerLabel():TextField {			var font:Font = new com.educar.sopa.FuenteLetra();			var format:TextFormat = new TextFormat();			format.font = font.fontName;			format.size = 13;			format.color = AppColors.ANSWER_FONT;						var field:TextField = AppText.getLabel();			field.defaultTextFormat = format;			return field;		}				public static function getLetterLabel():TextField {			var font:Font = new com.educar.sopa.FuenteLetra();			var format:TextFormat = new TextFormat();			format.font = font.fontName;			format.size = 11;						var field:TextField = AppText.getLabel();			field.defaultTextFormat = format;			return field;		}				public static function getLabel():TextField {			var field:TextField = new TextField();			field.width = field.height = 0;			field.selectable = field.mouseEnabled = false;			field.embedFonts = true;			field.autoSize = TextFieldAutoSize.LEFT;			return field;		}	}	}