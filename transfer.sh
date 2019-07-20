#!/usr/bin/env bash
LFTP_COMMAND="docker run -it --network=host -v $PWD:/tmp jonataa/lftp" 
TARGET_LOCAL=./tmp

download_files_from_ftp()
{
  REMOTE_FOLDER=$1
  TARGET_FOLDER=$2
  $LFTP_COMMAND -e "mirror --target-directory=$TARGET_FOLDER;exit" $REMOTE_FOLDER
}

upload_files_to_ftp()
{
  REMOTE_FOLDER=$1
  SOURCE_FOLDER=$2
  $LFTP_COMMAND -e "lcd $SOURCE_FOLDER;mirror -R;exit" $REMOTE_FOLDER
}

clean()
{
  TMP_FOLDER=$1
  rm -rf $TMP_FOLDER 2> /dev/null
  mkdir $TMP_FOLDER
}

NC='\033[0m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'

echo "🧹 ${YELLOW}Clean Up...${NC}"
clean $TARGET_LOCAL

echo "👇 ${BLUE}Download all files from $1${NC}"
download_files_from_ftp $1 $TARGET_LOCAL

echo "👆 ${BLUE}Upaload all files to $2${NC}"
upload_files_to_ftp $2 $TARGET_LOCAL

echo "🍺 ${GREEN}Finished.${NC}"
