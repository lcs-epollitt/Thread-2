//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics
import Darwin

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: 100,
                           y: 100))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)
/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
let scale = 10
let diagonal = Int (sqrt(2)*Double(scale))

canvas.highPerformance = true
t.drawSelf()

func squarething() {
    // prep for first angle
    t.penUp()
    t.forward(steps: 2 * scale)
    t.penDown()
    t.left(by: 135)

    // draw first line

    t.forward(steps: 2 * diagonal)

    // prep for second angle

    t.right(by: 90)

    // second line

    t.forward(steps: 2 * diagonal)

    // prep for 3rd qngle

    t.left(by: 90)

    //3rd line

    t.forward(steps: 2 * diagonal)

    // prep 4 4th

    t.right(by: 90)

    // 4th line

    t.forward(steps: 2 * diagonal)


    // prep for 5th

    t.right(by: 90)

    // 5th

    t.forward(steps: 2 * diagonal)

    // prep 4 6th

    t.left(by: 90)

    // 6th

    t.forward(steps: 2 * diagonal)

    // prep 4 7th

    t.right(by: 90)

    // 7th

    t.forward(steps: 2 * diagonal)

    // prep 4 8th

    t.right(by: 90)

    // 8th

    t.forward(steps: 2 * diagonal)

    // prep 4 9th

    t.left(by: 90)

    // 9th

    t.forward(steps: 2 * diagonal)

    // prep 4 10th

    t.right(by: 90)

    // 10th

    t.forward(steps: 2 * diagonal)

    // prep 4 11th

    t.right(by: 90)

    // 11th

    t.forward(steps: 2 * diagonal)

    // prep 4 12th

    t.left(by: 90)

    // 12th

    t.forward(steps: 2 * diagonal)
    
    // prep for square
    
    t.currentPosition()
    
    t.right(by: 45)
    
    t.forward(steps: 2 * scale)
    
    t.right(by: 180)
    
    t.forward(steps: 3 * scale)
    
    t.left(by: 90)
    
    t.penUp()
    
    t.forward(steps: 3 * scale)
    
    t.right(by: 90)
    
    //sqaure
    
    t.penDown()
    for _ in 1...4 {
        t.forward(steps: 2 * scale)
        
        t.left(by: 90)
        
    }
   
    
    t.penUp()
    
    t.right(by: 90)
    
    t.forward(steps: 3 * scale)
    
    t.left(by: 90)
    
    t.backward(steps: 3 * scale)
    
    t.forward(steps: 8 * scale)
    
    
    
    

    
    



    
}
      

squarething()

func rowOfSquareThing() {
    // a row of square
for _ in 1...5{
        squarething()
    }
    t.left(by: 90)
    t.forward(steps: 8 * scale)
    t.left(by: 90)
    t.forward(steps: 40 * scale)
    t.right(by: 180)
}
   

rowOfSquareThing()

for _ in 1...6 {
    rowOfSquareThing()
}
  





canvas.highPerformance = false

    
