species = { f[:-6] for f in os.listdir(".") if f.endswith(".fasta")  }

rule all:
     input: expand ("{species}.emapper.hits", species = species ),
            expand ("{species}.emapper.annotations", species = species )

rule emapper:
     input: "{species}.fasta"
     output: "{species}.emapper.hits",
             "{species}.emapper.annotations"
     shell: "emapper.py -i {input[0]} --itype proteins -m diamond --sensmode ultra-sensitive --pfam_realign realign --evalue 0.001 --go_evidence all --output {input[0]} --cpu 2"
