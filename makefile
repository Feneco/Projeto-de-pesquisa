BUILD_D=build/

pdf: projeto.tex
	@ if [ ! -d ${BUILD_D} ]; then \
		mkdir ${BUILD_D};\
	fi
	pdflatex -halt-on-error -output-directory ${BUILD_D} $<

clean:
	rm -f ${BUILD_D}*.aux ${BUILD_D}*.log ${BUILD_D}*.dvi ${BUILD_D}*.toc ${BUILD_D}*.idx