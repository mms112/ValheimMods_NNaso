# ValheimMods

## Building SpeedyPaths
1. Follow Enviroment Setup: https://docs.bepinex.dev/articles/dev_guide/plugin_tutorial/1_setup.html
1. Collect required libs from from BepInEx & Unity (See _SpeedyPaths/Libs/readme.txt_). Place in _/SpeedyPaths/Libs_
3. run SpeedyPaths/build.bat

## Building Art (only needed if changing icons)
### Icons can be found in _UnityAssets/SpeedyPaths_
1. Install Unity (preffered Unity 2019.4.22f1)
2. Update path to unity in _UnityAssets/build_assetbundles.bat_
3. Run _UnityAssets/build_assetbundles.bat_
4. copy built bundle _UnityAssets/AssetBundles/nex.speedypaths_ to _SpeedyPaths/nex.speedypaths_

## Building release distribution package
1. Build SpeedyPaths, remember to increment mod version in SpeedyPaths.cs
2. Run _package gen/generate package.ps1_ as Administrator
3. Built package will be in _package gen/Release Assets/\<mod-version\>\_dev/SpeedyPaths\_\<mod-version\>.zip_