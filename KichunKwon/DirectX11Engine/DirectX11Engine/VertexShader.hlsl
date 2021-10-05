cbuffer myBuffer : register(b0)
{
	float xOffset;
	float yOffset;
};

struct VS_INPUT 
{
	float3 inpos : POSITION;
	float2 inTexCol : TEXCOORD;
};

struct VS_OUTPUT
{
	float4 outpos : SV_POSITION;
	float2 outTexCol : TEXCOORD;
};

VS_OUTPUT main( VS_INPUT input)
{
	VS_OUTPUT output;
	input.inpos.x += xOffset;
	input.inpos.y += yOffset;
	output.outpos = float4(input.inpos, 1.0f);
	output.outTexCol = input.inTexCol;
	return output;
}