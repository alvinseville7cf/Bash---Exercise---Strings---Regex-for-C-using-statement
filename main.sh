list=("using x" "using x1" "using 1x" "using static" "using static x1" "using static 1x" "using x=y" "using x1=y" "using 1x=y" "using x=y1" "using x1=y1" "using 1x=y1" "using x=1y" "using x1=1y" "using 1x=1y" "using static x=y" "using static x1=y" "using static 1x=y" "using static x=y1" "using static x1=y1" "using static 1x=y1" "using static x=1y" "using static x1=1y" "using static 1x=1y")

for i in "${list[@]}"
do
  echo "$i" | grep --perl-regexp '^using\s+[a-zA-Z]\w*$|^using\s+static\s+[a-zA-Z]\w*(?:=[a-zA-Z]\w*)?$' | sed --quiet --regexp-extended '/^using/{ /^using\s+static$/d; p; }'
done
