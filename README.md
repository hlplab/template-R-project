# template-R-project
This is a template for an R project with some commonly used directories and suggestions on how to structure your data and scripts. 

As a rule of thumb, **all and only content that is *not* reproducible** from other content in the git repository should be included 
in the repository. For example, you should include all necessary raw data and scripts, but typically you should not include the models
that are fit to the data (still this repository contains a subfolder for models, so that your code can *store* models in that folder, 
without tracking those files).

As a rule of thumb, do *not* include your .Rproj file in the repository. As a rule of thumb, *do* include the .gitignore file.

If you follow standards of the field, you will likely want to share more than just the data and code, but also stimuli and the 
materials that went into creating the stimuli. In that case, make sure to add additional folders (e.g., stimuli/, materials/, etc.).
But keep in mind that these types of files can be very large. So we tend to upload these files onto OSF, rather than including them
into the git repository. However, if the inclusion of large files in the git repository becomes necessary, check out https://git-lfs.github.com/.
