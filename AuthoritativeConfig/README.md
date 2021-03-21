# AuthoritativeConfig

"Near" Drop in Solution for sending config from Server to Client.

Server Value hidden from clientside config editing tools.

Replaces BepinEx.Configuration and wraps the functionality.

Probably only useful for basic Configs anything with complex configs/ custom config files probably wont work.

# Usage

replace ```using BepInEx.Configuration``` in your mod with ```using AuthoritativeConfig;```

For easy porting existing code, add a new Config member to your mod class inheriting BaseUnityPlugin.
```
public new AuthoritativeConfig.Config Config
{
    get { return AuthoritativeConfig.Config.Instance; }
    set {}
}
```

Then in your mod's Awake method call ```Config.init(BaseUnityPlugin instance, bool defaultBindsToServerAuthoritative)```

Done. Binds have a new bool argument for setting server Authoritative. If not entered they will fall back to the default set in Config.Init().

# Usage Example
```
using System.Collections.Generic;
using BepInEx;
//using BepInEx.Configuration;
using AuthoritativeConfig;
using HarmonyLib;
using System;

namespace ExampleMod
{
    [BepInPlugin("nex.DummyTest", "Dummy Test", "1.0.0")]
    public class DummyTestMod : BaseUnityPlugin { 

        public new AuthoritativeConfig.Config Config
        {
            get { return AuthoritativeConfig.Config.Instance; }
            set {}
        }
        
        void Awake() {
            //Default binds to server Authoritative
            Config.init( this, true );
            Config.Bind("Dummy", "Key1", true, "Server Authoritative test 1");
            Config.Bind("Dummy", "Key2", 0, "Server Authoritative test 1");
            //Server ignores this bind
            Config.Bind("Dummy", "Key3", 20, "Client Authoritative test 1", false);

            Harmony.CreateAndPatchAll(typeof(DummyTestMod));
        }
    }
}
```
