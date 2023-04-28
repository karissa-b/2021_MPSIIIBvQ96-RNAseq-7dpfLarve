---
title: "analysis_adultbrain"
author: "Karissa Barthelson"
date: "2023-03-01"
output: workflowr::wflow_html
editor_options:
  chunk_output_type: console
---

<p>
<button type="button" class="btn btn-default btn-workflowr btn-workflowr-report"
  data-toggle="collapse" data-target="#workflowr-report">
  <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
  workflowr
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
</button>
</p>

<div id="workflowr-report" class="collapse">
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#summary">Summary</a></li>
  <li><a data-toggle="tab" href="#checks">
  Checks <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  </a></li>
  <li><a data-toggle="tab" href="#versions">Past versions</a></li>
</ul>

<div class="tab-content">
<div id="summary" class="tab-pane fade in active">
  <p><strong>Last updated:</strong> 2023-04-19</p>
  <p><strong>Checks:</strong>
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  6
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  1
  </p>
  <p><strong>Knit directory:</strong>
  <code>2021_MPSIIIBvQ96-RNAseq-7dpfLarve/</code>
  <span class="glyphicon glyphicon-question-sign" aria-hidden="true"
  title="This is the local directory in which the code in this file was executed.">
  </span>
  </p>
  <p>
  This reproducible <a href="http://rmarkdown.rstudio.com">R Markdown</a>
  analysis was created with <a
  href="https://github.com/jdblischak/workflowr">workflowr</a> (version
  1.6.2). The <em>Checks</em> tab describes the
  reproducibility checks that were applied when the results were created.
  The <em>Past versions</em> tab lists the development history.
  </p>
<hr>
</div>
<div id="checks" class="tab-pane fade">
  <div class="panel-group" id="workflowr-checks">
  <div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongRMarkdownfilestronguncommittedchanges">
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  <strong>R Markdown file:</strong> uncommitted changes
</a>
</p>
</div>
<div id="strongRMarkdownfilestronguncommittedchanges" class="panel-collapse collapse">
<div class="panel-body">
  The R Markdown file has unstaged changes. 
To know which version of the R Markdown file created these
results, you'll want to first commit it to the Git repo. If
you're still working on the analysis, you can ignore this
warning. When you're finished, you can run
<code>wflow_publish</code> to commit the R Markdown file and
build the HTML.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongEnvironmentstrongempty">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Environment:</strong> empty
</a>
</p>
</div>
<div id="strongEnvironmentstrongempty" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! The global environment was empty. Objects defined in the global
environment can affect the analysis in your R Markdown file in unknown ways.
For reproduciblity it's best to always run the code in an empty environment.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongSeedstrongcodesetseed20211120code">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Seed:</strong> <code>set.seed(20211120)</code>
</a>
</p>
</div>
<div id="strongSeedstrongcodesetseed20211120code" class="panel-collapse collapse">
<div class="panel-body">
  
The command <code>set.seed(20211120)</code> was run prior to running the code in the R Markdown file.
Setting a seed ensures that any results that rely on randomness, e.g.
subsampling or permutations, are reproducible.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongSessioninformationstrongrecorded">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Session information:</strong> recorded
</a>
</p>
</div>
<div id="strongSessioninformationstrongrecorded" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! Recording the operating system, R version, and package versions is
critical for reproducibility.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongCachestrongnone">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Cache:</strong> none
</a>
</p>
</div>
<div id="strongCachestrongnone" class="panel-collapse collapse">
<div class="panel-body">
  
Nice! There were no cached chunks for this analysis, so you can be confident
that you successfully produced the results during this run.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongFilepathsstrongrelative">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>File paths:</strong> relative
</a>
</p>
</div>
<div id="strongFilepathsstrongrelative" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! Using relative paths to the files within your workflowr project
makes it easier to run your code on other machines.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongRepositoryversionstrongahrefhttpsgithubcomkarissab2021MPSIIIBvQ96RNAseq7dpfLarvetree973da7b904bcd0fb4990508b872350997f6d9721targetblank973da7ba">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Repository version:</strong> <a href="https://github.com/karissa-b/2021_MPSIIIBvQ96-RNAseq-7dpfLarve/tree/973da7b904bcd0fb4990508b872350997f6d9721" target="_blank">973da7b</a>
</a>
</p>
</div>
<div id="strongRepositoryversionstrongahrefhttpsgithubcomkarissab2021MPSIIIBvQ96RNAseq7dpfLarvetree973da7b904bcd0fb4990508b872350997f6d9721targetblank973da7ba" class="panel-collapse collapse">
<div class="panel-body">
  
<p>
Great! You are using Git for version control. Tracking code development and
connecting the code version to the results is critical for reproducibility.
</p>

<p>
The results in this page were generated with repository version <a href="https://github.com/karissa-b/2021_MPSIIIBvQ96-RNAseq-7dpfLarve/tree/973da7b904bcd0fb4990508b872350997f6d9721" target="_blank">973da7b</a>.
See the <em>Past versions</em> tab to see a history of the changes made to the
R Markdown and HTML files.
</p>

<p>
Note that you need to be careful to ensure that all relevant files for the
analysis have been committed to Git prior to generating the results (you can
use <code>wflow_publish</code> or <code>wflow_git_commit</code>). workflowr only
checks the R Markdown file, but you know if there are other scripts or data
files that it depends on. Below is the status of the Git repository when the
results were generated:
</p>

<pre><code>
Ignored files:
	Ignored:    .DS_Store
	Ignored:    .Rapp.history
	Ignored:    .Rhistory
	Ignored:    .Rproj.user/
	Ignored:    analysis/figure/
	Ignored:    data/.DS_Store
	Ignored:    data/R_objects/.DS_Store
	Ignored:    data/R_objects/larvae/.DS_Store
	Ignored:    data/adult_brain/.DS_Store
	Ignored:    data/adult_brain/05_featureCounts/.DS_Store
	Ignored:    data/gene_sets/.DS_Store
	Ignored:    data/larvae/.DS_Store
	Ignored:    data/larvae/fastqc_align/.DS_Store
	Ignored:    data/larvae/fastqc_align_dedup/.DS_Store
	Ignored:    data/larvae/fastqc_raw/.DS_Store
	Ignored:    data/larvae/fastqc_trim/.DS_Store
	Ignored:    data/larvae/featureCounts/.DS_Store
	Ignored:    data/larvae/meta/.DS_Store
	Ignored:    data/larvae/starAlignLog/.DS_Store
	Ignored:    output/.DS_Store
	Ignored:    output/plots/
	Ignored:    output/plots4pub/
	Ignored:    output/spreadsheets/

Untracked files:
	Untracked:  Rplot.pdf
	Untracked:  data/DongEtAlData/
	Untracked:  data/R_objects/adult_brain/celltype.rds
	Untracked:  data/R_objects/larvae/celltype_larvae.rds
	Untracked:  data/dongvarpar.rds
	Untracked:  dre04512.pathview.multi.png
	Untracked:  dre04512.pathview.png
	Untracked:  dre04512.png
	Untracked:  dre04512.xml
	Untracked:  upset.pdf

Unstaged changes:
	Modified:   analysis/analysis.Rmd
	Modified:   analysis/analysis_adultbrain.rmd
	Modified:   code/plots4pub.Rmd
	Modified:   data/R_objects/adult_brain/dge.rds
	Modified:   data/R_objects/adult_brain/hmp_ire.rds
	Modified:   data/R_objects/adult_brain/hmp_kegg.rds
	Modified:   data/R_objects/adult_brain/logcpm.rds
	Modified:   data/R_objects/adult_brain/toptablescqn.rds
	Modified:   data/R_objects/larvae/dge.rds
	Modified:   data/R_objects/larvae/hmp_ire.rds
	Modified:   data/R_objects/larvae/hmp_kegg.rds
	Modified:   data/R_objects/larvae/logcpm.rds
	Modified:   data/R_objects/larvae/toptablescqn.rds

</code></pre>

<p>
Note that any generated files, e.g. HTML, png, CSS, etc., are not included in
this status report because it is ok for generated content to have uncommitted
changes.
</p>

</div>
</div>
</div>
</div>
<hr>
</div>
<div id="versions" class="tab-pane fade">
  
<p>
These are the previous versions of the repository in which changes were made
to the R Markdown (<code>analysis/analysis_adultbrain.rmd</code>) and HTML (<code>docs/analysis_adultbrain.html</code>)
files. If you've configured a remote Git repository (see
<code>?wflow_git_remote</code>), click on the hyperlinks in the table below to
view the files as they were in that past version.
</p>
<div class="table-responsive">
<table class="table table-condensed table-hover">
<thead>
<tr>
<th>File</th>
<th>Version</th>
<th>Author</th>
<th>Date</th>
<th>Message</th>
</tr>
</thead>
<tbody>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/karissa-b/2021_MPSIIIBvQ96-RNAseq-7dpfLarve/blob/973da7b904bcd0fb4990508b872350997f6d9721/analysis/analysis_adultbrain.rmd" target="_blank">973da7b</a></td>
<td>Karissa Barthelson</td>
<td>2023-03-09</td>
<td>Message that describes what this change does</td>
</tr>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/karissa-b/2021_MPSIIIBvQ96-RNAseq-7dpfLarve/blob/6d8b85a8d2db45cc350d67dabeb1cca26a0652b0/analysis/analysis_adultbrain.rmd" target="_blank">6d8b85a</a></td>
<td>Karissa Barthelson</td>
<td>2023-03-03</td>
<td>added adult brain</td>
</tr>
</tbody>
</table>
</div>

<hr>
</div>
</div>
</div>





## Introduction



```r
library(tidyverse)
library(magrittr)
library(readxl)
library(ngsReports)
library(AnnotationHub)
library(pander)
library(scales)
library(pheatmap)
library(ggpubr)
library(msigdbr)
library(scales)
library(ggrepel)
library(ggfortify)
library(RColorBrewer)
library(UpSetR)
library(edgeR)
library(goseq)
library(fgsea)
library(cqn)
library(kableExtra)
library(harmonicmeanp)
library(ssizeRNA)

theme_set(theme_bw())
```


```r
ah <- AnnotationHub() %>%
	subset(species == "Danio rerio") %>%
	subset(rdataclass == "EnsDb")

ensDb <- ah[["AH83189"]] # for release 101, latest version and the alignment
grTrans <- transcripts(ensDb)
trLengths <- exonsBy(ensDb, "tx") %>%
	width() %>%
	vapply(sum, integer(1))
mcols(grTrans)$length <- trLengths[names(grTrans)]
gcGene <- grTrans %>%
  mcols() %>%
  as.data.frame() %>%
  dplyr::select(gene_id, tx_id, gc_content, length) %>%
  as_tibble() %>%
  group_by(gene_id) %>%
  summarise(
    gc_content = sum(gc_content*length) / sum(length),
    length = ceiling(median(length))
  )
grGenes <- genes(ensDb)
mcols(grGenes) %<>%
  as.data.frame() %>%
  left_join(gcGene) %>%
  as.data.frame() %>%
  DataFrame()
```


```r
meta <- read_excel("data/adult_brain/karissas_metadata.xlsx", sheet = "onlyseq") %>% 
  mutate(Genotype = `usable genotype?` %>% 
           factor(levels = c("wt", "MPS-III", "EOfAD")), 
         Tank = as.factor(tank)
  ) %>% 
  mutate(sample = paste0(fish, "_", Genotype)) 
```































































