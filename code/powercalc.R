library(ssizeRNA)

set.seed(2016)

mu <- x$counts %>%
  as.data.frame() %>%
  .[grepl(colnames(x$counts), pattern = "wt")] %>%
  rowMeans()

disp <-  x %>% estimateDisp() %>% . $tagwise.dispersion

fc <- function(y){exp(rnorm(y, log(1), 0.5*log(2)))}

ssizeRNA_vary(nGenes = 22012, # Num detectable genes
              pi0 = 0.9, # Proportion of non-DE genes
              m = 40, # pseudo sample size
              mu = mu, # Average read count for each gene in control group. Calculated from this current dataset)
              disp = disp, # Dispersion parameter for each gene
              fc = fc, # Fold change per gene
              fdr = 0.05, # FDR level to control
              power = 0.7, # power level
              maxN = 40,
              replace = T
                )

