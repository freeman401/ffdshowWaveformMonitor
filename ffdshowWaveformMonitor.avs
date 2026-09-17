#ColorBars(704, 576, pixel_type="YUY2").AddBorders(8, 0, 8, 0) #test
pixtype = PixelType
ConvertToYV16()
source = Last
preview = Merge(SeparateFields.SelectEven, SeparateFields.SelectOdd)
\.BicubicResize(394, 288)
BilinearResize(720, 576)
target = Blackness(Last, width = 4, height = 4, pixel_type = "Y8")
target = StackVertical(StackHorizontal(
\target.AddBorders(1, 1, 0, 0, $FFFFFF), 
\target.AddBorders(1, 1, 1, 0, $FFFFFF)), StackHorizontal(
\target.AddBorders(1, 1, 0, 1, $FFFFFF), 
\target.AddBorders(1, 1, 1, 1, $FFFFFF))).AddBorders(1, 0, 0, 0)
targets = Blackness(target, width = 256, height = 256, color_yuv = $008080)
\.Overlay(target, 66, 53, mode = "Add")
\.Overlay(target, 150, 39, mode = "Add")
\.Overlay(target, 38, 137, mode = "Add")
\.Overlay(target, 94, 207, mode = "Add")
\.Overlay(target, 178, 193, mode = "Add")
\.Overlay(target, 206, 109, mode = "Add")
color = Histogram("color2").Crop(720, 0, 256, 256)
\.Overlay(targets, mode = "Add", opacity = 0.5).AddBorders(32, 0, 32, 0)
\.Text("Rec.601 75%", x=6, y=2, size=14, text_color=$FFFFFF)
hist = Histogram("levels").Crop(720, 0, 256, 66).BicubicResize(320, 66)
waveform = ConvertToYV12.TurnRight.Histogram
\.Crop(576, 0, 0, 0).TurnLeft
Blackness(source, width = 720, height = 576, color_yuv = $7B8080)
Text(String(Width(source))+"x"+String(Height(source))+" "+String(pixtype)
\+" "+String(FrameRate)+"fps", x=104, y=2, size=14, text_color=$FFFFFF)
Overlay(preview, 4, 18)
Overlay(color, 400, 0)
Overlay(hist, 400, 254)
Overlay(waveform, 0, 320)
BicubicResize(source.Width, source.Height)
ColorYUV(Levels="TV->PC")
Eval("ConvertTo" + pixtype)