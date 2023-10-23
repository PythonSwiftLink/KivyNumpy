
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
    	.binaryTarget(name: "libnumpy", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.0/libnumpy.zip", checksum: "44c99baf15722003ce5b1ba0d3c2b5cfd6e3e671300cff793abdfcd923bca5aa"), 
    	.binaryTarget(name: "libnpyrandom", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.0/libnpyrandom.zip", checksum: "6c6bd30378bc32e5a7565f9b5572d5b8066396a03aba1c8dad8e773563f9c692"), 
    	.binaryTarget(name: "libnpymath", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.0/libnpymath.zip", checksum: "d0a28a3e626bc9e5f0623c5afffacb20a84f121862859210614321b2c3595f1d"), 
    ]
)