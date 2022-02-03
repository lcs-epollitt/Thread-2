//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

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


// Show a grid


/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)

canvas.drawRectangle(at: Point (x:0, y: 400), width: 400, height: 600)

canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 10, alpha: 100)

canvas.drawRectangle(at: Point (x: 0, y: 0), width: 400, height: 400)

// draw the circles!!!

canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)



for xPosition in stride (from: 0, through: 400, by: 40){
    
    for yPosition in stride (from: 0, through: 400, by: 40){
        
        if xPosition + yPosition <= 400
            && xPosition > 0
        && yPosition > 0 {
            
            canvas.fillColor = .white
        } else {
            canvas.fillColor = Color (hue: 107, saturation: 63, brightness: 73, alpha: 100)
        }
        
        canvas.drawEllipse(at: Point(x: xPosition, y: yPosition), width: 37, height: 37)
        
    }
    
}

canvas.drawText(message: "pixies", at: Point (x: 12, y: 410), size: 70)

//add text
canvas.textColor = .black

canvas.drawText(message: "pixies", at: Point (x: 12, y: 410), size: 70)

canvas.drawText(message: "saturday", at: Point (x: 12, y: 550), size: 10)
canvas.drawText(message: "december 13 1986", at: Point (x: 12, y: 535), size: 10)
canvas.drawText(message: "9 pm over 21", at: Point (x: 12, y: 520), size: 10)

canvas.drawText(message: "at the rat", at: Point (x: 275, y: 550), size: 10)
canvas.drawText(message: "528 commonwealth", at: Point (x: 275, y: 535), size: 10)
canvas.drawText(message: "boston, mass.", at: Point (x: 275, y: 520), size: 10)

canvas.textColor = .white
canvas.drawText(message: "with", at: Point (x: 275, y: 455), size: 13)
canvas.drawText(message: "thowing muses", at: Point (x: 275, y: 440), size: 13)
canvas.drawText(message: "big dipper", at: Point (x: 275, y: 425), size: 13)




