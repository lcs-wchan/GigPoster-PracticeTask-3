//: # Gig Poster - Practice Task 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![modest-mouse-no-grid](modest-mouse-no-grid.jpg "Modest Mouse")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let darkGrey = Color(hue: 60, saturation: 9, brightness: 56, alpha: 100)
let lightGrey = Color(hue: 71, saturation: 5, brightness: 87, alpha: 100)
let deepYellow = Color(hue: 46, saturation: 99, brightness: 99, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your solution here...

// draw background
canvas.fillColor = darkGrey
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)




// draw diagonal line
canvas.rotate(by: -45)
for x in stride(from: -300, to: 400, by: 40){
    if x < -80{
        canvas.lineColor = lightGrey
    }
    if -80 < x && x < 50 {
        canvas.lineColor = deepYellow
    }
    if x > 50{
        canvas.lineColor = black
    }
    
    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 700), lineWidth: 20)
}

// counter rotate
canvas.rotate(by: 45)

// draw another background
canvas.drawShapesWithBorders = false
canvas.fillColor = darkGrey
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

// draw text
canvas.drawText(message: "at the speak in tounges social hall", at: Point(x: 17, y: 570), size: 8)
canvas.drawText(message: "4311 lorain ave. / cleveland, oh", at: Point(x: 17, y: 560), size: 8)


canvas.drawText(message: "saturday / august 224 1996", at: Point(x: 200, y: 570), size: 8)
canvas.drawText(message: "10 pm, all invited", at: Point(x: 200, y: 560), size: 8)


canvas.drawText(message: "with old hearts club", at: Point(x: 300, y: 570), size: 8)
canvas.drawText(message: "and melk", at: Point(x: 300, y: 560), size:8)


canvas.drawText(message: "modest mouse", at: Point(x: 17, y: 410), size: 40)



//// draw grid
//canvas.drawShapesWithBorders = true
//canvas.drawShapesWithFill = false
//for y in stride (from: 0, through: 600, by: 50){
//    for x in stride (from: 0, through: 400, by: 50){
//        canvas.drawRectangle(at: Point(x: x, y: y), width: 50, height: 50)
//    }
//}
/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

