//
//  SCNAssetImporterAnimation.swift
//  AssetImportKit
//
//  Created by Eugene Bokhan on 2/11/18.
//  Copyright © 2018 Eugene Bokhan. All rights reserved.
//

import SceneKit

/**
 An object that contains the skeletal key frame animations for the bones which
 are a part of the animation.
 */
@objc public class AssetImporterAnimation: SCNScene {
    
    // MARK: - Animation data
    
    /**
     @name Animation data
     */
    public var key: String?
    
    /**
     The dictionary of CAKeyframeAnimation objects, where each key is a bone name.
     */
    public var frameAnims: NSDictionary?
    
    // MARK: - Creating a scene animation
    
    /**
     Create a scene animation with a name and a dictionary of key frame animations
     for the bones in the animation.
     
     @param key The animation key.
     @param anims The dictionary of key frame animations.
     @return A new scene animation object.
     */
    public init(key: String, frameAnims: NSDictionary) {
        super.init()
        self.key = key
        self.frameAnims = frameAnims
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

