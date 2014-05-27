{
    for (i=1;i<=NF;i++) {
        hist[$i]+=1;
    }
}
END{
    for (d in hist) {
        print d, hist[d]
    }
}
