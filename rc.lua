-- Load the standard awesome library
local gears = require("gears")
local awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")

-- Variables
local terminal = "alacritty"
local file_manager = "nemo"
local browser = "brave"

-- Default applications
awful.util.spawn_with_shell("export XDG_CURRENT_DESKTOP=awesome")
awful.util.spawn_with_shell("export GDK_SCALE=2")
awful.util.spawn_with_shell("export GDK_DPI_SCALE=0.5")
awful.util.spawn_with_shell("xrandr --dpi 192")
awful.util.spawn_with_shell(terminal .. " &")
awful.util.spawn_with_shell(file_manager .. " &")
awful.util.spawn_with_shell(browser .. " &")

-- Table of layouts to cover with awful.layout.inc, order matters.
local layouts =
{
    awful.layout.suit.floating,
    awful.layout.suit.fullscreen,
    awful.layout.suit.tile
}

-- {{{ Wallpaper
if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end

-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags = {}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag({ "1", "2", "3", "4", "5" }, s, layouts[1])
end

-- {{{ Menu
-- Create a laucher widget and a main menu
myawesomemenu = {
   { "manual", terminal .. " -e man awesome" },
   { "edit config", terminal .. " -e vim ~/.config/awesome/rc.lua" },
   { "restart", awesome.restart },
   { "quit", function() awesome.quit() end}
}

mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "open terminal", terminal }
                                  }
                        })

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })

-- {{{ Wibox
-- Create a textclock widget
mytextclock = awful.widget.textclock()

-- Create a wibox for each screen and add it
mywibox = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
                    awful.button({ }, 1, awful.tag.viewonly),
                    awful.button({ modkey }, 1


---Hotkeys
-- Abrir o navegador com "super + F9"
awful.key({ modkey }, "F9", function () awful.util.spawn("firefox") end,
          {description = "abrir o navegador", group = "launcher"}),
          
-- Abrir o gerenciador de arquivos com "super + 10"
awful.key({ modkey }, "10", function () awful.util.spawn("nautilus") end,
          {description = "abrir o gerenciador de arquivos", group = "launcher"}),
          
-- Abrir o terminal com "super + enter"
awful.key({ modkey }, "Return", function () awful.util.spawn("xterm") end,
          {description = "abrir o terminal", group = "launcher"}),
          
-- Matar a janela com "super + K"
awful.key({ modkey, "Control" }, "k", function () 
            local c = client.focus
            c:kill()
          end,
          {description = "matar a janela", group = "client"}),

