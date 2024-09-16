import argparse
import zipfile
from pathlib import Path
parser = argparse.ArgumentParser()
parser.add_argument('-iz', dest='input_zip', type=str)
parser.add_argument('-of', dest='output_folder', type=str)
args = parser.parse_args()
input_zip = Path(args.input_zip).resolve()
assert input_zip.exists() and input_zip.is_file()
with zipfile.ZipFile(str(input_zip), 'r') as f:
    f.extractall(args.output_folder)