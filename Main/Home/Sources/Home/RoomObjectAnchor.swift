//
//  File.swift
//  
//
//  Created by ミズキ on 2022/12/28.
//

import RoomPlan
import ARKit
import RealityKit

final class RoomObjectAnchor: ARAnchor {
    
    private(set) var roomObjTransform: simd_float4x4
    private(set) var dimensions: simd_float3
    private(set) var category: CapturedRoom.Object.Category!
    private(set) var surfaceCategory: CapturedRoom.Surface.Category!
    
    
    init(_ object: CapturedRoom.Object) {
        self.roomObjTransform = object.transform
        self.dimensions = object.dimensions
        self.category = object.category
        super.init(transform: object.transform)
    }
    
    init(_ surface: CapturedRoom.Surface) {
        self.roomObjTransform = surface.transform
        self.dimensions = surface.dimensions
        self.surfaceCategory = surface.category
        super.init(transform: surface.transform)
    }
    
    init(roomObjTransform: simd_float4x4,
         dimensions: simd_float3,
         category: CapturedRoom.Object.Category) {
        self.roomObjTransform = roomObjTransform
        self.dimensions = dimensions
        self.category = category
        super.init(transform: roomObjTransform)
    }
    
    required init(anchor: ARAnchor) {
        fatalError("init(anchor:) has not been implemented")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
