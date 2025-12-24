# template-R-project
This is a template for an R project with some commonly used directories and suggestions on how to structure your data and scripts. 
It also contains R Markdown templates that can be used to knit APA-formatted or JASA-formatted articles. These templates---available in the scripts/ folder---
demonstrate all the common Markdown features like equations, figures, tables, etc., figure and table caption generation, cross-referencing, citations 
and bibliography generations. The templates also include demonstrations of R Markdown features like R code chunks, inline code, etc. Finally, the 
templates include examples of author-colored comments that can facilitate communication between collaborators.

# How to use this template
If you start a new project, start by comming to this URL. Click "Use this template". That will create a new remote github repository. 
Give it the name of your new project.

You can then clone it from RStudio. Go to File -> New project -> Version Control -> Git. You can get the URL of the remote repository 
by clicking the "Clone" button on the main page of the new remote repository you've just created. Copy that URL into the
first field of the dialogue opened in RStudio. RStudio will automatically propose a folder name based on the name of the remote repository. 
I recommend you just stick with that, but you can change it. As for the folder location where you want the repository I recommend *not* 
putting it on dropbox, box, or alike. I typically keep the repositories on my desktop. Remember that these are just the local copies of 
your remote repository. As long as you regularly push changes you make from your local repository (on your computer) to the remote 
repository (on github), everything is backed up.

## Installing Latex to knit APA-formatted manuscripts
The scripts/ folder contains R markdown files that can be knitted into APA-formatted PDFs (or Word files). These R markdown templates
require Xelatex, Biber, biblatex and---if you'd like to use IPA symbols---some special fonts. I recommend you start by reading the PDFs 
that are included in the same folder. They contain information about these requirements. 

To install Latex and Xelatex:

 * In R, `install.packages(tinytex)` and then:
   *  `tinytex::install_tinytex()` (this might take a moment to download and install)
   *  `tinytex::tlmgr_install(“biber”)` and `tinytex::tlmgr_install(“biblatex”)`
   *  Usually, this should be sufficient. You might have to install additional latex packages via `tinytex::tlmgr_install(“NAME-OF-PACKAGE”)`.

To install IPA fonts:

 * downdload Doulos SIL font from https://software.sil.org/doulos/
 * unzip, click on .ttf file, install fonts
 * you might have to quit and reopen RStudio.

## How to use git for reproducible workflow
As a rule of thumb, **all and only content that is *not* reproducible** from other content in the git repository should be included 
in the repository. For example, you should include all necessary raw data and scripts, but typically you should not include the models
that are fit to the data (still this repository contains a subfolder for models, so that your code can *store* models in that folder, 
without tracking those files).

As a rule of thumb, do *not* include your .Rproj file in the repository. As a rule of thumb, *do* include the .gitignore file.

## Handling large files via git-lfs
If you follow standards of the field, you will likely want to share more than just the data and code, but also stimuli and the 
materials that went into creating the stimuli. In that case, make sure to add additional folders (e.g., stimuli/, materials/, etc.).
But keep in mind that these types of files can be very large. So we tend to upload these files onto OSF, rather than including them
into the git repository. However, if the inclusion of large files in the git repository becomes necessary, check out https://git-lfs.github.com/.


# How to spread the word
If you find this template helpful, please include a line in your manuscript along the lines of "To support reproducibility, this article was 
generated using R Markdown---specifically, the HLP Lab template available at [https://github.com/hlplab/template-R-project/](https://github.com/hlplab/template-R-project/)." 
Thank you!
