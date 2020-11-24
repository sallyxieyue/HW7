.PHONY: install
install:
	Rscript R/install.R

.PHONY: report
report: merged_data/testi.RData R/report.Rmd 
	cd R && \
	Rscript -e "rmarkdown::render('report.Rmd',output_file='../output/report.html')"

merged_data/testi.RData: R/merge.R raw_data/births_s.RData raw_data/NH4.RData
	chmod +x R/merge.R && Rscript R/merge.R

.PHONY: build
build: Dockerfile
	docker build -t hw7 .

.PHONY: help
help: 
	@echo "report : Generate final analysis report."
	@echo "merge  : merge NH4 and birth records and the merged file is testi.RData"
	@echo "install: install necessary R packages"
	@echo "build  : build a Docker image called hw7"