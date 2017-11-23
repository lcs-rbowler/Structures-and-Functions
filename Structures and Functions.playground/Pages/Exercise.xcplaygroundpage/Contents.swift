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
struct Line {
    var x : Double = 0.0
    var y : Double = 0.0
}

// Create Point structure
struct Point {
    (10.0, 5.0) to (20.0, 10.0)
}


// Create the points here
var pointStart = Point()
var pointEnd = Point(x: 3.0, y: 4.0)


// Query the points here to find the x and y values separately
pointStart.x
pointStart.y
pointEnd.x
pointEnd.y


// Define the distance function of the point here
func distanceBetweenLineAndPoint(from: Point, to: Point) -> Double {
    return sqrt(pow(from.x - to.x, 2) + pow(from.y - to.y, 2))
}

// Invoke the functions here
distanceBetweenLineAndPoint(from: pointStart, to: pointEnd)
