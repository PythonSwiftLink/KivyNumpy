
// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "KivyNumpy", 
    platforms: [.iOS(.v13)], 
    products: [
    	.library(
        	name: "KivyNumpy", 
        	targets: [
        		"KivyNumpy"
        	]
    	), 
    ], 
    dependencies: [
    	.package(url: "https://github.com/PythonSwiftLink/PythonCore", .upToNextMajor(from: "311.0.0"))
    ], 
    targets: [
    	.target(
        	name: "KivyNumpy", 
        	dependencies: [
        		.product(name: "PythonCore", package: "PythonCore"), 
        		"libnumpy", 
        		"libnpyrandom", 
        		"libnpymath", 
        	], 
        	resources: [
        	], 
        	linkerSettings: [
        		.linkedFramework("Accelerate"), 
        	]
    	), 
    	.binaryTarget(name: "libnumpy", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.0/libnumpy.zip", checksum: "324405eafabcf78e330249895773b88e373b4af16d9e6b57219c26d1df0257e4"), 
    	.binaryTarget(name: "libnpyrandom", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.0/libnpyrandom.zip", checksum: "6ea4a9d1877721542dd459c035866958b32d466fbad210109edda78d8f4ca6ac"), 
    	.binaryTarget(name: "libnpymath", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.0/libnpymath.zip", checksum: "33ad61c2d7dc751e6d213d8878eb59e06ad41a529f603b7232d4c5de8ab3832d"), 
    ]
)