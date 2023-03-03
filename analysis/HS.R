read_excel("~/Box Sync/MPSIII/HS Measurement/results Sample list MPSIII_3m_zfBrain_HS.xlsx", sheet = 2) %>%
  dplyr::select(`Sample Name`, Sex, `Disac Conc (ng/mg total protein) based on 10 µg total protein`) %>%
  set_colnames(c("sample", "Sex", "Conc")) %>%
  mutate(gene = str_extract(sample, pattern = "^[:alpha:]+") %>%
           factor(levels = c("sgsh", "naglu", "hgsnat")),
         genotype = case_when(
           str_detect(sample, pattern = "1|2|3") ~ "WT",
           str_detect(sample, pattern = "4|5|6") ~ "het",
           str_detect(sample, pattern = "7|8|9") ~ "hom"
         ) %>%
           factor(levels = c("WT", "het", "hom"))
           ) %>%
  na.omit() %>%
  ggplot(aes(genotype, Conc, fill = gene)) +
  geom_bar(stat = "summary", colour = "black") +
  geom_jitter(size = 2, aes(shape = Sex)) +
  scale_fill_manual(values = c("#FBED61", "#87D889", "#5FAEA9")) +
  facet_wrap(~gene) +
  labs(x = "Genotype", y = "Concentration (ng/mg total protein)", fill = "Gene") +
  theme_classic() +
  theme(legend.position = "bottom") +
  ggsave("~/Box Sync/MPSIII/HS Measurement/plot.png", width = 2, height = 2, units = "cm", dpi = 200, scale = 6)


dataHS <- read_excel("~/Box Sync/MPSIII/HS Measurement/results Sample list MPSIII_3m_zfBrain_HS.xlsx", sheet = 2) %>%
  dplyr::select(`Sample Name`, Sex, `Disac Conc (ng/mg total protein) based on 10 µg total protein`) %>%
  set_colnames(c("sample", "Sex", "Conc")) %>%
  mutate(gene = str_extract(sample, pattern = "^[:alpha:]+") %>%
           factor(levels = c("sgsh", "naglu", "hgsnat")),
         genotype = case_when(
           str_detect(sample, pattern = "1|2|3") ~ "WT",
           str_detect(sample, pattern = "4|5|6") ~ "het",
           str_detect(sample, pattern = "7|8|9") ~ "hom"
         ) %>%
           factor(levels = c("WT", "het", "hom")),
         Sex = as.factor(Sex)
  ) %>%
  na.omit()

## 1-wayANOVA
dataHS %>%
  split(f = .$gene) %>%
  lapply(function(x){
    x %>%
      aov(Conc ~ genotype + Sex, data = .) %>%
      summary
        })


read_excel("~/Box Sync/MPSIII/HS Measurement/results Sample list MPSIII_3m_zfBrain_HS.xlsx", sheet = 2) %>%
  dplyr::select(`Sample Name`, Sex, `Disac Conc (ng/mg total protein) based on 10 µg total protein`) %>%
  set_colnames(c("sample", "Sex", "Conc")) %>%
  mutate(gene = str_extract(sample, pattern = "^[:alpha:]+") %>%
           factor(levels = c("sgsh", "naglu", "hgsnat")),
         genotype = case_when(
           str_detect(sample, pattern = "1|2|3") ~ "WT",
           str_detect(sample, pattern = "4|5|6") ~ "het",
           str_detect(sample, pattern = "7|8|9") ~ "hom"
         ) %>%
           factor(levels = c("WT", "het", "hom"))
  ) %>%
  na.omit() %>%
  ggplot(aes(genotype, Conc, fill = gene)) +
  geom_bar(stat = "summary", colour = "black") +
  geom_jitter(size = 2, aes(shape = Sex)) +
  scale_fill_manual(values = c("#FBBE00","#B4C7E7", "#DCAFE7")) +
  facet_wrap(~gene) +
  labs(x = "Genotype", y = "Concentration (ng/mg total protein)", fill = "Gene") +
  theme_linedraw()

