all: report.html suffixreport.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html suffix.tsv suffix.png suffixreport.md suffixreport.html

report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: histogram.r words.txt
	Rscript $<

suffixreport.html: suffixreport.rmd suffix.tsv suffix.png
	Rscript -e 'rmarkdown::render("$<")'

suffix.png: suffix.tsv
	Rscript -e 'library(ggplot2); ggplot(data=read.delim("$<"), aes(reorder(value, -n), n)) + geom_col(fill = "light blue") + theme_light() + labs(title = "15 most common English suffixes", x = "Suffix", y = "Number of occurences"); ggsave("$@")'
	rm Rplots.pdf
	
suffix.tsv: suffix.r words.txt
	Rscript $<

words.txt: /usr/share/dict/words
	cp $< $@

