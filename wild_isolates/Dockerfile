FROM minimap_syri_base as app

# set final working directory as /data
#COPY genomes.txt . # generated dynamically now
COPY entrypoint.sh .

WORKDIR /data

ENTRYPOINT ["../entrypoint.sh"]

