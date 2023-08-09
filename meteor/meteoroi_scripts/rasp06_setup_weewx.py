#!/usr/bin/python3

import jinja2, os, json
from datetime import datetime
from shutil import copyfile
from utils import utils

SCRIPT_PATH = os.path.dirname(os.path.abspath(__file__))
WEEWX_ROOT = "/srv/weewx/root"
BOOTSTRAP_SKIN_ROOT = os.path.join(WEEWX_ROOT, 'skins', 'Bootstrap')
IMAGES_SKIN_ROOT = os.path.join(WEEWX_ROOT, 'skins', 'Images')
JSON_SKIN_ROOT = os.path.join(WEEWX_ROOT, 'skins', 'Json')
WU_IMPORT_ROOT = os.path.join(WEEWX_ROOT, 'util', 'import')

# Load config file from station.json
conf = utils.load_conf(SCRIPT_PATH, 'station.json')

if conf == {}:
    exit()

# Load template file weewx.conf.tpl
tpl_weewxconf = utils.load_tpl(SCRIPT_PATH, "weewx.conf.tpl")
tpl_weewxconj = utils.load_tpl(SCRIPT_PATH, "weewx_json.conf.tpl")
tpl_skinconf1 = utils.load_tpl(SCRIPT_PATH, "skin_bootstrap.conf.tpl")
tpl_skinconf2 = utils.load_tpl(SCRIPT_PATH, "skin_images.conf.tpl")
tpl_skinconf3 = utils.load_tpl(SCRIPT_PATH, "skin_json.conf.tpl")
tpl_wuimpconf = utils.load_tpl(SCRIPT_PATH, "wu-meteoroi.conf.tpl")


# Backup file
CFG_FILE_NAME = "weewx.conf"
JSON_CFG_FILE_NAME = "weewx.conf"
BOOTSTRAP_SKIN_CFG_FILE_NAME = "skin.conf"
IMAGES_SKIN_CFG_FILE_NAME = "skin.conf"
JSON_SKIN_CFG_FILE_NAME = "skin.conf"
WU_IMPORT_CFG_FILE_NAME = "wu-meteoroi.conf"

utils.backup_file(WEEWX_ROOT, CFG_FILE_NAME)
utils.backup_file(JSON_SKIN_ROOT, JSON_CFG_FILE_NAME)
utils.backup_file(BOOTSTRAP_SKIN_ROOT, BOOTSTRAP_SKIN_CFG_FILE_NAME)
utils.backup_file(IMAGES_SKIN_ROOT, BOOTSTRAP_SKIN_CFG_FILE_NAME)
utils.backup_file(JSON_SKIN_ROOT, JSON_SKIN_CFG_FILE_NAME)
utils.backup_file(WU_IMPORT_ROOT, WU_IMPORT_CFG_FILE_NAME)

# Render weewx.conf
print("Rendering weewx.conf.tpl")
output_cfg = tpl_weewxconf.render(conf)
CFG_FILE = os.path.join(WEEWX_ROOT, CFG_FILE_NAME)
with open(CFG_FILE, "w") as rendered_file:
#TEST_FILE = os.path.join(SCRIPT_PATH, 'test.conf')
#with open(TEST_FILE, "w") as rendered_file:
    rendered_file.write(output_cfg)

# Render Json weewx.conf
print("Rendering weewx_json.conf.tpl")
output_cfg = tpl_weewxconj.render(conf)
CFG_FILE = os.path.join(JSON_SKIN_ROOT, JSON_CFG_FILE_NAME)
with open(CFG_FILE, "w") as rendered_file:
#TEST_FILE = os.path.join(SCRIPT_PATH, 'test_json.conf')
#with open(TEST_FILE, "w") as rendered_file:
    rendered_file.write(output_cfg)

# Render bootstrap skin.conf
print("Rendering skin_bootstrap.conf.tpl")
output_cfg = tpl_skinconf1.render(conf)
BOOTSTRAP_SKIN_CFG_FILE = os.path.join(BOOTSTRAP_SKIN_ROOT, BOOTSTRAP_SKIN_CFG_FILE_NAME)
with open(BOOTSTRAP_SKIN_CFG_FILE, "w") as rendered_file:
#TEST_FILE = os.path.join(SCRIPT_PATH, 'test_skin.conf')
#with open(TEST_FILE, "w") as rendered_file:
    rendered_file.write(output_cfg)

# Render images skin.conf
print("Rendering skin_images.conf.tpl")
output_cfg = tpl_skinconf2.render(conf)
IMAGES_SKIN_CFG_FILE = os.path.join(IMAGES_SKIN_ROOT, IMAGES_SKIN_CFG_FILE_NAME)
with open(IMAGES_SKIN_CFG_FILE, "w") as rendered_file:
#TEST_FILE = os.path.join(SCRIPT_PATH, 'test_skin.conf')
#with open(TEST_FILE, "w") as rendered_file:
    rendered_file.write(output_cfg)

# Render json skin.conf
print("Rendering skin_json.conf.tpl")
output_cfg = tpl_skinconf3.render(conf)
JSON_SKIN_CFG_FILE = os.path.join(JSON_SKIN_ROOT, JSON_SKIN_CFG_FILE_NAME)
with open(JSON_SKIN_CFG_FILE, "w") as rendered_file:
#TEST_FILE = os.path.join(SCRIPT_PATH, 'test_skin_json.conf')
#with open(TEST_FILE, "w") as rendered_file:
    rendered_file.write(output_cfg)

# Render wu-meteoroi.conf
print("Rendering wu-meteoroi.conf.tpl")
output_cfg = tpl_wuimpconf.render(conf)
WU_IMPORT_CFG_FILE = os.path.join(WU_IMPORT_ROOT, WU_IMPORT_CFG_FILE_NAME)
with open(WU_IMPORT_CFG_FILE, "w") as rendered_file:
#TEST_FILE = os.path.join(SCRIPT_PATH, 'test_wuimp.conf')
#with open(TEST_FILE, "w") as rendered_file:
    rendered_file.write(output_cfg)

exit()


