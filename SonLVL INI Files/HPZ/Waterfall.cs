using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Drawing;
using SonicRetro.SonLVL.API;

namespace S2ObjectDefinitions.HPZ
{
	class Waterfall : ObjectDefinition
	{
		private Sprite img;
		private List<Sprite> imgs = new List<Sprite>();

		public override void Init(ObjectData data)
		{
			byte[] artfile = ObjectHelper.OpenArtFile("../art/nemesis/WatrFall.bin", CompressionType.Nemesis);
			img = ObjectHelper.MapASMToBmp(artfile, "HPZ/Waterfall.asm", 0, 3);
			for (int i = 0; i < 0x1C; i++)
				imgs.Add(ObjectHelper.MapASMToBmp(artfile, "HPZ/Waterfall.asm", i, 3));
		}

		public override ReadOnlyCollection<byte> Subtypes
		{
			get { return new ReadOnlyCollection<byte>(new byte[] { 0, 1, 2, 3, 4, 5, 6, 7 }); }
		}

		public override string Name
		{
			get { return "Waterfall"; }
		}

		public override bool RememberState
		{
			get { return false; }
		}

		public override Sprite Image
		{
			get { return img; }
		}

		public override string SubtypeName(byte subtype)
		{
			return string.Empty;
		}

		public override Sprite SubtypeImage(byte subtype)
		{
			return img;
		}

		public override Rectangle GetBounds(ObjectEntry obj, Point camera)
		{
			Rectangle result = imgs[0x12].Bounds;
			result.Offset(0, -0x78 + (obj.SubType << 4));
			result = Rectangle.Union(result, imgs[Math.Min((int)obj.SubType, 0xF)].Bounds);
			if (obj.SubType >= 0x10)
			{
				Rectangle rec2 = imgs[Math.Min(obj.SubType + 4, 0x1B)].Bounds;
				rec2.Offset(0, 0x98);
				result = Rectangle.Union(result, rec2);
			}
			result.Offset(obj.X - camera.X, obj.Y - camera.Y);
			return result;
		}

		public override Sprite GetSprite(ObjectEntry obj)
		{
			List<Sprite> sprs = new List<Sprite>();
			sprs.Add(new Sprite(imgs[0x12].Image, new Point(imgs[0x12].X, imgs[0x12].Y - 0x78 + (obj.SubType << 4))));
			Sprite spr1 = imgs[Math.Min((int)obj.SubType, 0xF)];
			sprs.Add(spr1);
			if (obj.SubType >= 0x10)
			{
				Sprite spr2 = imgs[Math.Min(obj.SubType + 4, 0x1B)];
				sprs.Add(new Sprite(spr2.Image, new Point(spr2.X, spr2.Y + 0x98)));
			}
			Sprite spr = new Sprite(sprs.ToArray());
			spr.Offset = new Point(spr.X + obj.X, spr.Y + obj.Y);
			return spr;
		}
	}
}