#!/usr/bin/env python
# coding: utf-8

import glob
import os
import imageio
from tqdm.auto import tqdm

for method in tqdm(['lr','rr','mr','tr','sr']):
    filenames=sorted(glob.glob(method+'_frames/*.jpg'), key=os.path.getmtime)
    with imageio.get_writer(method+'.gif', mode='I',duration='0.1') as writer:
        for filename in filenames[:100]:
            image = imageio.imread(filename)
            writer.append_data(image)