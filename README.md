### TODO
stopped here:
https://sotrh.github.io/learn-wgpu/intermediate/tutorial10-lighting/#ray-path-tracing

- switch to newest wgpu


# WGPU starter set
## format
hooks benutzen, um direkt aus dem Example code in das Buch zu werfen. (rust on esp32 book macht das)
## structure
### WGPU ist das rust crate für webgpu
### Wieso versteht die Grafikkarte mich? (pointer auf funktionen bla)
### GPU als Statemachine. 
### Wie kommt von der cpu etwas auf die grafikkarte? buffer
### (Exkurs Memory Layout wgsl vs Rust vs C -> C funktioniert mit mat und vec nicht -> use encase)
### Buffer erstmal ansagen, dann abschicken und dann befüllen?
### double buffer klären (swap chain capabilities und formats)
### Was sind Shader? (früher noch linedraw usw.)
### Was sind Vertex shader? Dreiecke! (ccw und clockwise erklären) (type system nutzen und position+color als Structs erstellen)
Erstmal ein Dreieck erstellen, ohne es dem über einen Buffer zu übergeben. Also direkt im Shader und draw(1..3, 0..1);
### Was sind Fragment shader? Farbe! (Wie etwas von Shader zu shader gegeben wird erklären)
### Texturen auf dreiecke (texturen space vs dreieckspace)
### Nichts mehr per hand machen: Models (exkurs blender?) -> Meshes, Materials und obj files
### meeeehr Dinge! instancing
### von 2d zu 3d -> camera
### dinge überlappen sich (nicht) -> depth (und stencil?)
### Licht (und normals)
### Normal maps (let's get bumpy)
### Mipmap (let's get far away and very close)
### cubemaps (let's go outside)
### Schatten (-seite der Macht)
### Helle Seite der Macht: bloom und HDR
### Kreative Shader: Ein neuer Anfang
### Compute Shader: Ich kann alles.
