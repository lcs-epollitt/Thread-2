

import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Set canvas size
let preferredWidth = 400
let preferredHeight = 400

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

canvas.drawAxes(withScale:true, by:50, color:.black)
