" Vim syntax file
" Language:	Cg
" Maintainer:	Kevin Bjorke <kbjorke@nvidia.com>
" Last change:	$Date$
" File Types:	.cg .fx
" $Id: //devrel/Playpen/kbjorke/doc/cg.vim#1 $

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" Cg extentions
syn keyword cgStatement		tex1D tex2D tex3D texRECT texCUBE
syn keyword cgStatement		tex1Dproj tex2Dproj tex3Dproj texRECTproj texCUBEproj
" syn keyword cgStatement		tex1D_proj tex2D_proj tex3D_proj texRECT_proj texCUBE_proj
" syn keyword cgStatement		tex1D_bias tex2D_bias tex3D_bias texRECT_bias texCUBE_bias
syn keyword cgStatement		offsettex2D offsettexRECT offsettex2DScaleBias offsettexRECTScaleBias 
syn keyword cgStatement		tex1D_dp3 tex2D_dp3x2 texRECT_dp3x2
syn keyword cgStatement		tex3D_dp3x3 texCUBE_dp3x3 tex_dp3x2_depth
syn keyword cgStatement		texCUBE_reflect_dp3x3 texCUBE_reflect_eye_dp3x3
syn keyword cgStatement		discard
syn keyword cgProfile		arbfp1 arbvp1
syn keyword cgProfile		ps_1_1 ps_1_2 ps_1_3 vs_1_1 vs_2_0 vs_2_x ps_2_0 ps_2_x
syn keyword cgProfile		fp20 vp20 fp30 vp30
" many Cg data types
syn keyword cgType		bool bool2 bool3 bool4
syn keyword cgType		bool1x2 bool1x3 bool1x4
syn keyword cgType		bool2x2 bool2x3 bool2x4
syn keyword cgType		bool3x2 bool3x3 bool3x4
syn keyword cgType		bool4x2 bool4x3 bool4x4
syn keyword cgType		half half2 half3 half4
syn keyword cgType		half1x2 half1x3 half1x4
syn keyword cgType		half2x2 half2x3 half2x4
syn keyword cgType		half3x2 half3x3 half3x4
syn keyword cgType		half4x2 half4x3 half4x4
syn keyword cgType		fixed fixed2 fixed3 fixed4
syn keyword cgType		fixed1x2 fixed1x3 fixed1x4
syn keyword cgType		fixed2x2 fixed2x3 fixed2x4
syn keyword cgType		fixed3x2 fixed3x3 fixed3x4
syn keyword cgType		fixed4x2 fixed4x3 fixed4x4
" 'float' is already a C type
syn keyword cgType		float2 float3 float4
syn keyword cgType		float1x2 float1x3 float1x4
syn keyword cgType		float2x2 float2x3 float2x4
syn keyword cgType		float3x2 float3x3 float3x4
syn keyword cgType		float4x2 float4x3 float4x4
syn keyword cgType		sampler1D sampler2D sampler3D samplerRECT samplerCUBE
" compile-time special types
syn keyword cgType		cint cfloat

" how to disable switch continue case default int break goto double enum union

" syn keyword cgSamplerArg	MinFilter MagFilter MipFilter
syn match cgSamplerArg	/\<\c\(min\|mag\|mip\)filter\>/
syn keyword cgSamplerArg	AddressU AddressV AddressW

" fx
syn keyword fxStatement		compile asm
syn keyword fxType		string texture technique pass

" syn match cgCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
" syn match cgCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"
syn match cgSwizzle		/\.[xyzw]\{1,4\}\>/
syn match cgSwizzle		/\.[rgba]\{1,4\}\>/
syn match cgSwizzle		/\.[stqr]\{1,4\}\>/
syn match cgSwizzle		/\.\(_m[0-3]\{2}\)\{1,4\}\>/
syn match cgSwizzle		/\.\(_[1-4]\{2}\)\{1,4\}\>/
syn match cgSemantic		/:\s*[A-Z]\w*/
syn keyword cgStorageClass	in out inout uniform packed const
syn keyword cgNumber	NPOS
"syn keyword cgBoolean	true false none
syn match cgBoolean	/\<\c\(true\|false\|none\)\>/

" The minimum and maximum operators in GNU C++
syn match cgMinMax "[<>]?"

" cg standard library
syn keyword cgLibrary        abs acos all any asin atan atan2 ceil clamp clip cos cosh cross ddx ddy degrees determinant distance dot exp exp2 faceforward floatToIntBits floatToRawIntBits floor fmod frac frexp fwidth intBitsToFloat isfinite isinf isnan ldexp length lerp lit log log10 log2 max min modf mul normalize pow radians reflect refract round rsqrt saturate sign sin sincos sinh smoothstep sqrt step tan tanh tex1D tex1DARRAY tex1DARRAYbias tex1DARRAYcmpbias tex1DARRAYcmplod tex1DARRAYfetch tex1DARRAYlod tex1DARRAYproj tex1DARRAYsize tex1Dbias tex1Dcmpbias tex1Dcmplod tex1Dfetch tex1Dlod tex1Dproj tex1Dsize tex2D tex2DARRAY tex2DARRAYbias tex2DARRAYfetch tex2DARRAYlod tex2DARRAYproj tex2DARRAYsize tex2Dbias tex2Dcmpbias tex2Dcmplod tex2Dfetch tex2Dlod tex2Dlod tex2Dproj tex2Dsize tex3D tex3Dbias tex3Dfetch tex3Dlod tex3Dproj tex3Dsize texBUF texBUFsize texCUBE texCUBEARRAY texCUBEARRAYbias texCUBEARRAYlod texCUBEARRAYsize texCUBEbias texCUBEload texCUBEproj texCUBEsize texRECT texRECTbias texRECTfetch texRECTlod texRECTproj texRECTsize transpose trunc

" Default highlighting
if version >= 508 || !exists("did_cg_syntax_inits")
  if version < 508
    let did_cg_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  " HiLink cgCast			cgStatement
  HiLink fxStatement		cgStatement
  HiLink cgProfile		cgStatement
  HiLink cgSamplerArg		cgStatement
  HiLink cgStatement		Statement
  HiLink cgType			Type
  HiLink fxType			Type
  HiLink cgStorageClass		StorageClass
  HiLink cgSemantic		Structure
  HiLink cgNumber		Number
  HiLink cgSwizzle              Special
  "highlight cgSwizzle		ctermfg=magenta guifg=magenta
  HiLink cgBoolean		Boolean
  HiLink cgLibrary              Function
  delcommand HiLink
endif

let b:current_syntax = "cg"

" vim: ts=8
