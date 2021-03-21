using System.Collections.Generic;
using BepInEx;
using AuthoritativeConfig;
using HarmonyLib;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

namespace DummyTest
{
    [BepInPlugin("nex.DummyTest", "Dummy Test", "1.0.0")]
    public class DummyTestMod : BaseUnityPlugin { 

        public new static BepInEx.Logging.ManualLogSource Logger;
        public new AuthoritativeConfig.Config Config
        {
            get { return AuthoritativeConfig.Config.Instance; }
            set {}
        }
        
        void Awake() {
            Logger = base.Logger;
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
