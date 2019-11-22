struct PixelShaderInput
{
	float4 position : SV_POSITION;
	float2 texcoord : TEXCOORD;
};

//texture
Texture2D textureMap;
SamplerState textureSampler
{
	Filter = MIN_MAG_MIP_LINEAR;
	AddressU = Wrap;
	AddressV = Wrap;
};

min16float4 main(PixelShaderInput input) : SV_TARGET
{
	return (float4)textureMap.Sample(textureSampler, input.texcoord);
}
