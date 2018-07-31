//
//  PostProcessingFlags.swift
//  AssetImportKit
//
//  Created by Eugene Bokhan on 2/11/18.
//  Copyright © 2018 Eugene Bokhan. All rights reserved.
//

import Foundation
import scene
import postprocess

// -----------------------------------------------------------------------------
/** AssetImporter_ProcessPreset_TargetRealtimeUse_Fast
 *  @brief Default postprocess configuration optimizing the data for real-time
 *  rendering.
 *
 *  Applications would want to use this preset to load models on end-user PCs,
 *  maybe for direct use in game.
 *
 *  If you don't support UV transformations in your application apply the
 *  AssetImporter_Process_TransformUVCoords step, too.
 *  @note Please take the time to read the docs for the steps enabled by this
 *  preset.
 *  Some of them offer further configurable properties, while some of them might
 *   not be of use for you so it might be better to not specify them.
 */
public let realtimeFast: AssetImporterPostProcessSteps = [.process_CalcTangentSpace,
                                                                .process_GenNormals,
                                                                .joinIdenticalVertices,
                                                                .process_Triangulate,
                                                                .process_GenUVCoords,
                                                                .process_SortByPType]

// -----------------------------------------------------------------------------
/** AssetImporter_ProcessPreset_TargetRealtime_Quality
 *  Default postprocess configuration optimizing the data for real-time
 *  rendering.
 *
 *  Unlike AssetImporter_ProcessPreset_TargetRealtime_Fast, this configuration
 *  performs some extra optimizations to improve rendering speed and
 *  to minimize memory usage. It could be a good choice for a level editor
 *  environment where import speed is not so important.
 *
 *  If you don't support UV transformations
 *  in your application apply the AssetImporter_Process_TransformUVCoords step, too.
 *  @note Please take the time to read the docs for the steps enabled by this
 *  preset.
 *  Some of them offer further configurable properties, while some of them might
 *  not be of use for you so it might be better to not specify them.
 */
public let realtimeQuality: AssetImporterPostProcessSteps = [.process_CalcTangentSpace,
                                                                   .process_GenSmoothNormals,
                                                                   .process_ImproveCacheLocality,
                                                                   .process_LimitBoneWeights,
                                                                   .process_RemoveRedundantMaterials,
                                                                   .process_SplitLargeMeshes,
                                                                   .process_Triangulate,
                                                                   .process_GenUVCoords,
                                                                   .process_SortByPType,
                                                                   .process_FindDegenerates,
                                                                   .process_FindInvalidData]


// ------------------------------------------------------------------------------
/** AssetImporter_ProcessPreset_TargetRealtime_MaxQuality
 *  Default postprocess configuration optimizing the data for real-time
 *  rendering.
 *
 *  This preset enables almost every optimization step to achieve perfectly
 *  optimized data. It's your choice for level editor environments where import
 *  speed is not important.
 *
 *  If you're using DirectX, don't forget to combine this value with the
 *  AssetImporter_Process_ConvertToLeftHanded step. If you don't support UV
 *  transformations in your application, apply the
 *  AssetImporter_Process_TransformUVCoords step, too. @note Please take the time to
 *  read the docs for the steps enabled by this preset. Some of them offer
 *  further configurable properties, while some of them might not be of use for
 *  you so it might be better to not specify them.
 */
public let realtimeMaxQuality: AssetImporterPostProcessSteps = [realtimeQuality,
                                                                      .process_FindInstances,
                                                                      .process_ValidateDataStructure,
                                                                      .process_OptimizeMeshes]
