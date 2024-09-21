function bgfxProject(name, project_uuid)
	externalproject(name)
		location ".build/projects/vs2022/"
		uuid(project_uuid)
		kind "StaticLib"
		language "C++"
		configmap {
			["Final"] = "Release",
			["Win64"] = "x64"
		}
end

function bgfxExampleProject(name, project_uuid)
	externalproject(name)
		location ".build/projects/vs2022/"
		uuid(project_uuid)
		kind "StaticLib"
		language "C++"
		configmap {
			["Final"] = "Release",
			["Win64"] = "x64"
		}
		
		dependson {"example-glue", "example-common", "bgfx", "bx", "bimg", "bimg_decode"}
end

bgfxProject("bgfx", "6C90947C-58C7-950D-01B4-7B10EDC9110F");
bgfxProject("bx", "5F775900-4B03-880B-B4B1-880BA05C880B");
bgfxProject("bimg", "C499947C-B0D0-950D-59BD-7B1045D3110F");
bgfxProject("bimg_decode", "A7B931CA-136F-AABF-9C63-A4960818A1C3");

group "Vendors/Examples"
	bgfxExampleProject("example-00-helloworld", "07C26CF4-732E-28EF-3C22-C04CA84D4A57");
	bgfxExampleProject("example-01-cubes", "3E36238F-2A2F-42E1-5361-27663FB921ED");
	bgfxExampleProject("example-02-metaballs", "820393EB-6E92-1CB5-17B1-30B0031F2D5B");
	bgfxExampleProject("example-03-raymarch", "A5CF9490-1131-729E-9A9E-B85006FFA85D");
	bgfxExampleProject("example-04-mesh", "3CDC622A-A867-D0EE-B178-53E31D832CEF");
	bgfxExampleProject("example-05-instancing", "5E07E5C1-CA73-A0BC-9367-381AFF92C224");
	bgfxExampleProject("example-06-bump", "A568072F-11F4-74F3-1A05-F8E7860FD1F3");
	bgfxExampleProject("example-07-callback", "5FB67EAA-CB17-5CB8-5485-A26AC0E59277");
	bgfxExampleProject("example-08-update", "3639FA12-A24F-F8A8-EBC6-83CA571CC930");
	bgfxExampleProject("example-09-hdr", "72162711-5EE4-1A17-4778-8B3D33E5F67B");
	bgfxExampleProject("example-10-font", "C3C9046E-2F55-7232-3866-F526A470CE32");
	bgfxExampleProject("example-11-fontsdf", "617EA5C2-4D62-6618-B6C2-606BA2C5509A");
	bgfxExampleProject("example-12-lod", "EDA5FD12-D973-F118-C207-623FAE74CD7D");
	bgfxExampleProject("example-13-stencil", "21D7569F-0DBB-17F5-761B-1248621E0277");
	bgfxExampleProject("example-14-shadowvolumes", "61C226E5-4DE7-7565-7632-5BF562B67483");
	bgfxExampleProject("example-15-shadowmaps-simple", "DFFFA668-CBBA-9614-7472-0F5F600CE1A4");
	bgfxExampleProject("example-16-shadowmaps", "091FC264-758B-7D5F-3E7F-15BDAAAA9FC7");
	bgfxExampleProject("example-17-drawstress", "2510A7A5-917C-62A0-5A70-FAFDC69B8408");
	bgfxExampleProject("example-18-ibl", "8B2A6A13-77F8-5D19-608C-CE3F4CF9397E");
	bgfxExampleProject("example-19-oit", "815D7C13-6D2B-7019-56BF-E03F422C4C7E");
	bgfxExampleProject("example-20-nanovg", "D69F8688-42B6-841E-8B2D-1040F78255A6");
	bgfxExampleProject("example-21-deferred", "4FF1AEAE-BB52-8CBC-44C0-D26EB020C37B");
	bgfxExampleProject("example-22-windows", "FAC0C249-E6A4-839F-4F05-7EF23B086E21");
	bgfxExampleProject("example-23-vectordisplay", "998255E0-85A7-A460-AEF2-89F09A76A37E");
	bgfxExampleProject("example-24-nbody", "CD6F524F-B968-71A1-E29A-5626CEF250AD");
	bgfxExampleProject("example-25-c99", "A7EA8815-93B8-7C1B-7C4C-ED4168B95880");
	bgfxExampleProject("example-26-occlusion", "A225CE71-8EB4-573B-37D3-6B36234168E1");
	bgfxExampleProject("example-27-terrain", "296F3DA0-1553-FEF5-7EB3-F8486AB6E877");
	bgfxExampleProject("example-28-wireframe", "176A3B1B-03F9-C4E4-AC17-D9DF9885D58A");
	bgfxExampleProject("example-29-debugdraw", "CBD80DA0-B767-9769-6086-AB644CF4A70F");
	bgfxExampleProject("example-30-picking", "33753949-1F59-FA9E-88B9-F4F174BCE420");
	bgfxExampleProject("example-31-rsm", "C1F89517-ADC6-891D-965A-FA4382C76582");
	bgfxExampleProject("example-32-particles", "F768B8BD-E3F7-4187-8C16-56827884522D");
	bgfxExampleProject("example-33-pom", "BD20BA17-A9EE-AD1D-9282-1E447EEF8982");
	bgfxExampleProject("example-34-mvs", "682DCC17-54FB-BF1D-3D8F-304429FC9B82");
	bgfxExampleProject("example-35-dynamic", "58FD001A-44E1-C16F-AD41-BCC29944ACF1");
	bgfxExampleProject("example-36-sky", "8B76F017-7744-E41D-60D8-54444C45C082");
	bgfxExampleProject("example-37-gpudrivenrendering", "674B23E7-D363-0A11-9C10-9AAA08E89EAA");
	bgfxExampleProject("example-38-bloom", "CF8EA96E-BB87-C8C0-E4B9-AD45D011A8CC");
	bgfxExampleProject("example-39-assao", "EE9895BB-DA91-B40D-03C4-9992EF1B9419");
	bgfxExampleProject("example-40-svt", "8C0DD919-78DB-CC1F-616F-3D464DDCA884");
	bgfxExampleProject("example-41-tess", "0F2C5057-7BB7-BD1B-84C8-4010F0D2191C");
	bgfxExampleProject("example-42-bunnylod", "3CEFE2C7-A850-C0D5-31BE-06889D1EF794");
	bgfxExampleProject("example-43-denoise", "791D7306-6501-345C-CE61-2EAFBA641EDE");
	bgfxExampleProject("example-44-sss", "2C6F211A-183D-1520-01D1-8546ED3DF184");
	bgfxExampleProject("example-45-bokeh", "3D40FE73-2939-1DC6-526B-024B3EC3FCD1");
	bgfxExampleProject("example-46-fsr", "E068451A-CC36-3920-B5CA-A946A1371585");
	bgfxExampleProject("example-47-pixelformats", "542847AB-C05F-8F42-C969-F3653520B63B");
	bgfxExampleProject("example-48-drawindirect", "77E1F1A7-E318-3A3F-EC22-9E6258D96038");
	bgfxExampleProject("example-49-hextile", "8B68FEF5-774C-BF4B-E0AC-B99ECCAFA9CD");
	bgfxExampleProject("example-common", "A788128C-9356-0692-7CEA-76B86857E2F6");
	bgfxExampleProject("example-glue", "2B1D7912-1780-08B7-C005-416DAC47D439");
group ""
