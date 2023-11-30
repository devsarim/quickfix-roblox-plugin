# QuickFix

Optimization is key when creating games for large audiences. This plugin assists you in swiftly toggling properties such as CanCollide, CanQuery, CanTouch, Anchored, CastShadow, CollisionFidelity, and Material on or off for any number of objects.

This plugin uses Roact for UI. The interface is divided into the following components:

- [App](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Plugin.server.lua#L16)
  - [SelectedObjects](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/SelectedObject.lua)
  - [Actions](https://github.com/devsarim/quickfix-roblox-plugin/tree/main/src/Actions)
    - [DualAction](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/DualAction.lua)
      - [AnchoredAction](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/AnchoredAction.lua)
      - [CanCollideAction](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/CanCollideAction.lua)
      - [CanQueryAction](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/CanQueryAction.lua)
      - [CanTouchAction](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/CanTouchAction.lua)
      - [CastShadowAction](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/CastShadowAction.lua)
   
    - [SingleAction](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/SingleAction.lua)
      - [SelectMeshPartsAction](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/SelectMeshPartsAction.lua)
      - [SelectPartsAction](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/SelectPartsAction.lua)
      - [SmoothPlasticAction](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/SmoothPlasticAction.lua)
     
There is one helper module called [GetAffectedObjects](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/GetAffectedObjects.lua). This is simply a function with the following signature:
```lua
(predicate: (object: Instance) -> boolean) -> {Instance}
```
It is used by [SingleAction](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/SingleAction.lua#L25) and DualAction ([here](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/DualAction.lua#L30) and [here](https://github.com/devsarim/quickfix-roblox-plugin/blob/main/src/Actions/DualAction.lua#L57)).

Feel free to extend the plugin to fit your needs, or just as a learning experience. ❤️
