local Widget = require("astal.gtk3.widget")
local Anchor = require("astal.gtk3").Astal.WindowAnchor
local mButton = require("widget.MyButton")

return function(monitor)
    return Widget.Window({
        monitor = monitor,
        anchor = Anchor.TOP + Anchor.LEFT + Anchor.RIGHT,
        exclusivity = "EXCLUSIVE",
        Widget.Box({
            Widget.Label({
                label = "Example label content",
            }),
            mButton("a"),
        }),
        
        
    })
end