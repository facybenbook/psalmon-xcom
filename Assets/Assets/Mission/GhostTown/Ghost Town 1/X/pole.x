xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.22
// Website: http://www.unwrap3d.com
// Time: Sun Jul 04 20:41:46 2010

// Start of Templates

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template FVFData {
 <b6e70a0e-8ef9-4e83-94ad-ecc8b0c04897>
 DWORD dwFVF;
 DWORD nDWords;
 array DWORD data[nDWords];
}

template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

template XSkinMeshHeader {
 <3CF169CE-FF7C-44ab-93C0-F78F62D172E2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template SkinWeights {
 <6F0D123B-BAD2-4167-A0D0-80224F25FABB>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9E415A43-7BA6-4a73-8743-B73D47E88476>
 DWORD AnimTicksPerSecond;
}

AnimTicksPerSecond {
 30;
}

// Start of Frames

   Frame pole {
      FrameTransformMatrix {
       1.000000, 0.000000, 0.000000, 0.000000,
       0.000000, 1.000000, 0.000000, 0.000000,
       0.000000, 0.000000, 1.000000, 0.000000,
       0.000000, 0.000000, 0.000000, 1.000000;;
      }

   }

   Frame Body {
      FrameTransformMatrix {
       1.000000, 0.000000, 0.000000, 0.000000,
       0.000000, 1.000000, 0.000000, 0.000000,
       0.000000, 0.000000, 1.000000, 0.000000,
       0.000000, 0.000000, 0.000000, 1.000000;;
      }

      Mesh skinnedMesh {
       112;
       2.868310; 0.000000; 0.060959;,
       2.704150; 0.000000; 0.991959;,
       2.704150; 0.000000; -0.870140;,
       2.231458; 0.000000; 1.810654;,
       2.231458; 0.000000; -1.688843;,
       1.507252; 0.000000; 2.418358;,
       1.507252; 0.000000; -2.296547;,
       0.618880; 0.000000; 2.741653;,
       0.618880; 0.000000; -2.619843;,
       -0.326500; 0.000000; 2.741653;,
       -0.326500; 0.000000; -2.619843;,
       -1.214870; 0.000000; 2.418358;,
       -1.214870; 0.000000; -2.296547;,
       -1.939080; 0.000000; 1.810654;,
       -1.939080; 0.000000; -1.688843;,
       -2.411770; 0.000000; 0.991959;,
       -2.411770; 0.000000; -0.870140;,
       -2.575930; 0.000000; 0.060959;,
       2.704150; 258.699036; 0.991959;,
       2.868310; 258.699036; 0.060959;,
       2.231458; 258.699036; 1.810654;,
       2.704150; 258.699036; -0.870140;,
       1.507252; 258.699036; 2.418358;,
       2.231458; 258.699036; -1.688843;,
       0.618880; 258.699036; 2.741653;,
       1.507252; 258.699036; -2.296547;,
       -0.326500; 258.699036; 2.741653;,
       0.618880; 258.699036; -2.619843;,
       -1.214870; 258.699036; 2.418358;,
       -0.326500; 258.699036; -2.619843;,
       -1.939080; 258.699036; 1.810654;,
       -1.214870; 258.699036; -2.296547;,
       -2.411770; 258.699036; 0.991959;,
       -1.939080; 258.699036; -1.688843;,
       -2.575930; 258.699036; 0.060959;,
       -2.411770; 258.699036; -0.870140;,
       2.704150; 258.699036; -0.870140;,
       2.868310; 258.699036; 0.060959;,
       2.704150; 172.873016; -0.188446;,
       2.868310; 172.873016; 0.742554;,
       2.231458; 258.699036; -1.688843;,
       2.231458; 172.873016; -1.007240;,
       1.507252; 258.699036; -2.296547;,
       1.507252; 172.873016; -1.614845;,
       0.618880; 258.699036; -2.619843;,
       0.618880; 172.873016; -1.938240;,
       -0.326500; 258.699036; -2.619843;,
       -0.326500; 172.873016; -1.938240;,
       -1.214870; 258.699036; -2.296547;,
       -0.326500; 258.699036; -2.619843;,
       -1.214870; 172.873016; -1.614845;,
       -0.326500; 172.873016; -1.938240;,
       -1.939080; 258.699036; -1.688843;,
       -1.939080; 172.873016; -1.007240;,
       -2.411770; 258.699036; -0.870140;,
       -2.411770; 172.873016; -0.188446;,
       -2.575930; 258.699036; 0.060959;,
       -2.575930; 172.873016; 0.742554;,
       -2.411770; 258.699036; 0.991959;,
       -2.411770; 172.873016; 1.673553;,
       -1.939080; 258.699036; 1.810654;,
       -1.939080; 172.873016; 2.492256;,
       -1.214870; 258.699036; 2.418358;,
       -1.214870; 172.873016; 3.099953;,
       -0.326500; 258.699036; 2.741653;,
       -0.326500; 172.873016; 3.423355;,
       0.618880; 258.699036; 2.741653;,
       0.618880; 172.873016; 3.423355;,
       1.507252; 258.699036; 2.418358;,
       1.507252; 172.873016; 3.099953;,
       2.231458; 258.699036; 1.810654;,
       2.231458; 172.873016; 2.492256;,
       2.704150; 258.699036; 0.991959;,
       2.704150; 172.873016; 1.673553;,
       2.411776; 81.285118; -1.673645;,
       2.575941; 81.285118; -0.742645;,
       2.704150; 0.000000; -0.870140;,
       2.868310; 0.000000; 0.060959;,
       1.939084; 81.285118; -2.492340;,
       2.231458; 0.000000; -1.688843;,
       1.214879; 81.285118; -3.100044;,
       1.507252; 0.000000; -2.296547;,
       0.326510; 81.285118; -3.423347;,
       0.618880; 0.000000; -2.619843;,
       -0.618880; 81.285118; -3.423347;,
       -0.326500; 0.000000; -2.619843;,
       -1.507240; 81.285118; -3.100044;,
       -0.618880; 81.285118; -3.423347;,
       -1.214870; 0.000000; -2.296547;,
       -0.326500; 0.000000; -2.619843;,
       -2.231450; 81.285118; -2.492340;,
       -1.939080; 0.000000; -1.688843;,
       -2.704140; 81.285118; -1.673645;,
       -2.411770; 0.000000; -0.870140;,
       -2.868310; 81.285118; -0.742645;,
       -2.575930; 0.000000; 0.060959;,
       -2.704140; 81.285118; 0.188354;,
       -2.411770; 0.000000; 0.991959;,
       -2.231450; 81.285118; 1.007156;,
       -1.939080; 0.000000; 1.810654;,
       -1.507250; 81.285118; 1.614853;,
       -1.214870; 0.000000; 2.418358;,
       -0.618880; 81.285118; 1.938156;,
       -0.326500; 0.000000; 2.741653;,
       0.326510; 81.285118; 1.938156;,
       0.618880; 0.000000; 2.741653;,
       1.214878; 81.285118; 1.614853;,
       1.507252; 0.000000; 2.418358;,
       1.939084; 81.285118; 1.007156;,
       2.231458; 0.000000; 1.810654;,
       2.411776; 81.285118; 0.188354;,
       2.704150; 0.000000; 0.991959;;
       140;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;2, 3, 4;,
       3;3, 5, 4;,
       3;4, 5, 6;,
       3;5, 7, 6;,
       3;6, 7, 8;,
       3;7, 9, 8;,
       3;8, 9, 10;,
       3;9, 11, 10;,
       3;10, 11, 12;,
       3;11, 13, 12;,
       3;12, 13, 14;,
       3;13, 15, 14;,
       3;14, 15, 16;,
       3;15, 17, 16;,
       3;18, 19, 20;,
       3;19, 21, 20;,
       3;20, 21, 22;,
       3;21, 23, 22;,
       3;22, 23, 24;,
       3;23, 25, 24;,
       3;24, 25, 26;,
       3;25, 27, 26;,
       3;26, 27, 28;,
       3;27, 29, 28;,
       3;28, 29, 30;,
       3;29, 31, 30;,
       3;30, 31, 32;,
       3;31, 33, 32;,
       3;32, 33, 34;,
       3;33, 35, 34;,
       3;36, 37, 38;,
       3;37, 39, 38;,
       3;40, 36, 41;,
       3;36, 38, 41;,
       3;42, 40, 43;,
       3;40, 41, 43;,
       3;44, 42, 45;,
       3;42, 43, 45;,
       3;46, 44, 47;,
       3;44, 45, 47;,
       3;48, 49, 50;,
       3;49, 51, 50;,
       3;52, 48, 53;,
       3;48, 50, 53;,
       3;54, 52, 55;,
       3;52, 53, 55;,
       3;56, 54, 57;,
       3;54, 55, 57;,
       3;58, 56, 59;,
       3;56, 57, 59;,
       3;60, 58, 61;,
       3;58, 59, 61;,
       3;62, 60, 63;,
       3;60, 61, 63;,
       3;64, 62, 65;,
       3;62, 63, 65;,
       3;66, 64, 67;,
       3;64, 65, 67;,
       3;68, 66, 69;,
       3;66, 67, 69;,
       3;70, 68, 71;,
       3;68, 69, 71;,
       3;72, 70, 73;,
       3;70, 71, 73;,
       3;37, 72, 39;,
       3;72, 73, 39;,
       3;38, 39, 74;,
       3;39, 75, 74;,
       3;74, 75, 76;,
       3;75, 77, 76;,
       3;41, 38, 78;,
       3;38, 74, 78;,
       3;78, 74, 79;,
       3;74, 76, 79;,
       3;43, 41, 80;,
       3;41, 78, 80;,
       3;80, 78, 81;,
       3;78, 79, 81;,
       3;45, 43, 82;,
       3;43, 80, 82;,
       3;82, 80, 83;,
       3;80, 81, 83;,
       3;47, 45, 84;,
       3;45, 82, 84;,
       3;84, 82, 85;,
       3;82, 83, 85;,
       3;50, 51, 86;,
       3;51, 87, 86;,
       3;86, 87, 88;,
       3;87, 89, 88;,
       3;53, 50, 90;,
       3;50, 86, 90;,
       3;90, 86, 91;,
       3;86, 88, 91;,
       3;55, 53, 92;,
       3;53, 90, 92;,
       3;92, 90, 93;,
       3;90, 91, 93;,
       3;57, 55, 94;,
       3;55, 92, 94;,
       3;94, 92, 95;,
       3;92, 93, 95;,
       3;59, 57, 96;,
       3;57, 94, 96;,
       3;96, 94, 97;,
       3;94, 95, 97;,
       3;61, 59, 98;,
       3;59, 96, 98;,
       3;98, 96, 99;,
       3;96, 97, 99;,
       3;63, 61, 100;,
       3;61, 98, 100;,
       3;100, 98, 101;,
       3;98, 99, 101;,
       3;65, 63, 102;,
       3;63, 100, 102;,
       3;102, 100, 103;,
       3;100, 101, 103;,
       3;67, 65, 104;,
       3;65, 102, 104;,
       3;104, 102, 105;,
       3;102, 103, 105;,
       3;69, 67, 106;,
       3;67, 104, 106;,
       3;106, 104, 107;,
       3;104, 105, 107;,
       3;71, 69, 108;,
       3;69, 106, 108;,
       3;108, 106, 109;,
       3;106, 107, 109;,
       3;73, 71, 110;,
       3;71, 108, 110;,
       3;110, 108, 111;,
       3;108, 109, 111;,
       3;39, 73, 75;,
       3;73, 110, 75;,
       3;75, 110, 77;,
       3;110, 111, 77;;

      MeshNormals {
       112;
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; -1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.000000; 1.000000; 0.000000;,
       0.939690; -0.002716; -0.342016;,
       1.000000; 0.000000; 0.000009;,
       0.939696; -0.000085; -0.342009;,
       0.999999; -0.001596; 0.000004;,
       0.766037; -0.005105; -0.642776;,
       0.766042; 0.001436; -0.642789;,
       0.499977; -0.006878; -0.866011;,
       0.499993; 0.002784; -0.866025;,
       0.173621; -0.007821; -0.984781;,
       0.173651; 0.003796; -0.984800;,
       0.000000; -0.007941; -0.999968;,
       0.000000; 0.004136; -0.999992;,
       -0.499977; -0.006878; -0.866012;,
       -0.341969; -0.007463; -0.939682;,
       -0.499988; 0.004380; -0.866021;,
       -0.342021; 0.004432; -0.939682;,
       -0.766037; -0.005105; -0.642777;,
       -0.766037; 0.003881; -0.642785;,
       -0.939691; -0.002716; -0.342015;,
       -0.939693; 0.002914; -0.342006;,
       -1.000000; -0.000000; 0.000009;,
       -0.999999; 0.001596; 0.000005;,
       -0.939687; 0.002716; 0.342025;,
       -0.939691; 0.000085; 0.342025;,
       -0.766035; 0.005105; 0.642778;,
       -0.766045; -0.001436; 0.642785;,
       -0.499977; 0.006878; 0.866012;,
       -0.500010; -0.002784; 0.866015;,
       -0.173621; 0.007821; 0.984781;,
       -0.173653; -0.003796; 0.984800;,
       0.173621; 0.007822; 0.984781;,
       0.173651; -0.004350; 0.984798;,
       0.499977; 0.006878; 0.866011;,
       0.500007; -0.004380; 0.866010;,
       0.766036; 0.005105; 0.642778;,
       0.766041; -0.003881; 0.642780;,
       0.939687; 0.002716; 0.342026;,
       0.939687; -0.002915; 0.342024;,
       0.939693; 0.001273; -0.342016;,
       1.000000; 0.000202; -0.000001;,
       0.939689; -0.000001; -0.342030;,
       0.999994; 0.003597; -0.000001;,
       0.766040; 0.002190; -0.642789;,
       0.766041; -0.003599; -0.642782;,
       0.499995; 0.002842; -0.866024;,
       0.499983; -0.006762; -0.866009;,
       0.173654; 0.003152; -0.984802;,
       0.173624; -0.009110; -0.984770;,
       0.000000; 0.003164; -0.999995;,
       0.000000; -0.009885; -0.999951;,
       -0.499994; 0.002640; -0.866025;,
       -0.342029; 0.002904; -0.939685;,
       -0.499966; -0.010359; -0.865983;,
       -0.341970; -0.010519; -0.939652;,
       -0.766041; 0.001879; -0.642789;,
       -0.766014; -0.009109; -0.642759;,
       -0.939694; 0.000892; -0.342014;,
       -0.939667; -0.006761; -0.342022;,
       -1.000000; -0.000202; 0.000001;,
       -0.999994; -0.003597; 0.000001;,
       -0.939694; -0.001273; 0.342014;,
       -0.939698; 0.000001; 0.342005;,
       -0.766053; -0.002189; 0.642773;,
       -0.766059; 0.003599; 0.642760;,
       -0.500012; -0.002842; 0.866014;,
       -0.499981; 0.006762; 0.866010;,
       -0.173656; -0.003152; 0.984801;,
       -0.173624; 0.009110; 0.984770;,
       0.173653; -0.003082; 0.984802;,
       0.173621; 0.010359; 0.984758;,
       0.500010; -0.002640; 0.866015;,
       0.499963; 0.010359; 0.865984;,
       0.766053; -0.001879; 0.642774;,
       0.766030; 0.009109; 0.642740;,
       0.939695; -0.000892; 0.342012;,
       0.939678; 0.006761; 0.341994;;
       140;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;2, 3, 4;,
       3;3, 5, 4;,
       3;4, 5, 6;,
       3;5, 7, 6;,
       3;6, 7, 8;,
       3;7, 9, 8;,
       3;8, 9, 10;,
       3;9, 11, 10;,
       3;10, 11, 12;,
       3;11, 13, 12;,
       3;12, 13, 14;,
       3;13, 15, 14;,
       3;14, 15, 16;,
       3;15, 17, 16;,
       3;18, 19, 20;,
       3;19, 21, 20;,
       3;20, 21, 22;,
       3;21, 23, 22;,
       3;22, 23, 24;,
       3;23, 25, 24;,
       3;24, 25, 26;,
       3;25, 27, 26;,
       3;26, 27, 28;,
       3;27, 29, 28;,
       3;28, 29, 30;,
       3;29, 31, 30;,
       3;30, 31, 32;,
       3;31, 33, 32;,
       3;32, 33, 34;,
       3;33, 35, 34;,
       3;36, 37, 38;,
       3;37, 39, 38;,
       3;40, 36, 41;,
       3;36, 38, 41;,
       3;42, 40, 43;,
       3;40, 41, 43;,
       3;44, 42, 45;,
       3;42, 43, 45;,
       3;46, 44, 47;,
       3;44, 45, 47;,
       3;48, 49, 50;,
       3;49, 51, 50;,
       3;52, 48, 53;,
       3;48, 50, 53;,
       3;54, 52, 55;,
       3;52, 53, 55;,
       3;56, 54, 57;,
       3;54, 55, 57;,
       3;58, 56, 59;,
       3;56, 57, 59;,
       3;60, 58, 61;,
       3;58, 59, 61;,
       3;62, 60, 63;,
       3;60, 61, 63;,
       3;64, 62, 65;,
       3;62, 63, 65;,
       3;66, 64, 67;,
       3;64, 65, 67;,
       3;68, 66, 69;,
       3;66, 67, 69;,
       3;70, 68, 71;,
       3;68, 69, 71;,
       3;72, 70, 73;,
       3;70, 71, 73;,
       3;37, 72, 39;,
       3;72, 73, 39;,
       3;38, 39, 74;,
       3;39, 75, 74;,
       3;74, 75, 76;,
       3;75, 77, 76;,
       3;41, 38, 78;,
       3;38, 74, 78;,
       3;78, 74, 79;,
       3;74, 76, 79;,
       3;43, 41, 80;,
       3;41, 78, 80;,
       3;80, 78, 81;,
       3;78, 79, 81;,
       3;45, 43, 82;,
       3;43, 80, 82;,
       3;82, 80, 83;,
       3;80, 81, 83;,
       3;47, 45, 84;,
       3;45, 82, 84;,
       3;84, 82, 85;,
       3;82, 83, 85;,
       3;50, 51, 86;,
       3;51, 87, 86;,
       3;86, 87, 88;,
       3;87, 89, 88;,
       3;53, 50, 90;,
       3;50, 86, 90;,
       3;90, 86, 91;,
       3;86, 88, 91;,
       3;55, 53, 92;,
       3;53, 90, 92;,
       3;92, 90, 93;,
       3;90, 91, 93;,
       3;57, 55, 94;,
       3;55, 92, 94;,
       3;94, 92, 95;,
       3;92, 93, 95;,
       3;59, 57, 96;,
       3;57, 94, 96;,
       3;96, 94, 97;,
       3;94, 95, 97;,
       3;61, 59, 98;,
       3;59, 96, 98;,
       3;98, 96, 99;,
       3;96, 97, 99;,
       3;63, 61, 100;,
       3;61, 98, 100;,
       3;100, 98, 101;,
       3;98, 99, 101;,
       3;65, 63, 102;,
       3;63, 100, 102;,
       3;102, 100, 103;,
       3;100, 101, 103;,
       3;67, 65, 104;,
       3;65, 102, 104;,
       3;104, 102, 105;,
       3;102, 103, 105;,
       3;69, 67, 106;,
       3;67, 104, 106;,
       3;106, 104, 107;,
       3;104, 105, 107;,
       3;71, 69, 108;,
       3;69, 106, 108;,
       3;108, 106, 109;,
       3;106, 107, 109;,
       3;73, 71, 110;,
       3;71, 108, 110;,
       3;110, 108, 111;,
       3;108, 109, 111;,
       3;39, 73, 75;,
       3;73, 110, 75;,
       3;75, 110, 77;,
       3;110, 111, 77;;
      }

      MeshTextureCoords {
       112;
       0.989547; 0.420965;,
       0.985350; 0.444770;,
       0.985350; 0.397159;,
       0.973264; 0.465702;,
       0.973264; 0.376226;,
       0.954747; 0.481240;,
       0.954747; 0.360688;,
       0.932033; 0.489506;,
       0.932033; 0.352422;,
       0.907861; 0.489506;,
       0.907861; 0.352422;,
       0.885147; 0.481240;,
       0.885147; 0.360688;,
       0.866630; 0.465702;,
       0.866630; 0.376226;,
       0.854545; 0.444770;,
       0.854545; 0.397159;,
       0.850347; 0.420965;,
       0.985350; 0.444770;,
       0.989547; 0.420965;,
       0.973264; 0.465702;,
       0.985350; 0.397159;,
       0.954747; 0.481240;,
       0.973264; 0.376226;,
       0.932033; 0.489506;,
       0.954747; 0.360688;,
       0.907861; 0.489506;,
       0.932033; 0.352422;,
       0.885147; 0.481240;,
       0.907861; 0.352422;,
       0.866630; 0.465702;,
       0.885147; 0.360688;,
       0.854545; 0.444770;,
       0.866630; 0.376226;,
       0.850347; 0.420965;,
       0.854545; 0.397159;,
       0.954871; -1.613384;,
       0.947879; -1.613384;,
       0.949789; -0.197112;,
       0.943000; -0.197112;,
       0.961946; -1.613384;,
       0.957240; -0.197112;,
       0.969139; -1.613384;,
       0.965562; -0.197112;,
       0.976473; -1.613384;,
       0.974852; -0.197112;,
       0.983956; -1.613384;,
       0.984858; -0.197112;,
       0.859483; -1.613384;,
       0.851860; -1.613384;,
       0.862813; -0.197112;,
       0.852762; -0.197112;,
       0.867213; -1.613384;,
       0.872205; -0.197112;,
       0.874997; -1.613384;,
       0.880638; -0.197112;,
       0.882775; -1.613384;,
       0.888178; -0.197112;,
       0.890481; -1.613384;,
       0.895031; -0.197112;,
       0.898070; -1.613384;,
       0.901400; -0.197112;,
       0.905514; -1.613384;,
       0.907449; -0.197112;,
       0.912809; -1.613384;,
       0.913302; -0.197112;,
       0.919969; -1.613384;,
       0.919062; -0.197112;,
       0.927019; -1.613384;,
       0.924816; -0.197112;,
       0.933995; -1.613384;,
       0.930654; -0.197112;,
       0.940934; -1.613384;,
       0.936675; -0.197112;,
       0.961080; 1.314243;,
       0.954227; 1.314243;,
       0.954871; 2.655579;,
       0.947879; 2.655579;,
       0.967449; 1.314243;,
       0.961946; 2.655579;,
       0.973498; 1.314243;,
       0.969139; 2.655579;,
       0.979351; 1.314243;,
       0.976473; 2.655579;,
       0.985110; 1.314243;,
       0.983956; 2.655579;,
       0.858767; 1.314243;,
       0.853013; 1.314243;,
       0.859483; 2.655579;,
       0.851860; 2.655579;,
       0.864605; 1.314243;,
       0.867213; 2.655579;,
       0.870625; 1.314243;,
       0.874997; 2.655579;,
       0.876951; 1.314243;,
       0.882775; 2.655579;,
       0.883739; 1.314243;,
       0.890481; 2.655579;,
       0.891191; 1.314243;,
       0.898070; 2.655579;,
       0.899514; 1.314243;,
       0.905514; 2.655579;,
       0.908803; 1.314243;,
       0.912809; 2.655579;,
       0.918810; 1.314243;,
       0.919969; 2.655579;,
       0.928861; 1.314243;,
       0.927019; 2.655579;,
       0.938254; 1.314243;,
       0.933995; 2.655579;,
       0.946687; 1.314243;,
       0.940934; 2.655579;;
      }

      MeshVertexColors {
       112;
       0; 1.000000; 1.000000; 1.000000; 1.000000;,
       1; 1.000000; 1.000000; 1.000000; 1.000000;,
       2; 1.000000; 1.000000; 1.000000; 1.000000;,
       3; 1.000000; 1.000000; 1.000000; 1.000000;,
       4; 1.000000; 1.000000; 1.000000; 1.000000;,
       5; 1.000000; 1.000000; 1.000000; 1.000000;,
       6; 1.000000; 1.000000; 1.000000; 1.000000;,
       7; 1.000000; 1.000000; 1.000000; 1.000000;,
       8; 1.000000; 1.000000; 1.000000; 1.000000;,
       9; 1.000000; 1.000000; 1.000000; 1.000000;,
       10; 1.000000; 1.000000; 1.000000; 1.000000;,
       11; 1.000000; 1.000000; 1.000000; 1.000000;,
       12; 1.000000; 1.000000; 1.000000; 1.000000;,
       13; 1.000000; 1.000000; 1.000000; 1.000000;,
       14; 1.000000; 1.000000; 1.000000; 1.000000;,
       15; 1.000000; 1.000000; 1.000000; 1.000000;,
       16; 1.000000; 1.000000; 1.000000; 1.000000;,
       17; 1.000000; 1.000000; 1.000000; 1.000000;,
       18; 1.000000; 1.000000; 1.000000; 1.000000;,
       19; 1.000000; 1.000000; 1.000000; 1.000000;,
       20; 1.000000; 1.000000; 1.000000; 1.000000;,
       21; 1.000000; 1.000000; 1.000000; 1.000000;,
       22; 1.000000; 1.000000; 1.000000; 1.000000;,
       23; 1.000000; 1.000000; 1.000000; 1.000000;,
       24; 1.000000; 1.000000; 1.000000; 1.000000;,
       25; 1.000000; 1.000000; 1.000000; 1.000000;,
       26; 1.000000; 1.000000; 1.000000; 1.000000;,
       27; 1.000000; 1.000000; 1.000000; 1.000000;,
       28; 1.000000; 1.000000; 1.000000; 1.000000;,
       29; 1.000000; 1.000000; 1.000000; 1.000000;,
       30; 1.000000; 1.000000; 1.000000; 1.000000;,
       31; 1.000000; 1.000000; 1.000000; 1.000000;,
       32; 1.000000; 1.000000; 1.000000; 1.000000;,
       33; 1.000000; 1.000000; 1.000000; 1.000000;,
       34; 1.000000; 1.000000; 1.000000; 1.000000;,
       35; 1.000000; 1.000000; 1.000000; 1.000000;,
       36; 1.000000; 1.000000; 1.000000; 1.000000;,
       37; 1.000000; 1.000000; 1.000000; 1.000000;,
       38; 1.000000; 1.000000; 1.000000; 1.000000;,
       39; 1.000000; 1.000000; 1.000000; 1.000000;,
       40; 1.000000; 1.000000; 1.000000; 1.000000;,
       41; 1.000000; 1.000000; 1.000000; 1.000000;,
       42; 1.000000; 1.000000; 1.000000; 1.000000;,
       43; 1.000000; 1.000000; 1.000000; 1.000000;,
       44; 1.000000; 1.000000; 1.000000; 1.000000;,
       45; 1.000000; 1.000000; 1.000000; 1.000000;,
       46; 1.000000; 1.000000; 1.000000; 1.000000;,
       47; 1.000000; 1.000000; 1.000000; 1.000000;,
       48; 1.000000; 1.000000; 1.000000; 1.000000;,
       49; 1.000000; 1.000000; 1.000000; 1.000000;,
       50; 1.000000; 1.000000; 1.000000; 1.000000;,
       51; 1.000000; 1.000000; 1.000000; 1.000000;,
       52; 1.000000; 1.000000; 1.000000; 1.000000;,
       53; 1.000000; 1.000000; 1.000000; 1.000000;,
       54; 1.000000; 1.000000; 1.000000; 1.000000;,
       55; 1.000000; 1.000000; 1.000000; 1.000000;,
       56; 1.000000; 1.000000; 1.000000; 1.000000;,
       57; 1.000000; 1.000000; 1.000000; 1.000000;,
       58; 1.000000; 1.000000; 1.000000; 1.000000;,
       59; 1.000000; 1.000000; 1.000000; 1.000000;,
       60; 1.000000; 1.000000; 1.000000; 1.000000;,
       61; 1.000000; 1.000000; 1.000000; 1.000000;,
       62; 1.000000; 1.000000; 1.000000; 1.000000;,
       63; 1.000000; 1.000000; 1.000000; 1.000000;,
       64; 1.000000; 1.000000; 1.000000; 1.000000;,
       65; 1.000000; 1.000000; 1.000000; 1.000000;,
       66; 1.000000; 1.000000; 1.000000; 1.000000;,
       67; 1.000000; 1.000000; 1.000000; 1.000000;,
       68; 1.000000; 1.000000; 1.000000; 1.000000;,
       69; 1.000000; 1.000000; 1.000000; 1.000000;,
       70; 1.000000; 1.000000; 1.000000; 1.000000;,
       71; 1.000000; 1.000000; 1.000000; 1.000000;,
       72; 1.000000; 1.000000; 1.000000; 1.000000;,
       73; 1.000000; 1.000000; 1.000000; 1.000000;,
       74; 1.000000; 1.000000; 1.000000; 1.000000;,
       75; 1.000000; 1.000000; 1.000000; 1.000000;,
       76; 1.000000; 1.000000; 1.000000; 1.000000;,
       77; 1.000000; 1.000000; 1.000000; 1.000000;,
       78; 1.000000; 1.000000; 1.000000; 1.000000;,
       79; 1.000000; 1.000000; 1.000000; 1.000000;,
       80; 1.000000; 1.000000; 1.000000; 1.000000;,
       81; 1.000000; 1.000000; 1.000000; 1.000000;,
       82; 1.000000; 1.000000; 1.000000; 1.000000;,
       83; 1.000000; 1.000000; 1.000000; 1.000000;,
       84; 1.000000; 1.000000; 1.000000; 1.000000;,
       85; 1.000000; 1.000000; 1.000000; 1.000000;,
       86; 1.000000; 1.000000; 1.000000; 1.000000;,
       87; 1.000000; 1.000000; 1.000000; 1.000000;,
       88; 1.000000; 1.000000; 1.000000; 1.000000;,
       89; 1.000000; 1.000000; 1.000000; 1.000000;,
       90; 1.000000; 1.000000; 1.000000; 1.000000;,
       91; 1.000000; 1.000000; 1.000000; 1.000000;,
       92; 1.000000; 1.000000; 1.000000; 1.000000;,
       93; 1.000000; 1.000000; 1.000000; 1.000000;,
       94; 1.000000; 1.000000; 1.000000; 1.000000;,
       95; 1.000000; 1.000000; 1.000000; 1.000000;,
       96; 1.000000; 1.000000; 1.000000; 1.000000;,
       97; 1.000000; 1.000000; 1.000000; 1.000000;,
       98; 1.000000; 1.000000; 1.000000; 1.000000;,
       99; 1.000000; 1.000000; 1.000000; 1.000000;,
       100; 1.000000; 1.000000; 1.000000; 1.000000;,
       101; 1.000000; 1.000000; 1.000000; 1.000000;,
       102; 1.000000; 1.000000; 1.000000; 1.000000;,
       103; 1.000000; 1.000000; 1.000000; 1.000000;,
       104; 1.000000; 1.000000; 1.000000; 1.000000;,
       105; 1.000000; 1.000000; 1.000000; 1.000000;,
       106; 1.000000; 1.000000; 1.000000; 1.000000;,
       107; 1.000000; 1.000000; 1.000000; 1.000000;,
       108; 1.000000; 1.000000; 1.000000; 1.000000;,
       109; 1.000000; 1.000000; 1.000000; 1.000000;,
       110; 1.000000; 1.000000; 1.000000; 1.000000;,
       111; 1.000000; 1.000000; 1.000000; 1.000000;;
      }

      MeshMaterialList {
       1;
       140;
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0;

       Material shanty7 {
        0.992157; 0.992157; 0.992157; 1.000000;;
        1.000000;
        0.150000; 0.150000; 0.150000;;
        0.000000; 0.000000; 0.000000;;

        TextureFilename {
         "shanty7.dds";
        }
       }

      }

      XSkinMeshHeader {
       1;
       1;
       1;
      }

      SkinWeights {
       "pole";
       112;
       0,
       1,
       2,
       3,
       4,
       5,
       6,
       7,
       8,
       9,
       10,
       11,
       12,
       13,
       14,
       15,
       16,
       17,
       18,
       19,
       20,
       21,
       22,
       23,
       24,
       25,
       26,
       27,
       28,
       29,
       30,
       31,
       32,
       33,
       34,
       35,
       36,
       37,
       38,
       39,
       40,
       41,
       42,
       43,
       44,
       45,
       46,
       47,
       48,
       49,
       50,
       51,
       52,
       53,
       54,
       55,
       56,
       57,
       58,
       59,
       60,
       61,
       62,
       63,
       64,
       65,
       66,
       67,
       68,
       69,
       70,
       71,
       72,
       73,
       74,
       75,
       76,
       77,
       78,
       79,
       80,
       81,
       82,
       83,
       84,
       85,
       86,
       87,
       88,
       89,
       90,
       91,
       92,
       93,
       94,
       95,
       96,
       97,
       98,
       99,
       100,
       101,
       102,
       103,
       104,
       105,
       106,
       107,
       108,
       109,
       110,
       111;
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000;
          1.000000, -0.000000, 0.000000, 0.000000,
          -0.000000, 1.000000, -0.000000, 0.000000,
          0.000000, -0.000000, 1.000000, 0.000000,
          -0.000000, -0.000000, -0.000000, 1.000000;;
      }


     }
   }

// Start of Animation

AnimationSet Untitled {
}
