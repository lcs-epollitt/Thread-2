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






/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
//background colour

canvas.fillColor = Color (hue: 230, saturation: 50, brightness: 19, alpha: 100)

canvas.drawRectangle(at: Point (x: 0, y: 0), width: 400, height: 600)



//colour for bg triangles

canvas.fillColor = Color (hue: 253, saturation: 40, brightness: 27, alpha: 100)


canvas.drawRectangle(at: Point (x: 0, y: 400), width: 400, height: 200)

// pavement text

canvas.textColor =  Color (hue: 33, saturation: 82, brightness: 80, alpha: 100)

canvas.drawText(message: "Pavement", at: Point (x: 15, y: 400), size: 50)



// loop for bg triangles
canvas.highPerformance = true
for xPosition in stride (from: 0, to: 400, by: 50) {
    for yPosition in stride(from: 0, to: 400, by: 50) {
        
        // Express the vertices of the custom figure
        var figureVertices: [Point] = []
        figureVertices.append(Point(x: xPosition + 0, y: yPosition + 50))
        figureVertices.append(Point(x: xPosition + 0, y: yPosition + 0))
        figureVertices.append(Point(x: xPosition + 25, y: yPosition + 0))
        
        
        // Draw a single figure using absolute values
        canvas.drawCustomShape(with: figureVertices)
        
        
        
        // Express the vertices of the custom figure
        var figureVertices2: [Point] = []
        figureVertices2.append(Point(x: xPosition + 25, y: yPosition + 0))
        figureVertices2.append(Point(x: xPosition +  50, y: yPosition + 0))
        figureVertices2.append(Point(x: xPosition + 50, y: yPosition + 50))
        
        
        // Draw a single figure using absolute values
        canvas.drawCustomShape(with: figureVertices2)
        
    }
}

// draw first triangle

canvas.fillColor =  Color (hue: 33, saturation: 82, brightness: 80, alpha: 25)



// Express the vertices of the custom figure
var figureVertices3: [Point] = []
figureVertices3.append(Point(x: 200, y: 350))
figureVertices3.append(Point(x: 50, y: 50))
figureVertices3.append(Point(x:  350, y: 50))

canvas.drawCustomShape(with: figureVertices3)



// border colour

canvas.lineColor = Color (hue: 44, saturation: 73, brightness: 80, alpha: 100)

canvas.drawLine(from: Point (x: 200, y: 350), to: Point (x: 50, y: 50))

canvas.drawLine(from: Point (x: 200, y: 350), to: Point (x: 350, y: 50))

canvas.drawLine(from: Point (x: 50, y: 50), to: Point (x: 350, y: 50))



// triangle inside triangle

canvas.lineColor =  Color (hue: 33, saturation: 82, brightness: 80, alpha: 100)

canvas.drawLine(from: Point (x: 200, y: 300), to: Point (x: 85, y: 75))

canvas.drawLine(from: Point (x: 200, y: 300), to: Point (x: 315, y: 75))

canvas.drawLine(from: Point (x: 85, y: 75), to: Point (x: 315, y: 75))




// circles on border
canvas.drawShapesWithFill

canvas.fillColor =  Color (hue: 33, saturation: 82, brightness: 80, alpha: 100)

canvas.drawEllipse(at: Point (x: 200, y: 350), width: 30, height: 30)

canvas.drawEllipse(at: Point (x: 50, y: 50), width: 30, height: 30)

canvas.drawEllipse(at: Point (x: 350, y: 50), width: 30, height: 30)



// draw little circles on border

canvas.fillColor = Color (hue: 44, saturation: 73, brightness: 80, alpha: 100)

canvas.drawEllipse(at: Point (x: 200, y: 350), width: 20, height: 20)

canvas.drawEllipse(at: Point (x: 50, y: 50), width: 20, height: 20)

canvas.drawEllipse(at: Point (x: 350, y: 50), width: 20, height: 20)



// draw even smaller circles on border

canvas.fillColor =  Color (hue: 33, saturation: 82, brightness: 80, alpha: 100)

canvas.drawEllipse(at: Point (x: 200, y: 350), width: 10, height: 10)

canvas.drawEllipse(at: Point (x: 50, y: 50), width: 10, height: 10)

canvas.drawEllipse(at: Point (x: 350, y: 50), width: 10, height: 10)



// eyelashes

// Express the vertices of the custom figure
var figureVertices5: [Point] = []
figureVertices5.append(Point(x: 150, y: 150))
figureVertices5.append(Point(x: 140, y: 160))
figureVertices5.append(Point(x:  160, y: 160))
figureVertices5.append(Point(x: 165, y: 165))

canvas.drawCustomShape(with: figureVertices5)

canvas.highPerformance = false



// eye border

canvas.lineColor = Color (hue: 230, saturation: 50, brightness: 19, alpha: 100)

canvas.drawLine(from: Point (x: 200, y: 190), to: Point (x: 150, y: 150))

canvas.drawLine(from: Point (x: 200, y: 190), to: Point (x: 250, y: 150))

canvas.drawLine(from: Point (x: 250, y: 150), to: Point (x: 200, y: 120))

canvas.drawLine(from: Point (x: 200, y: 120), to: Point (x: 150, y: 150))

// eye white

canvas.fillColor = Color (hue: 10, saturation: 10, brightness: 80, alpha: 100)
// Express the vertices of the custom figure
var figureVertices4: [Point] = []
figureVertices4.append(Point(x: 200, y: 190))
figureVertices4.append(Point(x: 150, y: 150))
figureVertices4.append(Point(x:  200, y: 120))
figureVertices4.append(Point(x: 250, y: 150))

canvas.drawCustomShape(with: figureVertices4)

canvas.highPerformance = false

// pupil gradient
canvas.fillColor = Color (hue: 230, saturation: 50, brightness: 19, alpha: 100)

canvas.drawEllipse(at: Point (x: 200, y: 155), width: 30, height: 45)

canvas.fillColor = Color (hue: 253, saturation: 40, brightness: 27, alpha: 100)

canvas.drawEllipse(at: Point (x: 200, y: 155), width: 20, height: 35)

canvas.fillColor = Color (hue: 253, saturation: 40, brightness: 37, alpha: 100)

canvas.drawEllipse(at: Point (x: 200, y: 155), width: 10, height: 25)

canvas.fillColor = Color (hue: 253, saturation: 40, brightness: 60, alpha: 100)

canvas.drawEllipse(at: Point (x: 200, y: 155), width: 5, height: 15)







// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .white)

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */



