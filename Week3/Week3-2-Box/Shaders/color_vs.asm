//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer cbPerObject
// {
//
//   float4x4 gWorldViewProj;           // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// cbPerObject                       cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyz         0     NONE   float   xyz 
// COLOR                    0   xyzw        1     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// COLOR                    0   xyzw        1     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[4], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
dcl_temps 1
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)
dp4 o0.x, r0.xyzw, cb0[0].xyzw
dp4 o0.y, r0.xyzw, cb0[1].xyzw
dp4 o0.z, r0.xyzw, cb0[2].xyzw
dp4 o0.w, r0.xyzw, cb0[3].xyzw
mov o1.xyzw, v1.xyzw
ret 
// Approximately 8 instruction slots used