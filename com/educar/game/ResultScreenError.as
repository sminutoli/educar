﻿package com.educar.game {		public class ResultScreenError extends ResultScreen {		override protected function createInterface():void {			this.text = new ResultTextError();			this.addChild( this.text );						this.face = new ResultFaceError();			this.addChild( this.face );						this.close = new ResultButtonError();			this.addChild( this.close );		}	}	}