#!/bin/sh
LFTP_COMMAND="docker run -it --network=host -v $PWD:/tmp lftp" 
TARGET_LOCAL=./tmp

download_files_from_ftp()
{
  REMOTE_FOLDER=$1
  TARGET_FOLDER=$2
  $LFTP_COMMAND -e "mirror --target-director=$TARGET_FOLDER;exit" $REMOTE_FOLDER
}

clean()
{
  TMP_FOLDER=$1
  rm -r $TMP_FOLDER 2> /dev/null
  mkdir $TMP_FOLDER
}

clean $TARGET_LOCAL
download_files_from_ftp $1 $TARGET_LOCAL

