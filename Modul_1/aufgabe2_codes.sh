$ less -N 2023-11-20-Article_list_dirty.tsv
$ sed '7,10d;19,22d;75,76d' 2023-11-20-Article_list_dirty.tsv > article_list_without_empty_rows.tsv
$ sed s/IMPORTANT//< article_list_without_empty_rows.tsv > article_list_without_IMPORTANT.tsv
$ sed -e 59b -e 75b -e 's/[ \t]*//' article_list_without_IMPORTANT.tsv > article_list_without_tabs.tsv
$ cut -f5,12 article__list_without_tabs.tsv | sed -r 's/^issn\:\s*//i' | sed '1d' > article_list_unsortiert.tsv 
$ sort -ui article_list_unsortiert.tsv > article_list_endergebnis.tsv

