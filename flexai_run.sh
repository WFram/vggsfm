DATASET_URL="https://drive.google.com/uc?id=12iBa8SBLR80pzKWM3yr1N2_v0D3EJ_Oa"
DATASET_DIR=LV-Black-left-flexai
DATASET_ZIP="$DATASET_DIR".zip
gdown $DATASET_URL &&
apt install unzip &&
unzip $DATASET_ZIP &&
python demo.py SCENE_DIR="$DATASET_DIR" camera_type=SIMPLE_RADIAL
