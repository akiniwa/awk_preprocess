awk_preprocess
==============

Tutorial for Awk programming.

1. awkのイントロ
```awk
# 全列表示
awk '{print $0}' titanic.txt

# 名前、年齢表示
awk '{print $4, $6}' titanic.txt

```

2. awkのパターンアクション
```awk
# Williamが含まれる行を表示
awk '/William/{print $0}' titanic.txt

# 40歳以上を表示
awk '$6>=40{print $0}' titanic.txt

# 正規表現
awk '/^1[0-3]/{print $0}' titanic.txt
```

3. 逆引きawk
```awk

# 平均年齢
awk '{age+=$6};END{print age/(NR-1)}' titanic.txt

# 最小値
awk 'NR==2{min=$10}{if($10<min) {min=$10};} END {print min}' titanic.txt 

# 乗船場所の重複削除
awk '!colname[$12]++{print $12}'

# 乗客IDと年齢を表示
awk '{print $1, $6}' titanic.txt > pID_age.txt

```

