import glob, os, json, pprint
from http import client

WORK_SPACE = r'C:\Users\ryan\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_resource_packs\Cruise Map RP'
path = 'entities'

""" opens a json file and loads the data from it

:param file: the path to the file being opened
:type file: str
:returns: the data loaded from the file
:rtype: dictionary
"""
def data_from_file(file):

    data = {}

    with open(file, 'r') as f:
        data = json.load(f)
        f.close()

    return data


def write_to_file(path, data, writing):

    if writing:
        try:
            with open(path, 'w') as f:
                json.dump(data, f, indent = 4)
                f.close()
            
            return True

        except:
            print('The file being written was not written correctly!')
            return False

    else:
        try:
            with open(path, 'r+') as f:
                f.seek(0)
                json.dump(data, f, indent=4)
                f.truncate()
                f.close()

            return True

        except:
            print('an error writing to the file occured!')
            return False

for category in os.listdir(path):
    if category != 'NPCs':
        for name in os.listdir(os.path.join(path, category)):

            identifier = ''
            component_groups = []
            behavior_file = os.path.join(path, category, name)

            """Load the behavior pack entity file for processing"""
            try:

                data = data_from_file(behavior_file)
                identifier = data['minecraft:entity']['description']['identifier']
            except:
                print('There was an error processing the behavior file!')

            models = os.path.join(WORK_SPACE, 'models', 'entity')
            rcs = os.path.join(WORK_SPACE, 'render_controllers')
            entities = os.path.join(WORK_SPACE, 'entity')
            textures = os.path.join(WORK_SPACE, 'textures', 'entity')
            animations = os.path.join(WORK_SPACE, 'animations')
            controllers = os.path.join(WORK_SPACE, 'animation_controllers')
            # the dictionary to be converted to a json object for the client entity file
            client_entity = {
              'format_version': '1.8.0',
              'minecraft:client_entity': {
                'description': {
                  'identifier': identifier,
                  'materials': { 'default': 'entity_alphatest' },
                  'textures': {},
                  'geometry': {},
                  'render_controllers': [],
                  'spawn_egg': {
                    'texture': 'spawn_egg',
                    'texture_index': 2
                  }
                }
              }
            }
            """Compile the geometries for the entity"""
            name = name.replace('.json', '')
            try:
                data = data_from_file(os.path.join(models, name+'.geo.json'))
                geo_list = data['minecraft:geometry']
                for dic in geo_list:
                  geo_name = dic['description']['identifier'].replace('geometry.cc_', '')
                  # set the key value pair correctly in the textures property of the client entity json object
                  if len(geo_list) == 1:
                    client_entity['minecraft:client_entity']['description']['geometry']['default'] = dic['description']['identifier']
                  else:
                    client_entity['minecraft:client_entity']['description']['geometry'][geo_name] = dic['description']['identifier']
            except:
                print('No geometry file matches the entity name!')
    
            # compile the list of textures and their names
            for value in os.listdir(textures):
                folder_path = ''
                # if there is a folder for the entity with textures in it
                if value == name:
                    folder_path = os.path.join(textures, value)
                    txtrs = ['textures/entity/{0}/'.format(value)+os.path.split(x)[1].replace('.png', '') for x in glob.glob(os.path.join(folder_path, '*.png'))]
                    for txtr in txtrs:
                        txtr_name = txtr.split('/')[-1]
                        client_entity['minecraft:client_entity']['description']['textures'][txtr_name.split('_')[-1]] = txtr
                # if there is only one texture for the entity
                elif value == name+'.png':
                    client_entity['minecraft:client_entity']['description']['textures']['default'] = "textures/entity/{0}".format(name)
                else:
                    pass
            """Get the animations for the entity"""
            for value in os.listdir(animations):

                if name in value:
                    data = data_from_file(os.path.join(animations, value))
                else:
                    pass

                try:
                  anims = data['animations'].keys()
                  if len(anims) >= 1:
                      client_entity['description']['animations'] = {}
                      for anim in anims:
                          anim_name = anim.split('.')[-1]
                          client_entity['minecraft:client_entity']['description']['animations'][anim_name] = anim
                except:
                    print('The entity has no animations!')
            """Get the animation controllers for the entity"""
            for value in os.listdir(controllers):
                
                if name in value:
                    data = data_from_file(os.path.join(controllers, value))
                else:
                    pass

                try:
                  anims = data['animation_controllers'].keys()
                  if len(anims) >= 1:
                      client_entity['description']['animation_controllers'] = {}
                      for anim in anims:
                          anim_name = anim.split('.')[-1]
                          client_entity['minecraft:client_entity']['description']['animation_controllers'][anim_name] = anim
                except:
                    print('The entity has no animation controllers!')

            """Create the render controllers"""
            texture_list = client_entity['minecraft:client_entity']['description']['textures'].keys()
            geometry_list = client_entity['minecraft:client_entity']['description']['geometry'].keys()
            render_controller = {
                "format_version": "1.8.0",
                "render_controllers": {}
            }
            if len(texture_list) > 1:
                # properly format the render controller name
                data = data_from_file(behavior_file)
                rc_name = 'controller.render.'+name
                render_controller['render_controllers'][rc_name] = {}
                curr_controller = render_controller['render_controllers'][rc_name]
                curr_controller['geometry'] = 'geometry.default'
                curr_controller['materials'] = []
                curr_controller['arrays'] = {}
                curr_controller['arrays']['textures'] = {}
                curr_controller['arrays']['textures']['array.skins'] = ['Texture.'+x for x in texture_list]
                curr_controller['textures'] = ['array.skins[query.mark_variant]']
                mat_dict = { '*': 'material.default' }
                curr_controller['materials'].append(mat_dict)

                try:
                    for x in data['minecraft:entity']['component_groups'].keys():

                        if x in texture_list():
                            component_groups.append(x.lower())

                        else:
                            pass
                except:
                    print('The behavior entity file has a syntax error somewhere!')

                if len(component_groups) != len(texture_list):
                    f_name = name+'.json'

                    for i, group in enumerate(texture_list):

                        data['minecraft:entity']['component_groups'][group.lower()] = {}
                        group = data['minecraft:entity']['component_groups'][group.lower()]
                        group['minecraft:mark_variant'] = {}
                        group['minecraft:mark_variant']['value'] = i

                    write_to_file(behavior_file, data, False)

                else:
                    pass
                # test for more than one geometry
                if len(geometry_list) > 1:
                    curr_controller['arrays']['geometries'] = {}
                    curr_controller['arrays']['geometries']['array.models'] = ['Geometry.'+x for x in geometry_list]
                    curr_controller['geometry'] = 'array.models[query.mark_variant]'
                else:
                    pass
                
                # add the name of the render controller created to the client entity file
                client_entity['minecraft:client_entity']['description']['render_controllers'].append(rc_name)
                # write the render controller to a file
                write_to_file(os.path.join(rcs, name+'.render_controllers.json'), render_controller, True)
                write_to_file(os.path.join(entities, name+'.entity.json'), client_entity, True)
            else:
                # we have already created the default render controller file so we just need to add it to the client entity file
                client_entity['minecraft:client_entity']['description']['render_controllers'].append('controller.render.default')
                write_to_file(os.path.join(entities, name+'.entity.json'), client_entity, True)

            print(f'The files for entity: {name}')
            pprint.pprint(client_entity)
            pprint.pprint(render_controller)
        else:
            pass