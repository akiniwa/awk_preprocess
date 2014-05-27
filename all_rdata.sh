for t in rdata*.txt
do
    awk -f sd.awk $t
done

