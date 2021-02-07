# Correção: 1,0
FILE=

read -p "Informe o arquivo:" FILE

declare -A DICT

for WORD in $(cat $FILE | tr "." " "); do
    if [  "${DICT[$WORD]}" == "" ]; then
        DICT["$WORD"]=1
    else
        DICT["$WORD"]=`expr ${DICT[$WORD]} + 1`
    fi

done

for WORD in ${!DICT[@]}; do
    echo "$WORD : ${DICT[$WORD]}"
done
