{
    colsum=0;

    for (i=0;i<=NF;i++){
        colsum+=$i
    }

    ave=colsum/NF;
    varTemp=0;

    for (i=1;i<=NF;i++){
        varTemp+=($i-ave)^2
    };

    var=varTemp/(NF-1);
    print var
}
