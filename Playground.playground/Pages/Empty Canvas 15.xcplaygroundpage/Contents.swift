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
   
    // Draw a single figure using absolute values
    
    
    
    
    // circles
    canvas.drawShapesWithFill
    
canvas.fillColor =  Color (hue: 33, saturation: 82, brightness: 80, alpha: 100)
    
    canvas.drawEllipse(at: Point (x: 200, y: 350), width: 30, height: 30)
    
    
    canvas.drawEllipse(at: Point (x: 50, y: 50), width: 30, height: 30)
    
    canvas.drawEllipse(at: Point (x: 350, y: 50), width: 30, height: 30)
    
    
    canvas.highPerformance = false
    
    
    
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
    
    
    
