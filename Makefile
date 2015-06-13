EMACS=emacs
EMACS_OPTS_index = --batch --eval "(progn (load-file \"Makefile.el\") (find-file \"src/index.org\") (org-html-export-to-html))"
EMACS_OPTS_projects = --batch --eval "(progn (load-file \"Makefile.el\") (find-file \"src/projects.org\") (org-html-export-to-html))"
EMACS_OPTS_publications = --batch --eval "(progn (load-file \"Makefile.el\") (find-file \"src/publications.org\") (org-html-export-to-html))"

html_objects = index.html projects.html publications.html

src_dir = src/

all: $(html_objects)

index.html: $(src_dir)index.org $(src_dir)sidebar.org    
	@echo "Generating index.html ..."
	$(EMACS) $(EMACS_OPTS_index)
	@mv $(src_dir)index.html .
	@echo "index.html generation done\n"
	
projects.html: $(src_dir)projects.org $(src_dir)sidebar.org
	@echo "Generating projects.html ..."
	$(EMACS) $(EMACS_OPTS_projects)
	@mv $(src_dir)projects.html .
	@echo "projects.html generation done\n"
	
publications.html: $(src_dir)publications.org $(src_dir)sidebar.org
	@echo "Generating publications.html ..."
	$(EMACS) $(EMACS_OPTS_publications)
	@mv $(src_dir)publications.html .
	@echo "projects.html generation done\n"	

clean:
	rm $(html_objects)
	@echo "Remove done\n"
