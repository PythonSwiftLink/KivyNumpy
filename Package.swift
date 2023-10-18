
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
    	.package(url: "https://github.com/PythonSwiftLink/KivyPythonCore", .upToNextMajor(from: "310.0.0"))
    ], 
    targets: [
    	.target(
        	name: "KivyNumpy", 
        	dependencies: [
        		.product(name: "PythonCore", package: "KivyPythonCore"), 
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
    	.binaryTarget(name: "libnumpy", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/310.1.0/libnumpy.zip", checksum: "2f471acd3ebe2e77731f3be6929bd22c7fc7f7ca0adcecf5a56796daeef107ab"), 
    	.binaryTarget(name: "libnpyrandom", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/310.1.0/libnpyrandom.zip", checksum: "8cfa2f2d1edc30a93a0faaecf1d6093e57b6975da980d850e57a18056e53efad"), 
    	.binaryTarget(name: "libnpymath", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/310.1.0/libnpymath.zip", checksum: "c816b4534e730b7481744e1598491a2de657e452ab6a715b199fa18520c9467a"), 
    ]
)