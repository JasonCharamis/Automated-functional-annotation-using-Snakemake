**Snakemake workflow for automated functional annotation**

This is a Snakemake workflow for performing functional annotation of protein sets using eggNOG-mapper v2.
eggNOG-mapper is a modern tool for assigning functional annotation using orthology relationships  (Cantalapiedra et al., 2021; https://academic.oup.com/mbe/article/38/12/5825/6379734?login=false).

To run:

conda activate snakemake

snakemake --cores 8 --snakefile Snakefile

Dependencies:

eggnog-mapper
https://github.com/eggnogdb/eggnog-mapper

diamond
https://github.com/bbuchfink/diamond

