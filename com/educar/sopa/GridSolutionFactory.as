﻿package com.educar.sopa {	import flash.geom.Point;		public class GridSolutionFactory {				private static var SOLUTIONS:Array;				public static function getSolutions():Array {			if( !SOLUTIONS ){				SOLUTIONS = new Array();				SOLUTIONS.push( new GridSolution(1, 'había pensado', new Point(4,0), new Point(4,11) ) );				SOLUTIONS.push( new GridSolution(2, 'había sido', new Point(7,12), new Point(7,4) ) );				SOLUTIONS.push( new GridSolution(3, 'entraron', new Point(6,13), new Point(13,13) ) );				SOLUTIONS.push( new GridSolution(4, 'hicieron', new Point(5,1), new Point(5,8) ) );				SOLUTIONS.push( new GridSolution(5, 'miraban', new Point(11,12), new Point(11,6) ) );				SOLUTIONS.push( new GridSolution(6, 'morirá', new Point(0,12), new Point(5,12) ) );				SOLUTIONS.push( new GridSolution(7, 'había', new Point(4,0), new Point(4,4) ) );				SOLUTIONS.push( new GridSolution(8, 'habrá', new Point(3,8), new Point(3,4) ) );				SOLUTIONS.push( new GridSolution(9, 'pasa', new Point(6,2), new Point(9,2) ) );				SOLUTIONS.push( new GridSolution(10, 'va', new Point(11,1), new Point(11,2) ) );			}			return SOLUTIONS;		}	}	}