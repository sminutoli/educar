package com.util {
	import flash.text.TextField;
	import com.greensock.TweenLite;
	import com.greensock.easing.Strong;
	import com.greensock.easing.Linear;
	import flash.events.EventDispatcher;
	import flash.events.Event;
	import flash.display.Shape;
	
	public class TextFieldAnimated extends EventDispatcher {
	
		private var txt:TextField;
		private var html:Boolean;
		private var src:String;
		private var helper:Object;
		private var animation:TweenLite;
		private var txtMask:Shape;
		
		public function TextFieldAnimated( txt:TextField, delay:Number = 0 ) {
			this.txt = txt;
			
			this.txtMask = new Shape();
			this.txtMask.graphics.beginFill( HTMLColors.magenta );
			this.txtMask.graphics.drawRect(txt.x, txt.y, txt.width, txt.height);
						
			txt.parent.addChild( txtMask );
			
			if( this.txt.mask ) this.txt.mask.parent.removeChild( this.txt.mask );
			txt.mask = this.txtMask;
			this.txtMask.scaleX = 0;
			
			TweenLite.killTweensOf( txtMask );
			this.animation = TweenLite.to( this.txtMask, 2, { scaleX: 1, delay: delay, ease: Strong.easeOut, onComplete: complete_text } );
			this.animation.pause();
			
			return;
		}
		
		public function start( e:* = null ):void {
			this.animation.resume();
		}
		private function complete_text():void {
			if( this.txt.mask ){ 
				this.txt.mask.parent.removeChild( this.txt.mask );
				this.txt.mask = null;
			}
			this.dispatchEvent( new Event( Event.COMPLETE ) );
		}

	}
	
}
