Pod::Spec.new do |s|

  s.name         = "AssetImportKit"
  s.version      = "1.0.0"
  s.summary      = "Swifty cross platform library (macOS, iOS) that converts Assimp supported models to SceneKit scenes."

  s.description  = "AssetImportKit allows you to import Assimp supported file formats directly in SceneKit at runtime. The library supports: geometry, materials (with color, embedded textures and external textures), cameras, skeletal animations, serialization to .scn format."

  s.homepage     = "https://github.com/eugenebokhan/AssetImportKit"
  s.screenshots  = "https://github.com/eugenebokhan/AssetImportKit/raw/master/Media/AssetImportKit_Demonstration.png", "https://github.com/eugenebokhan/AssetImportKit/raw/master/SceneKitAssetImport/Media/SceneKitAssetImport_HowToUse.png"

  s.license      = { :type => "BSD 3-Clause", :file => "LICENSE" }

  s.author             = { "Eugene Bokhan" => "eugenebokhan@protonmail.com" }
  s.social_media_url   = "http://twitter.com/eugenebokhan"

  s.platform = :ios, "11.3"
  s.source = {
    :http => 'https://github.com/eugenebokhan/AssetImportKit/raw/master/Prebuilt/iOS_Binary_for_Generic_Gevice.zip'
  }
  s.vendored_frameworks = 'AssetImportKit.framework'

end
