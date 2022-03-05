import glob, os, shutil

# PATH = input("paste the path to the folder: ")

# img_path = os.path.join(PATH, '**', '*.png')
# model_path = os.path.join(PATH, '**', '*.geo.json')

# imgs = glob.glob(img_path)
# models = glob.glob(model_path)

# print(models)

# MPATH = os.path.join(input('Paste the path to the resource pack parent folder: '), 'models', 'entity')

# for img in imgs:
#   shutil.copy(img, TPATH)
# for model in models:
#   shutil.copy(model, MPATH)

path = r'C:\\Users\\ryan\AppData\\Local\\Packages\\Microsoft.MinecraftUWP_8wekyb3d8bbwe\\LocalState\\games\\com.mojang\development_resource_packs\Cruise Map RP\\textures\\entity'
models = glob.glob(os.path.join(path, '**', '*.png'))

for x in models:
  print(x)
  os.rename(x, x.replace('cc_', ''))