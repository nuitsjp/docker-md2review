for file in `\find . -name '*.md'`; do
    echo "md2review "$file" > "${file%%.md}".re"
    md2review $file > ${file%%.md}".re"
done