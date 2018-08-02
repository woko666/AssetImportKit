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

  s.default_subspec = 'Source'

  s.subspec 'Source' do |source|
    source.source = {
      :git => 'https://github.com/eugenebokhan/AssetImportKit.git',
      :tag => 'v1.0.0'
    }
    source.source_files  = 'AssetImportKit/**/*.{swift,h,cpp,map}'
    source.xcconfig = {
      'ENABLE_BITCODE' => 'NO',
      'TARGETED_DEVICE_FAMILY' => '1,2',
      'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'NO',
      'GCC_WARN_64_TO_32_BIT_CONVERSION' => 'NO',
      'CLANG_WARN_COMMA' => 'NO',
      'GCC_WARN_UNUSED_VARIABLE' => 'NO',
      'CLANG_WARN_UNREACHABLE_CODE' => 'NO',
      'GCC_WARN_UNUSED_FUNCTION' => 'NO',
      'GCC_WARN_UNUSED_VALUE' => 'NO',
      'GCC_WARN_UNUSED_VARIABLE' => 'NO',
      'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/AssetImportKit/'
     }
  end

  s.subspec 'GenericGeviceBinary' do |iOSBinary|
    iOSBinary.platform = :ios, "11.3"
    iOSBinary.source = {
      :http => 'https://github.com/eugenebokhan/AssetImportKit/raw/master/Prebuilt/iOS_Binary_for_Generic_Gevice.zip'
    }
    iOSBinary.vendored_frameworks = 'AssetImportKit.framework'
  end


end
