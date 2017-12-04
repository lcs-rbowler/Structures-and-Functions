/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
/*:
 ## Exercise
 
 Write a function that determines the shortest distance from a point on a Cartesian plane to a line on a Cartesian plane.
 
 You can re-use the **Point** structure and the *distance* function.
 
 You should declare a **Line** structure.
 
 Recall that the shortest distance from a point to a line is the perpendicular distance.

*/

// Begin here... once you teach the computer to do this, you will never need to do it by hand again! :)

// Create Line structure
struct Point {
    var x : Double = 0.0
    var y : Double = 0.0
}

// Create Slope structure
struct Slope {
    var rise : Double = 1.0
    var run : Double = 1.0
}

// Create Line structure
struct Line {
    var slope = Slope()
    var verticalIntercept : Double = 0.0
}

// Create the points here
var cabinSite = Point(x: 6, y: 1.5)
cabinSite.x = 7

// Represent existing road in the code
var slopeOfExistingRoad = Slope(rise: -1, run: 2)
var existingRoad = Line(slope: slopeOfExistingRoad, verticalIntercept: 9.5)


func getSlopeOfPerpendicularLine(from givenLine: Line) -> Slope {
    return Slope(rise: givenLine.slope.run, run: givenLine.slope.rise * -1)
}

let perpendicularSlope = getSlopeOfPerpendicularLine(from: existingRoad)

func getVerticalIntercept(from p: Point, onLineWith m: Slope) -> Double {
    let mAsADecimal = m.rise/m.run
    return p.y - mAsADecimal * p.x
}

getVerticalIntercept(from: cabinSite, onLineWith: perpendicularSlope)





/// Finds the distance (from Pythagorean's Theorem)
///
/// - Parameter from: the first point
/// - Returns: the distance

//func distance(from: Point, to Point) -> Double {
//    return sqrt( pow(from.x - to.y) + pow(to.y - from.y) )
//}

