#
# Be sure to run `pod lib lint IosUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AssetImportKit'
  s.version          = '1.0.1'
  s.summary          = 'Swifty cross platform library (macOS, iOS) that converts Assimp supported models to SceneKit scenes.'
  s.description      = 'AssetImportKit allows you to import Assimp supported file formats directly in SceneKit at runtime. The library supports: geometry, materials (with color, embedded textures and external textures), cameras, skeletal animations, serialization to .scn format.'

  s.homepage         = "https://github.com/woko666/AssetImportKit"
  s.author           = { 'Eugene Bokhan' => 'eugenebokhan@protonmail.com' }
  s.source           = { :git => "https://github.com/woko666/AssetImportKit.git" }

  s.ios.deployment_target = '11.3'
  s.swift_version = '4.2'

  s.xcconfig = {
    "SWIFT_INCLUDE_PATHS" => "$(PODS_ROOT)/AssetImportKit/AssetImportKit/AssetImportKit/",
    "ENABLE_BITCODE" => "NO",
    "OTHER_LDFLAGS" => "-ObjC -all_load -lz -lstdc++"
  }

  s.source_files  = ["AssetImportKit/**/*.{swift}"]
  s.preserve_paths = ["AssetImportKit/AssetImportKit/Dependencies/**/*", "AssetImportKit/AssetImportKit/module.map"]
  s.vendored_libraries = ["AssetImportKit/AssetImportKit/Dependencies/Assimp/Library/libassimp-fat.a"]
  s.library = 'assimp-fat'
end
