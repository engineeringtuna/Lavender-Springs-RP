# Radial Menu

**A radial menu for redm, allows easier interactions for players.**

## Script Features
- Select walking styles build in to change and update on server side for VORP.
- Add Items to show only for specific jobs.
- Add items from other scripts dynamically.
- Get nearby locations via 3d waypoint

Dependancy [3d_waypoint](https://github.com/EZ-Scripts/3d_waypoint/tree/main), to waypoint Blips for closest location.

## Adding and Removing Dynamically
```lua
exports[‘ez_radialmenu’]:RemoveOption(MenuItemId)

exports[‘ez_radialmenu’]:AddOption(
  {
    id = ‘custommenuitem’,
    title = ‘Custom Menu Item’,
    icon = ‘address-card’,
    type = ‘client’,
    event = ‘name_event’, ← Event name that opens the menu
    shouldClose = true
  },
  nil
)
```
