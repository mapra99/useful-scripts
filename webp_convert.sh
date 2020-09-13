for FILE_PATH in $(cat "@")
do
	echo "converting ${FILE_PATH}"
	cwebp ${FILE_PATH} -o ${FILE_PATH}.webp
done
echo "done :)"
