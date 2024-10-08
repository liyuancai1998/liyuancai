import hashlib
from PIL import Image, ImageOps
import os
import sys
from pathlib import Path
import shutil

first_dir = "primary/map03/"
seconder_dir = "secondary/map_03t_1/"
new_img = Image.open(f"{first_dir}tiles.png")
new_imgdata = list(new_img.getdata())
seconder = Image.open(f"{seconder_dir}tiles.png")
for i in range(6, 12, 1):
    names = str(i).zfill(2)
    shutil.copyfile(f"{first_dir}palettes/{names}.pal", f"{seconder_dir}/palettes/{names}.pal")
with open(f"{first_dir}metatiles.bin", "rb") as bin:
    bin.seek(0, 2)
    size = bin.tell()
    if size > 0x3000:
        bin.seek(0x3000)
        allbytes = bin.read(size - 0x3000)
        with open(f"{seconder_dir}metatiles.bin", "wb") as bin2:
            bin2.write(allbytes)
seconder.putdata(new_imgdata[0x8000:])
seconder.save(f"{seconder_dir}tiles.png")