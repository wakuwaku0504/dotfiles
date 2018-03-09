import XMonad

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks

--import XMonad.Layout
--import XMonad.Layout.DragPane
--import XMonad.Layout.Gaps
--import XMonad.Layout.LayoutScreens
--import XMonad.Layout.NoBorders
--import XMonad.Layout.PerWorkspace
--import XMonad.Layout.ResizableTile
--import XMonad.Layout.Simplest
--import XMonad.Layout.SimplestFloat
--import XMonad.Layout.Spacing
--import XMonad.Layout.ToggleLayouts
--import XMonad.Layout.TwoPane

import XMonad.Util.Run
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Util.SpawnOnce

import System.IO

myTerminal            = "urxvt"
myBorderWidth         = 2
myNormalBorderColor   = "#cccccc"
myForcusedBorderColor = "#cd8b00"

--- gapwidth
gapwidth = 4
gwU = 2
gwD = 1
gwL = 38
gwR = 37

main::IO()
main = do
  myStatusBar <- spawnPipe "xmobar"
  xmonad $ defaultConfig
    { borderWidth        = myBorderWidth 
    , terminal           = myTerminal
    , normalBorderColor  = myNormalBorderColor
    , focusedBorderColor = myForcusedBorderColor 
--    , layoutHook         = myLayoutHook 
    , manageHook         = myManageHook 
    , logHook            = myLogHook myStatusBar
    , startupHook        = myStartupHook       
    }

myStartupHook = do
        unsafeSpawn "nm-applet"
        unsafeSpawn "feh --image-bg black --bg-max ~/.wallpaper/wallpaper"
        unsafeSpawn "dunst"
        unsafeSpawn "conky"
        unsafeSpawn "compton --config ~/.config/compton/compton.conf"
        unsafeSpawn "~/.i3/scripts/battery_report"

--myLayout = spacing gapwidth $ gaps [(U,gwU),(D,gwD),(L,gwL),(R,gwR)]
--         $ (ResizableTall 1 (1/205) (120/205) [])
--            ||| (twonPane (1/205) (120/205))
--            ||| Simplest
--myLayoutHook = avoidStruts $ ( toggleLayouts (noBorders Full)
--                           $ onWorkspace "3" simplestFloat
--                           $ myLayout
--                           )

myManageHook = manageDocks <+> manageHook defaultConfig


myLogHook h = dynamicLogWithPP xmobarPP {
              ppOutput = hPutStrLn h
}
