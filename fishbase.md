fishbase
================
Ilya Fischhoff
7/1/2020

\#\#\#\#\#install packages

    ## 
    ## Attaching package: 'seqinr'

    ## The following object is masked from 'package:plyr':
    ## 
    ##     count

    ## Loading required package: BiocGenerics

    ## Loading required package: parallel

    ## 
    ## Attaching package: 'BiocGenerics'

    ## The following objects are masked from 'package:parallel':
    ## 
    ##     clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
    ##     clusterExport, clusterMap, parApply, parCapply, parLapply,
    ##     parLapplyLB, parRapply, parSapply, parSapplyLB

    ## The following objects are masked from 'package:stats':
    ## 
    ##     IQR, mad, sd, var, xtabs

    ## The following objects are masked from 'package:base':
    ## 
    ##     anyDuplicated, append, as.data.frame, basename, cbind, colnames,
    ##     dirname, do.call, duplicated, eval, evalq, Filter, Find, get, grep,
    ##     grepl, intersect, is.unsorted, lapply, Map, mapply, match, mget,
    ##     order, paste, pmax, pmax.int, pmin, pmin.int, Position, rank,
    ##     rbind, Reduce, rownames, sapply, setdiff, sort, table, tapply,
    ##     union, unique, unsplit, which, which.max, which.min

    ## Loading required package: S4Vectors

    ## Loading required package: stats4

    ## 
    ## Attaching package: 'S4Vectors'

    ## The following object is masked from 'package:plyr':
    ## 
    ##     rename

    ## The following object is masked from 'package:base':
    ## 
    ##     expand.grid

    ## Loading required package: IRanges

    ## 
    ## Attaching package: 'IRanges'

    ## The following object is masked from 'package:plyr':
    ## 
    ##     desc

    ## Loading required package: XVector

    ## 
    ## Attaching package: 'XVector'

    ## The following object is masked from 'package:plyr':
    ## 
    ##     compact

    ## 
    ## Attaching package: 'Biostrings'

    ## The following object is masked from 'package:seqinr':
    ## 
    ##     translate

    ## The following object is masked from 'package:base':
    ## 
    ##     strsplit

    ## Loading required package: ape

    ## 
    ## Attaching package: 'ape'

    ## The following object is masked from 'package:Biostrings':
    ## 
    ##     complement

    ## The following objects are masked from 'package:seqinr':
    ## 
    ##     as.alignment, consensus

    ## 
    ## Attaching package: 'phylotools'

    ## The following object is masked from 'package:seqinr':
    ## 
    ##     read.fasta

    ## 
    ## Attaching package: 'data.table'

    ## The following object is masked from 'package:IRanges':
    ## 
    ##     shift

    ## The following objects are masked from 'package:S4Vectors':
    ## 
    ##     first, second

    ## 
    ## Attaching package: 'rfishbase'

    ## The following object is masked from 'package:BiocGenerics':
    ## 
    ##     species

    ## Loading required package: lattice

    ## Loading required package: survival

    ## Loading required package: Formula

    ## 
    ## Attaching package: 'Hmisc'

    ## The following object is masked from 'package:ape':
    ## 
    ##     zoom

    ## The following objects are masked from 'package:Biostrings':
    ## 
    ##     mask, translate

    ## The following object is masked from 'package:seqinr':
    ## 
    ##     translate

    ## The following objects are masked from 'package:plyr':
    ## 
    ##     is.discrete, summarize

    ## The following objects are masked from 'package:base':
    ## 
    ##     format.pval, units

\#\#settings

``` r
cutoff = 0.2#cutoff of coverage required for inclusion
```

\#\#look at docs about tables available from fishbase

``` r
tables <- docs()
tables
```

    ##         table
    ## 1   heartbeat
    ## 2   mysqlping
    ## 3    comnames
    ## 4    countref
    ## 5     country
    ## 6        diet
    ## 7     ecology
    ## 8   ecosystem
    ## 9    estimate
    ## 10   faoareas
    ## 11   faoarref
    ## 12  fecundity
    ## 13  fooditems
    ## 14     genera
    ## 15   intrcase
    ## 16 listfields
    ## 17   maturity
    ## 18   morphdat
    ## 19   morphmet
    ## 20 occurrence
    ## 21     oxygen
    ## 22    popchar
    ## 23  popgrowth
    ## 24      poplf
    ## 25      popll
    ## 26      popqb
    ## 27      poplw
    ## 28    predats
    ## 29     ration
    ## 30    refrens
    ## 31   reproduc
    ## 32    species
    ## 33   spawning
    ## 34      speed
    ## 35     stocks
    ## 36   swimming
    ## 37   synonyms
    ## 38       taxa
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               description
    ## 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               API endpoint to confirm that the API is up. Lists all available endpoints
    ## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         API endpoint to test the status of the database
    ## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Table of common names
    ## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          The COUNTREF table holds country-specific information such as the official names in English, French and Spanish, the UN statistical name and code number, name and coordinates of the capital city, FAO areas, aquaculture production, shelf area, languages, international bodies and legal instruments, etc.
    ## 5                                                                                                                                                                                                 Country governments are the political bodies that deal with fisheries management, research and conservation at the national level. It is therefore important to know all the countries where a species occurs, and vice-versa. As mentioned above, the distributional range of many species is not well established. Country-specific checklists of fishes prepared by non-taxonomists often contain misidentifications and generally cannot be verified; on the other hand, complete checklists published by taxonomists and based on verifiable specimen collections do not exist for many countries.
    ## 6                                                                                                                                                                                                                                                                                                                                                                                                                               Knowledge of the diet composition of a fish species at a specific locality is useful in assessing its ecological function and impact, for the construction of ecosystem models (see Box 21), and to help define the nutritional requirements of potential aquaculture species. In FishBase, data in the DIET table are also used to estimate the trophic level of species
    ## 7                                                                                                                                                                                                                                                                                                                                                                                                       The head section of this table, defining habitats, is straightforward, and consists mainly of yes/no choice fields indicating the environmental preferences of a species. The categorical breakdown of possible habitats summarizes the otherwise lengthy text descriptions for species found in different types of environment, and makes such descriptive data accessible to rigorous queries. 
    ## 8                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## 9                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          no description
    ## 10                                                                                                                                                                                                  The FAOAREAS table lists all the FAO statistical areas in which a species occurs, and vice-versa. A choice field classifies such occurrence into: native; endemic (i.e., naturally occurring in no other FAO area); introduced; extirpated (i.e., extinct in this area but still existing in other FAO areas); reintroduced (i.e., after extirpation); unclear. Note that strains and artificial hybrids are always classified as introduced, even if the strain originates from the FAO area in question, because hybrids and strains are by definition genetically distinct from wild populations. 
    ## 11                                                                                                                                              The FAOAREAS REF table contains the names of the 27 statistical areas as defined by FAO, together with some notes on these, based on data from the World Resources Institute (WRI 1990, 1996). These include the length of the Coastline, the estimated Shelf area to 200 m depth, and the area of the exclusive economic zone (EEZ) [not presently shown in user version]. Note, however, that coastline length has a fractal dimension and thus should not be used in comparative studies unless measured with the same 'stick length'. WRI is working on such standardized coastline lengths, and we will use these as soon as they become available. 
    ## 12                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## 13                                                                                                                                                                                                                                                                                                                                                                                                         The FOOD ITEMS table highlights from a set list, the food items reported to be consumed by a particular fish species. Clicking on any of the highlighted food items (under the Food II field) leads, via a list, to the FOOD ITEM DETAILS, with information on the Food group, Food name, Stage/part, Commonness of the food item, Country where the sample was obtained and a Remarks field. 
    ## 14                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             Table of species genera, by species code.  This information is all available in the taxa endpoint as well.
    ## 15                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Table of species introductions
    ## 16                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Search for which tables contain a given field (column)
    ## 17                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Sexual maturity data
    ## 18                                                                                                                                                            The MORPHOLOGY table incorporates descriptive characters in multiple choice fields and morphometric and meristic characters in numeric fields. It is mainly the meristic characters that are used for quick identification, following the database identification scheme of Froese and Papasissi (1990). The structure of the MORPHOLOGY table and the choice of fields it includes are based on a close study of major texts in ichthyology (e.g., Lagler et al. 1977) and consultation with numerous colleagues. Some of the terms employed in the table are highly specialized; their definition may be found in the FishBase Glossary. 
    ## 19                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## 20                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Observations of the occurance of a given species at a given point in space and time
    ## 21                                                                                                                                                                                                                                                                                                                                                                                    The OXYGEN table documents the oxygen consumption of fishes based on experiments reported in the published literature, together with factors known or likely to affect metabolic rate, notably body weight, temperature, salinity, oxygen concentrations, activity level, swimming speed and stress. Additional experimental details, such as the number of fish, and other information may be in the Comment field
    ## 22                                                                                                                                                                                                                                                                                                                                                                                                                                          This table presents information on maximum length (Lmax ), weight (Wmax) and age (tmax) from various localities where a species occurs. The largest values from this table are also entered in the SPECIES table. The POPCHAR table also indicates whether the Lmax, Wmax and tmax values or various combinations thereof refer to the same individual fish. 
    ## 23                                                                                                                                                                                                                                                                                                                    This table contains information on growth, natural mortality and length at first maturity, which serve as inputs to many fish stock assessment models. The data can also be used to generate empirical relationships between growth parameters or natural mortality estimates, and their correlates (e.g., body shape, temperature, etc.), a line of research that is useful both for stock assessment and for increasing understanding of the evolution of life-history strategies
    ## 24 Length-frequency data are widely used to derive growth estimates, especially in small tropical fishes (see the POPGROWTH table, this vol.). Froese and Binohlan (2000) have shown that length-frequency curves can also be used to get a first assessment of the status of a stock  if the data are plotted in a framework of asymptotic length, length at optimum yield, and length at first maturity (see Key Facts, this vol.). With this new table, we try to collect and preserve historical data from unfished or still lightly fished populations, to be contrasted with the curves typically produced from overexploited stocks, where the large, highly fecund fish (the Mega-spawners) have disappeared and the bulk of the catch is made up of juveniles which had no chance to reproduce. 
    ## 25                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      This table contains relationships for the conversion of one length type to another for over 8,000 species of fish, derived from different publications, e.g. Moutopoulos and Stergiou (2002) and Gaygusuz et al (2006), or from fish pictures, e.g. Collette and Nauen (1983), Compagno (1984) and Randall (1997)
    ## 26                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     population-based estimates of food consumption (i.e., estimates that account for the age structure of populations)
    ## 27                                                                                                                                                                                                                                                                                                                                                            Length-weight relationships are important in fisheries science, notably to raise length-frequency samples to total catch, or to estimate biomass from underwater length observations. The LENGTH-WEIGHT table presents the a and b values of over 5,000 length-weight relationships of the form W = a x Lb, pertaining to about over 2,000 fish species.  The units of length and weight in FishBase are centimeter and gram, respectively.
    ## 28                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Predators table
    ## 29                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Individual-level species consumption, i.e., as the consumption of a particular food type by a fish of a certain size, in the form of a daily ration
    ## 30                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Bibliographical information for scientific references cited in FishBase (by RefID)
    ## 31                                                                                                                                                                                                                                                                                                                                                                                                                                                                              The REPRODUCTION table contains information on the reproductive mode, the frequency of spawning, whether a species is a batch spawner or not, and the type of reproductive guild to which each species belongs. Descriptions of the life cycle, and of the mating and spawning behavior are also presented in this table.
    ## 32                                                                                                                                                                                                                                                                                                                                                                                                                                                                    The SPECIES table is the backbone of FishBase, and has the scientific name as its basic unit. Every bit of information in FishBase is attached directly or indirectly to at least one species and it is mostly through this table that information is accessed. The SPECIES table covers all of the estimated 25,000 extant fishes.
    ## 33                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            The SPAWNING table therefore presents information on the spawning season, sex ratio, absolute and relative fecundity, fecundity-length relationship and daily spawning frequency of various stocks (populations) of the same species at various localities.
    ## 34                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         This section describes the manner in which fish swim, something they do in a surprising num-ber of ways; also, available records on the swimming speed of fish are presented. 
    ## 35                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           Fisheries scientists work with the exploited part of populations which they term 'stocks'. Similarly, aquaculturists work with 'strains', i.e., races or varieties of a certain species. Again, the distinction between a population or 'race' and a subspecies is unclear. 
    ## 36                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         This section describes the manner in which fish swim, something they do in a surprising num-ber of ways; also, available records on the swimming speed of fish are presented. 
    ## 37                                                                                                                                                                                                             When we developed the FishBase concept, back in 1988, we had the notion that fish taxonomy was in a reasonably good state, that most names used in the literature would be correct, and that the rest could be dealt with through synonymies. While these assumptions were largely true, we dreadfully underestimated the remaining difficulties such as inconsistencies in recent publications, the necessity to keep track of and completely understand taxonomic works, and the sometimes detective-like work needed to assign a piece of information to the proper biological species.
    ## 38                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          A table pre-computed by the API (and pre-cached by rfishbase) containing the full taxanomic classification (according to FishBase) of each species in FishBase, along with the SpecCode, FishBase Name, and possible taxonomic codes assigned to the species.
    ##                                                                                   links
    ## 1                                                                                      
    ## 2                                                                                      
    ## 3                                                                                      
    ## 4                 http://www.fishbase.org/manual/english/fishbasethe_countref_table.htm
    ## 5                http://www.fishbase.org/manual/english/fishbasethe_countries_table.htm
    ## 6                     http://www.fishbase.org/manual/english/fishbasethe_diet_table.htm
    ## 7                  http://www.fishbase.org/manual/english/fishbasethe_ecology_table.htm
    ## 8                                                                                      
    ## 9                                                                                      
    ## 10                http://www.fishbase.org/manual/english/fishbasethe_faoareas_table.htm
    ## 11            http://www.fishbase.org/manual/english/fishbasethe_faoareas_ref_table.htm
    ## 12                                                                                     
    ## 13              http://www.fishbase.org/manual/english/fishbasethe_food_items_table.htm
    ## 14                                                                                     
    ## 15            http://www.fishbase.org/manual/english/fishbasethe_Introduction_table.htm
    ## 16                       www.fishbase.org/manual/english/fishbasethe_maturity_table.htm
    ## 17                http://www.fishbase.org/manual/english/fishbasethe_maturity_table.htm
    ## 18              http://www.fishbase.org/manual/english/fishbasethe_morphology_table.htm
    ## 19                                                                                     
    ## 20             http://www.fishbase.org/manual/english/fishbasethe_occurrences_table.htm
    ## 21        http://www.fishbase.org/manual/English/PDF/FB_Book_ATorres_Oxygen_11Jul11.pdf
    ## 22                 http://www.fishbase.org/manual/english/fishbasethe_popchar_table.htm
    ## 23               http://www.fishbase.org/manual/english/fishbasethe_popgrowth_table.htm
    ## 24                           http://www.fishbase.org/manual/english/lengthfrequency.htm
    ## 25 http://www.fishbase.org/manual/english/PDF/FB_Book_CBinohlan_Length-Length_RF_JG.pdf
    ## 26                   http://www.fishbase.org/manual/english/fishbasethe_popqb_table.htm
    ## 27           http://www.fishbase.org/manual/english/fishbasethe_length_weight_table.htm
    ## 28               http://www.fishbase.org/manual/english/fishbasethe_predators_table.htm
    ## 29                  http://www.fishbase.org/manual/english/fishbasethe_ration_table.htm
    ## 30              http://www.fishbase.org/manual/english/fishbasethe_references_table.htm
    ## 31            http://www.fishbase.org/manual/english/fishbasethe_reproduction_table.htm
    ## 32                 http://www.fishbase.org/manual/english/fishbasethe_species_table.htm
    ## 33                http://www.fishbase.org/manual/english/fishbasethe_spawning_table.htm
    ## 34  http://www.fishbase.org/manual/English/PDF/FB_Book_ATorres_Swimming_Speed_RF_JG.pdf
    ## 35                  http://www.fishbase.org/manual/english/fishbasethe_stocks_table.htm
    ## 36  http://www.fishbase.org/manual/English/PDF/FB_Book_ATorres_Swimming_Speed_RF_JG.pdf
    ## 37                http://www.fishbase.org/manual/english/fishbasethe_synonyms_table.htm
    ## 38

\#\#read in data and fix species names

``` r
DF = read.csv("docking-results.csv")

DF$species = str_replace(DF$species, pattern = "_", replacement = " ")

DF$species=capitalize(DF$species)

A = read.csv("ACE2_sequences_fixed.csv")
A_fish = subset(A, is_fish == 1)

names(DF)[names(DF)=="species"]="Species"

DF = DF[, c("Species", "haddock_score_mean", "haddock_score_sd")]
A_fish = A_fish[,c("Species", "Order", "Class")]

DF = merge(DF, A_fish)

#https://cran.r-project.org/web/packages/rfishbase/vignettes/tutorial.html
fish <- validate_names(c(DF$Species))

DF$Species_ACE2 = DF$Species
DF$Species = fish
save(DF, file = "DF.Rdata")
```

\#\#check out some tables in fishbase \#\#brains: one entry for each
individual fish: BrainWeight, BodyWeight
\#\#<https://www.fishbase.in/manual/fishbasethe_brains_table.htm>

``` r
load("DF.Rdata")
species = DF$Species
brain_weights = rep(0, length(species))
body_weights = rep(0, length(species))
brain_body_ratio = rep(NA, length(species))
for (a in 1:length(species)){
  test = data.frame(brains(species[a]))  
  brain_weights[a] = length(which(!is.na(test$BrainWeight)))
  body_weights[a] = length(which(!is.na(test$BodyWeight)))
  brain_body_ratio[a] = mean(test$BrainWeight/ test$BodyWeight)
}
```

    ## Warning: `data_frame()` is deprecated as of tibble 1.1.0.
    ## Please use `tibble()` instead.
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_warnings()` to see where this warning was generated.

``` r
brain_body = brain_weights/body_weights
frac_non_na = length(which(brain_body ==1))/ length(species)
frac_non_na
```

    ## [1] 0.3055556

``` r
names(test)
```

    ##  [1] "SpecCode"     "Species"      "autoctr"      "Name"         "Genus"       
    ##  [6] "StockCode"    "Syncode"      "Sex"          "LifeStage"    "Locality"    
    ## [11] "Number"       "Year"         "BodyWeight"   "BrainWeight"  "EncCoeff"    
    ## [16] "EncIndex"     "SL"           "TL"           "BRAINSRefNo"  "Doubtful"    
    ## [21] "Remarks"      "Entered"      "DateEntered"  "Modified"     "DateModified"
    ## [26] "Expert"       "DateChecked"  "TS"

``` r
DF$brain_body_ratio = brain_body_ratio
save(DF, file = "DF.Rdata")

m <- lm(haddock_score_mean ~ brain_body_ratio, data = DF, na.action = na.omit)
```

\#\#country: multiple rows per species; for example:

``` r
load("DF.Rdata")
test = data.frame(country(DF$Species[1]))  
```

    ## Joining, by = "C_Code"

``` r
head(test)
```

    ##   SpecCode                     Species autoctr Stockcode C_Code CountryRefNo
    ## 1     6655 Acanthochromis polyacanthus   96640      6975    036        75154
    ## 2     6655 Acanthochromis polyacanthus   96641      6975    090         2334
    ## 3     6655 Acanthochromis polyacanthus   96642      6975    242         2334
    ## 4     6655 Acanthochromis polyacanthus   96643      6975    360         2334
    ## 5     6655 Acanthochromis polyacanthus   96644      6975    458         7247
    ## 6     6655 Acanthochromis polyacanthus   96645      6975    540         2334
    ##   AlsoRef Status CurrentPresence Freshwater Brackish Saltwater Land
    ## 1      NA native         present          0        0         1    0
    ## 2      NA native         present          0        0         1    0
    ## 3      NA native         present          0        0         1    0
    ## 4   27157 native         present          0        0         1    0
    ## 5      NA native         present          0        0         1    0
    ## 6      NA native         present          0        0         1    0
    ##                                                                                                                                                                                                                                      Comments
    ## 1                                                                                                                                                   Reported from the Territory of Ashmore and Cartier Islands (Ref. 75154).  Also Ref. 2334.
    ## 2                                                                                                                                                                                                                                        <NA>
    ## 3                                                                                                                                                                                                                                        <NA>
    ## 4 Known from Flores and Komodo I. (Allen pers. comm., Ref. 47567); and Mentawai Islands (Ref. 27157). Also recorded from Raja Ampat Islands, Pulau Seribu, Sangalakki Island, Togean and Banggai Islands (Ref. 47567). Also Ref. 8631, 48636.
    ## 5                                                                                                                                                                                                                                        <NA>
    ## 6                                                                                                                                                                                                                                        <NA>
    ##   Abundance RefAbundance Importance RefImportance ExVesselPrice Aquaculture
    ## 1      <NA>           NA       <NA>            NA            NA        <NA>
    ## 2      <NA>           NA       <NA>            NA            NA        <NA>
    ## 3      <NA>           NA       <NA>            NA            NA        <NA>
    ## 4      <NA>           NA       <NA>            NA            NA        <NA>
    ## 5      <NA>           NA       <NA>            NA            NA        <NA>
    ## 6      <NA>           NA       <NA>            NA            NA        <NA>
    ##   RefAquaculture LiveExportOrg LiveExport RefLiveExport Game Bait Regulations
    ## 1             NA             0       <NA>            NA    0    0        <NA>
    ## 2             NA             0       <NA>            NA    0    0        <NA>
    ## 3             NA             0       <NA>            NA    0    0        <NA>
    ## 4             NA             0       <NA>            NA    0    0        <NA>
    ## 5             NA             0       <NA>            NA    0    0        <NA>
    ## 6             NA             0       <NA>            NA    0    0        <NA>
    ##   RefRegulations Threatened CountrySubComp Entered DateEntered Modified
    ## 1             NA          0              1      14  1992-12-02     1472
    ## 2             NA          0              0      14  1992-12-02       NA
    ## 3             NA          0              0      14  1992-12-02       34
    ## 4             NA          0              0      14  1992-12-02     1124
    ## 5             NA          0              0      65  1994-09-26       NA
    ## 6             NA          0              0      14  1992-12-02      113
    ##   DateModified Expert DateChecked TS       country
    ## 1   2008-12-22     NA        <NA> NA     Australia
    ## 2   1992-12-02     NA        <NA> NA   Solomon Is.
    ## 3   1997-04-22     34  1997-04-22 NA          Fiji
    ## 4   2003-11-18     14  1998-09-02 NA     Indonesia
    ## 5   1994-09-26     NA        <NA> NA      Malaysia
    ## 6   1997-08-12    113  1997-08-12 NA New Caledonia

## countrysub – multiple rows per species

\#\#<https://www.fishbase.de/manual/english/FishBaseThe_Countries_Table.htm>

``` r
load("DF.Rdata")
test = data.frame(countrysub(DF$Species[1]))  
```

    ## Joining, by = "C_Code"

``` r
head(test)
```

    ##   SpecCode                     Species Stockcode C_Code CSub_Code CSubRefNo
    ## 1     6655 Acanthochromis polyacanthus      6975    036    AU-QLD     75154
    ## 2     6655 Acanthochromis polyacanthus      6975    036     AU-WA     75154
    ##   Status CurrentPresence Abundance RefAbundance
    ## 1 native         present      <NA>           NA
    ## 2 native         present      <NA>           NA
    ##                                                     Comments Entered
    ## 1 Known from Murray Islands to Capricorn Group (Ref. 75154).    1472
    ## 2 Known from Churchill Reef to Scorpion Island (Ref. 75154).    1472
    ##   DateEntered Modified DateModified Expert DateChecked autoctr TS   country
    ## 1    22/12/08       NA     22/12/08     NA        <NA>  193238 NA Australia
    ## 2    22/12/08       NA     22/12/08     NA        <NA>  193239 NA Australia

\#\#diet \#\#<https://www.fishbase.in/manual/fishbasethe_diet_table.htm>
\#\#has multiple rows for different stages

``` r
load("DF.Rdata")

species = DF$Species
out = NULL
for (a in 1:length(species)){
  test = data.frame(diet(species[a]))
  print(dim(test)[1])
  print(unique(test$SampleStage))
  out = rbind(out, test)
}
```

    ## [1] 1
    ## [1] NA
    ## [1] 35
    ## [1] "juv./adults"   "recruits/juv." "adults"       
    ## [1] 1
    ## [1] "recruits/juv."
    ## [1] 2
    ## [1] "juv./adults"
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] "adults"
    ## [1] 3
    ## [1] "recruits/juv."
    ## [1] 47
    ## [1] "juv./adults"   "larvae"        "recruits/juv." "adults"       
    ## [1] 1
    ## [1] NA
    ## [1] 5
    ## [1] "adults"      "juv./adults"
    ## [1] 1
    ## [1] NA
    ## [1] 12
    ## [1] "juv./adults"
    ## [1] 1
    ## [1] NA
    ## [1] 2
    ## [1] "juv./adults"
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 14
    ## [1] "recruits/juv." "adults"        "juv./adults"  
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 85
    ## [1] "recruits/juv." "adults"        "juv./adults"   "larvae"       
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 3
    ## [1] "juv./adults"   "recruits/juv."
    ## [1] 1
    ## [1] NA
    ## [1] 13
    ## [1] "recruits/juv." "juv./adults"   "adults"       
    ## [1] 1
    ## [1] NA
    ## [1] 6
    ## [1] "recruits/juv."
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] "recruits/juv."
    ## [1] 5
    ## [1] "juv./adults"
    ## [1] 1
    ## [1] NA
    ## [1] 3
    ## [1] "juv./adults"
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 20
    ## [1] "adults"        "juv./adults"   "recruits/juv."
    ## [1] 1
    ## [1] "juv./adults"
    ## [1] 7
    ## [1] "adults"      "juv./adults"
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 5
    ## [1] "adults"      "juv./adults"
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 25
    ## [1] "juv./adults"   "recruits/juv."
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 2
    ## [1] "juv./adults"
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] "juv./adults"
    ## [1] 13
    ## [1] "larvae"        "recruits/juv." "juv./adults"  
    ## [1] 1
    ## [1] NA
    ## [1] 11
    ## [1] "juv./adults"   "adults"        "recruits/juv."
    ## [1] 4
    ## [1] "juv./adults"
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 2
    ## [1] "recruits/juv." "juv./adults"  
    ## [1] 1
    ## [1] NA
    ## [1] 21
    ## [1] "recruits/juv." "juv./adults"  
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA
    ## [1] 1
    ## [1] NA

``` r
summary(out)
```

    ##     SpecCode       Species             DietCode         StockCode    
    ##  Min.   :    2   Length:393         Min.   :    1.0   Min.   :    1  
    ##  1st Qu.:   69   Class :character   1st Qu.:  547.2   1st Qu.:   79  
    ##  Median :  359   Mode  :character   Median : 4606.5   Median :  374  
    ##  Mean   : 4055                      Mean   : 3939.2   Mean   : 9283  
    ##  3rd Qu.: 2565                      3rd Qu.: 5755.8   3rd Qu.: 4841  
    ##  Max.   :67194                      Max.   :52746.0   Max.   :56760  
    ##                                     NA's   :43        NA's   :43     
    ##    DietRefNo      SampleStage          SampleSize        YearStart   
    ##  Min.   :    33   Length:393         Min.   :   2.00   Min.   :1945  
    ##  1st Qu.: 13427   Class :character   1st Qu.:  12.00   1st Qu.:1946  
    ##  Median : 37666   Mode  :character   Median :  30.00   Median :1950  
    ##  Mean   : 34413                      Mean   : 106.58   Mean   :1961  
    ##  3rd Qu.: 42427                      3rd Qu.:  84.75   3rd Qu.:1968  
    ##  Max.   :117845                      Max.   :2880.00   Max.   :2002  
    ##  NA's   :43                          NA's   :135       NA's   :363   
    ##     YearEnd        January            February            March         
    ##  Min.   :1947   Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.00000  
    ##  1st Qu.:1953   1st Qu.: 0.00000   1st Qu.: 0.00000   1st Qu.: 0.00000  
    ##  Median :1957   Median : 0.00000   Median : 0.00000   Median : 0.00000  
    ##  Mean   :1969   Mean   :-0.06286   Mean   :-0.06571   Mean   :-0.05143  
    ##  3rd Qu.:1987   3rd Qu.: 0.00000   3rd Qu.: 0.00000   3rd Qu.: 0.00000  
    ##  Max.   :2003   Max.   : 0.00000   Max.   : 0.00000   Max.   : 0.00000  
    ##  NA's   :373    NA's   :43         NA's   :43         NA's   :43        
    ##      April               May               June              July        
    ##  Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000  
    ##  1st Qu.: 0.00000   1st Qu.: 0.0000   1st Qu.: 0.0000   1st Qu.: 0.0000  
    ##  Median : 0.00000   Median : 0.0000   Median : 0.0000   Median : 0.0000  
    ##  Mean   :-0.09143   Mean   :-0.1171   Mean   :-0.1343   Mean   :-0.1657  
    ##  3rd Qu.: 0.00000   3rd Qu.: 0.0000   3rd Qu.: 0.0000   3rd Qu.: 0.0000  
    ##  Max.   : 0.00000   Max.   : 0.0000   Max.   : 0.0000   Max.   : 0.0000  
    ##  NA's   :43         NA's   :43        NA's   :43        NA's   :43       
    ##      August          September           October        November       
    ##  Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.0   Min.   :-1.00000  
    ##  1st Qu.: 0.0000   1st Qu.: 0.00000   1st Qu.: 0.0   1st Qu.: 0.00000  
    ##  Median : 0.0000   Median : 0.00000   Median : 0.0   Median : 0.00000  
    ##  Mean   :-0.1343   Mean   :-0.09429   Mean   :-0.1   Mean   :-0.09714  
    ##  3rd Qu.: 0.0000   3rd Qu.: 0.00000   3rd Qu.: 0.0   3rd Qu.: 0.00000  
    ##  Max.   : 0.0000   Max.   : 0.00000   Max.   : 0.0   Max.   : 0.00000  
    ##  NA's   :43        NA's   :43         NA's   :43     NA's   :43        
    ##     December           C_Code            Locality             E_Code      
    ##  Min.   :-1.00000   Length:393         Length:393         Min.   :   8.0  
    ##  1st Qu.: 0.00000   Class :character   Class :character   1st Qu.: 104.0  
    ##  Median : 0.00000   Mode  :character   Mode  :character   Median : 139.0  
    ##  Mean   :-0.06286                                         Mean   : 150.6  
    ##  3rd Qu.: 0.00000                                         3rd Qu.: 145.0  
    ##  Max.   : 0.00000                                         Max.   :1760.0  
    ##  NA's   :43                                               NA's   :197     
    ##   Method        MethodType        Remark            OtherItems    
    ##  Mode:logical   Mode:logical   Length:393         Min.   : 0.000  
    ##  NA's:393       NA's:393       Class :character   1st Qu.: 0.000  
    ##                                Mode  :character   Median : 2.000  
    ##                                                   Mean   : 9.126  
    ##                                                   3rd Qu.:11.000  
    ##                                                   Max.   :53.200  
    ##                                                   NA's   :256     
    ##   PercentEmpty       Troph          seTroph          SizeMin       
    ##  Min.   : 0.00   Min.   :1.360   Min.   :0.0000   Min.   :  0.300  
    ##  1st Qu.: 6.00   1st Qu.:3.200   1st Qu.:0.2200   1st Qu.:  8.875  
    ##  Median :19.00   Median :3.565   Median :0.3700   Median : 16.750  
    ##  Mean   :26.14   Mean   :3.581   Mean   :0.3811   Mean   : 23.688  
    ##  3rd Qu.:39.00   3rd Qu.:4.090   3rd Qu.:0.5500   3rd Qu.: 30.200  
    ##  Max.   :91.70   Max.   :4.560   Max.   :0.8200   Max.   :136.000  
    ##  NA's   :244     NA's   :43      NA's   :43       NA's   :213      
    ##     SizeMax         SizeType           FishLength        Entered      
    ##  Min.   :  1.20   Length:393         Min.   :  0.10   Min.   :   1.0  
    ##  1st Qu.: 18.00   Class :character   1st Qu.: 13.10   1st Qu.:  34.0  
    ##  Median : 30.00   Mode  :character   Median : 25.00   Median :  34.0  
    ##  Mean   : 39.46                      Mean   : 30.48   Mean   : 200.8  
    ##  3rd Qu.: 59.00                      3rd Qu.: 40.00   3rd Qu.: 309.0  
    ##  Max.   :195.00                      Max.   :165.50   Max.   :2495.0  
    ##  NA's   :213                         NA's   :102      NA's   :43      
    ##   DateEntered                     Modified       DateModified                
    ##  Min.   :1991-10-17 00:00:00   Min.   :   3.0   Min.   :1930-05-01 00:00:00  
    ##  1st Qu.:1997-11-28 18:00:00   1st Qu.:  34.0   1st Qu.:2003-01-20 12:00:00  
    ##  Median :2002-09-19 00:00:00   Median : 309.0   Median :2007-01-11 00:00:00  
    ##  Mean   :2001-07-03 06:27:08   Mean   : 244.6   Mean   :2005-10-15 11:54:02  
    ##  3rd Qu.:2004-03-04 00:00:00   3rd Qu.: 309.0   3rd Qu.:2010-12-17 00:00:00  
    ##  Max.   :2018-04-25 00:00:00   Max.   :1307.0   Max.   :2018-04-25 00:00:00  
    ##  NA's   :43                    NA's   :286      NA's   :43                   
    ##      Expert       DateChecked                 
    ##  Min.   : 21.0   Min.   :2001-03-29 00:00:00  
    ##  1st Qu.:297.5   1st Qu.:2001-04-09 12:00:00  
    ##  Median :574.0   Median :2001-04-21 00:00:00  
    ##  Mean   :435.3   Mean   :2001-05-12 00:00:00  
    ##  3rd Qu.:642.5   3rd Qu.:2001-06-03 00:00:00  
    ##  Max.   :711.0   Max.   :2001-07-16 00:00:00  
    ##  NA's   :390     NA's   :390

``` r
unique(out$SampleStage)
```

    ## [1] NA              "juv./adults"   "recruits/juv." "adults"       
    ## [5] "larvae"

\#\#diet\_items – multiple rows per species
\#\#<https://www.fishbase.se/manual/English/fishbasethe_food_items_table.htm>

``` r
load("DF.Rdata")
species = DF$Species
#just check a few to save time
species = species[1:5]
out = NULL
for (a in 1:length(species)){
  test = data.frame(diet_items(species[a]))
  print(dim(test)[1])
  out = rbind(out, test)
}
```

    ## [1] 38693
    ## [1] 38693
    ## [1] 38693
    ## [1] 38693
    ## [1] 38693

``` r
summary(out)
```

    ##     autoctr          DietCode        FoodI              FoodII         
    ##  Min.   : 95237   Min.   :    1   Length:193465      Length:193465     
    ##  1st Qu.:104917   1st Qu.: 1801   Class :character   Class :character  
    ##  Median :114597   Median : 3597   Mode  :character   Mode  :character  
    ##  Mean   :141575   Mean   : 5718                                        
    ##  3rd Qu.:124244   3rd Qu.: 6504                                        
    ##  Max.   :861114   Max.   :52809                                        
    ##                                                                        
    ##    FoodIII             Stage            DietPercent       ItemName        
    ##  Length:193465      Length:193465      Min.   :  0.00   Length:193465     
    ##  Class :character   Class :character   1st Qu.:  1.70   Class :character  
    ##  Mode  :character   Mode  :character   Median :  6.71   Mode  :character  
    ##                                        Mean   : 17.93                     
    ##                                        3rd Qu.: 23.70                     
    ##                                        Max.   :100.00                     
    ##                                                                           
    ##    Comment           DietSpeccode    DietSpeccodeSLB  AlphaCode        
    ##  Length:193465      Min.   :    2    Mode:logical    Length:193465     
    ##  Class :character   1st Qu.:  323    NA's:193465     Class :character  
    ##  Mode  :character   Median : 1477                    Mode  :character  
    ##                     Mean   : 5221                                      
    ##                     3rd Qu.: 3897                                      
    ##                     Max.   :61649                                      
    ##                     NA's   :186000                                     
    ##    PreyTroph       PreySeTroph     PreyRemark    
    ##  Min.   :1.00     Min.   :0.00     Mode:logical  
    ##  1st Qu.:2.52     1st Qu.:0.40     NA's:193465   
    ##  Median :3.20     Median :0.47                   
    ##  Mean   :3.04     Mean   :0.48                   
    ##  3rd Qu.:3.24     3rd Qu.:0.70                   
    ##  Max.   :5.03     Max.   :0.80                   
    ##  NA's   :189195   NA's   :189195

``` r
head(test)
```

    ##   autoctr DietCode      FoodI        FoodII        FoodIII       Stage
    ## 1  122522        1 zoobenthos      mollusks       bivalves n.a./others
    ## 2  101628        1     nekton       finfish      bony fish juv./adults
    ## 3  107359        1 zoobenthos benth. crust.       lobsters juv./adults
    ## 4  119985        1 zoobenthos         worms    polychaetes juv./adults
    ## 5  116667        1 zoobenthos benth. crust. shrimps/prawns juv./adults
    ## 6  112452        1 zoobenthos benth. crust. shrimps/prawns juv./adults
    ##   DietPercent            ItemName
    ## 1         1.0          gastropods
    ## 2        18.1 Trisopterus minutus
    ## 3        12.6         Galatheidae
    ## 4         2.3         polychaetes
    ## 5         5.0          Pandalidae
    ## 6         5.3          Macropipus
    ##                                                                                                                                                                                Comment
    ## 1                                                                                                               0.8% bivalves/gastropods incl.  0.1% euphausiids, 0.1% unid. organisms
    ## 2 1% <i>Rhinonemus minutus</i>,4.1% <i>Trisopterus minutus</i>, 0.2% Gobiidae, 3.3% <i>Trisopterus esmarkii</i>,0.8% <i>Lumpenus</i>,1.3% <i>Scyliorhinus canicula</i>,7.4% unid. Fish
    ## 3                                                                                                                                                                          Galatheidae
    ## 4                                                                                                                                                                                 <NA>
    ## 5                                                                                                                                                                           Pandalidae
    ## 6                                                                             0.5% <i>Crangon</i>,    0.5% <i>Processa</i>,    2.3% <i>Macropipus</i>,    0.7% Majidae, 0.1% Paguridae
    ##   DietSpeccode DietSpeccodeSLB AlphaCode PreyTroph PreySeTroph PreyRemark
    ## 1           NA              NA       GAS        NA          NA         NA
    ## 2          481              NA       POD        NA          NA         NA
    ## 3           NA              NA       LOQ        NA          NA         NA
    ## 4           NA              NA       WOR        NA          NA         NA
    ## 5           NA              NA       PDZ        NA          NA         NA
    ## 6           NA              NA      <NA>        NA          NA         NA

\#\#distribution \#\#currently this is ~ FAO areas table (minus “note”
field) e.g. <http://www.fishbase.us/Country/FaoAreaList.php?ID=5537>
\#\#each species may have multiple bounding boxes

``` r
load("DF.Rdata")
species = DF$Species
out = NULL
for (a in 1:length(species)){
  tmp = data.frame(distribution(species[a]))
  print(dim(tmp)[1])
  
  ind_species =which(names(tmp) == "Species")
  inds_new = setdiff(seq(1,dim(tmp)[2]), ind_species)
  names(tmp)[inds_new]= paste0(names(tmp)[inds_new], 
                                       "_distribution")
  tmp = merge(DF[a,], tmp)
  out = rbind(out, tmp)
}
```

    ## [1] 3
    ## [1] 5
    ## [1] 3
    ## [1] 2
    ## [1] 4
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 4
    ## [1] 2
    ## [1] 10
    ## [1] 12
    ## [1] 28
    ## [1] 2
    ## [1] 2
    ## [1] 4
    ## [1] 3
    ## [1] 1
    ## [1] 13
    ## [1] 1
    ## [1] 1
    ## [1] 5
    ## [1] 1
    ## [1] 7
    ## [1] 20
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 6
    ## [1] 4
    ## [1] 3
    ## [1] 2
    ## [1] 6
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 4
    ## [1] 6
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 18
    ## [1] 15
    ## [1] 42
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 3
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 6
    ## [1] 2
    ## [1] 6
    ## [1] 1
    ## [1] 2
    ## [1] 5
    ## [1] 5
    ## [1] 1
    ## [1] 13
    ## [1] 11
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 2
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 6
    ## [1] 5

``` r
DF_distribution = out
save(DF_distribution, file = "DF_distribution.Rdata")
summary(DF_distribution)
```

    ##    Species          haddock_score_mean haddock_score_sd    Order          
    ##  Length:342         Min.   :-167.8     Min.   :0.7569   Length:342        
    ##  Class :character   1st Qu.:-143.6     1st Qu.:2.2156   Class :character  
    ##  Mode  :character   Median :-140.7     Median :3.0925   Mode  :character  
    ##                     Mean   :-137.8     Mean   :3.0288                     
    ##                     3rd Qu.:-129.1     3rd Qu.:3.7524                     
    ##                     Max.   :-108.5     Max.   :5.4386                     
    ##                                                                           
    ##     Class           Species_ACE2       brain_body_ratio SpecCode_distribution
    ##  Length:342         Length:342         Min.   : 0.771   Min.   :    2.0      
    ##  Class :character   Class :character   1st Qu.: 2.022   1st Qu.:   69.0      
    ##  Mode  :character   Mode  :character   Median : 2.150   Median :  788.5      
    ##                                        Mean   : 3.808   Mean   : 3688.7      
    ##                                        3rd Qu.: 2.302   3rd Qu.: 3231.0      
    ##                                        Max.   :27.139   Max.   :67194.0      
    ##                                        NA's   :159                           
    ##  autoctr_distribution AreaCode_distribution StockCode_distribution
    ##  Min.   :   82        Min.   : 1.00         Min.   :    1         
    ##  1st Qu.: 3565        1st Qu.: 4.00         1st Qu.:  396         
    ##  Median : 8606        Median :19.50         Median : 3398         
    ##  Mean   :21648        Mean   :25.34         Mean   :10054         
    ##  3rd Qu.:37488        3rd Qu.:45.50         3rd Qu.: 5879         
    ##  Max.   :73061        Max.   :88.00         Max.   :58289         
    ##                                                                   
    ##  Status_distribution Entered_distribution DateEntered_distribution     
    ##  Length:342          Min.   :   1.00      Min.   :1990-10-19 00:00:00  
    ##  Class :character    1st Qu.:   2.00      1st Qu.:1991-09-14 00:00:00  
    ##  Mode  :character    Median :  10.00      Median :1993-09-01 00:00:00  
    ##                      Mean   :  58.26      Mean   :1996-12-14 23:51:28  
    ##                      3rd Qu.:  34.00      3rd Qu.:1998-12-20 06:00:00  
    ##                      Max.   :1472.00      Max.   :2018-04-04 00:00:00  
    ##                                                                        
    ##  Modified.x_distribution DateModified_distribution     Expert_distribution
    ##  Min.   :   1.00         Min.   :1990-10-19 00:00:00   Min.   :   1.0     
    ##  1st Qu.:   1.00         1st Qu.:1994-08-05 00:00:00   1st Qu.: 113.0     
    ##  Median :  10.00         Median :1994-09-28 00:00:00   Median : 113.0     
    ##  Mean   :  67.17         Mean   :2000-03-10 07:35:07   Mean   : 164.7     
    ##  3rd Qu.:  65.00         3rd Qu.:2007-07-11 00:00:00   3rd Qu.: 113.0     
    ##  Max.   :1267.00         Max.   :2018-04-04 00:00:00   Max.   :1267.0     
    ##  NA's   :199             NA's   :7                     NA's   :324        
    ##  DateChecked_distribution      TS.x_distribution FAO_distribution  
    ##  Min.   :1995-06-22 00:00:00   Mode:logical      Length:342        
    ##  1st Qu.:1995-08-23 00:00:00   NA's:342          Class :character  
    ##  Median :2014-05-13 00:00:00                     Mode  :character  
    ##  Mean   :2006-04-09 04:29:41                                       
    ##  3rd Qu.:2014-05-13 00:00:00                                       
    ##  Max.   :2014-05-13 00:00:00                                       
    ##  NA's   :305                                                       
    ##  Note_distribution  Coastline_distribution Shelf_distribution
    ##  Length:342         Min.   : 30663         Min.   :    1326  
    ##  Class :character   1st Qu.: 37908         1st Qu.:    5632  
    ##  Mode  :character   Median :163609         Median : 2980000  
    ##                     Mean   :113572         Mean   :10385227  
    ##                     3rd Qu.:163609         3rd Qu.:17616000  
    ##                     Max.   :183950         Max.   :48899000  
    ##                     NA's   :175            NA's   :1         
    ##  EEZarea_distribution LatDeg_distribution LatMin_distribution
    ##  Min.   :10125        Min.   : 4.00       Min.   :0          
    ##  1st Qu.:11981        1st Qu.:20.00       1st Qu.:0          
    ##  Median :20258        Median :29.00       Median :0          
    ##  Mean   :18182        Mean   :29.61       Mean   :0          
    ##  3rd Qu.:20258        3rd Qu.:40.00       3rd Qu.:0          
    ##  Max.   :28420        Max.   :77.00       Max.   :0          
    ##  NA's   :175                                                 
    ##  N_S_distribution   LongDeg_distribution LongMin_distribution
    ##  Length:342         Min.   :  1.00       Min.   :0           
    ##  Class :character   1st Qu.: 28.00       1st Qu.:0           
    ##  Mode  :character   Median : 91.00       Median :0           
    ##                     Mean   : 78.27       Mean   :0           
    ##                     3rd Qu.:115.00       3rd Qu.:0           
    ##                     Max.   :190.00       Max.   :0           
    ##                                                              
    ##  E_W_distribution   NeighborN_distribution NeighborS_distribution
    ##  Length:342         Min.   : 2.0           Min.   : 1.00         
    ##  Class :character   1st Qu.: 7.0           1st Qu.: 3.00         
    ##  Mode  :character   Median :18.0           Median :34.00         
    ##                     Mean   :28.9           Mean   :34.92         
    ##                     3rd Qu.:61.0           3rd Qu.:58.00         
    ##                     Max.   :81.0           Max.   :88.00         
    ##                     NA's   :83             NA's   :73            
    ##  NeighborW_distribution NeighborE_distribution NorthernLatitude_distribution
    ##  Min.   : 5.00          Min.   : 4.00          Min.   : 5.00                
    ##  1st Qu.: 5.00          1st Qu.:27.00          1st Qu.:30.00                
    ##  Median :21.00          Median :37.00          Median :54.00                
    ##  Mean   :32.74          Mean   :43.36          Mean   :51.65                
    ##  3rd Qu.:57.00          3rd Qu.:77.00          3rd Qu.:81.00                
    ##  Max.   :87.00          Max.   :87.00          Max.   :90.00                
    ##  NA's   :157            NA's   :125                                         
    ##  NorthernLatitudeNS_distribution SouthernLatitude_distribution
    ##  Length:342                      Min.   : 5.00                
    ##  Class :character                1st Qu.:10.00                
    ##  Mode  :character                Median :35.00                
    ##                                  Mean   :30.32                
    ##                                  3rd Qu.:39.75                
    ##                                  Max.   :85.00                
    ##                                                               
    ##  SouthernLatitudeNS_distribution WesternLongitude_distribution
    ##  Length:342                      Min.   :  7.00               
    ##  Class :character                1st Qu.: 25.00               
    ##  Mode  :character                Median : 66.00               
    ##                                  Mean   : 71.68               
    ##                                  3rd Qu.:105.00               
    ##                                  Max.   :180.00               
    ##                                                               
    ##  WesternLongitudeEW_distribution EasternLongitude_distribution
    ##  Length:342                      Min.   : 13.00               
    ##  Class :character                1st Qu.: 56.00               
    ##  Mode  :character                Median : 78.00               
    ##                                  Mean   : 92.82               
    ##                                  3rd Qu.:155.00               
    ##                                  Max.   :179.00               
    ##                                                               
    ##  EasternLongitudeEW_distribution FamiliesCount_distribution
    ##  Length:342                      Min.   :  2.0             
    ##  Class :character                1st Qu.: 96.0             
    ##  Mode  :character                Median :134.0             
    ##                                  Mean   :183.9             
    ##                                  3rd Qu.:259.2             
    ##                                  Max.   :345.0             
    ##                                                            
    ##  FamiliesNo_distribution FamiliesRef_distribution SpeciesCount_distribution
    ##  Min.   :221.0           Min.   : 167.0           Min.   :   7             
    ##  1st Qu.:221.0           1st Qu.: 230.0           1st Qu.:1133             
    ##  Median :221.0           Median : 230.0           Median :2430             
    ##  Mean   :227.5           Mean   : 719.7           Mean   :3160             
    ##  3rd Qu.:221.0           3rd Qu.: 230.0           3rd Qu.:5307             
    ##  Max.   :270.0           Max.   :6063.0           Max.   :6486             
    ##  NA's   :295             NA's   :295                                       
    ##  SpeciesNo_distribution SpeciesRef_distribution FamFisheries_distribution
    ##  Min.   : 110           Min.   :  167           Min.   :  2.0            
    ##  1st Qu.: 924           1st Qu.: 1468           1st Qu.: 67.0            
    ##  Median :1248           Median :12267           Median :102.0            
    ##  Mean   :1754           Mean   : 7357           Mean   :117.1            
    ##  3rd Qu.:2500           3rd Qu.:12267           3rd Qu.:147.0            
    ##  Max.   :4000           Max.   :12267           Max.   :209.0            
    ##  NA's   :52             NA's   :41                                       
    ##  SpecFisheries_distribution FamAqua_distribution SpecAqua_distribution
    ##  Min.   :   7.0             Min.   : 0.00        Min.   :  0.00       
    ##  1st Qu.: 300.0             1st Qu.:20.00        1st Qu.: 57.00       
    ##  Median : 479.0             Median :27.00        Median : 88.50       
    ##  Mean   : 674.9             Mean   :28.65        Mean   : 99.64       
    ##  3rd Qu.: 843.0             3rd Qu.:39.00        3rd Qu.:105.00       
    ##  Max.   :1596.0             Max.   :48.00        Max.   :245.00       
    ##                                                                       
    ##  FamBait_distribution SpecBait_distribution FamOrnament_distribution
    ##  Min.   : 0.00        Min.   : 0.00         Min.   : 0.00           
    ##  1st Qu.:10.00        1st Qu.:20.00         1st Qu.:36.00           
    ##  Median :14.00        Median :32.00         Median :40.00           
    ##  Mean   :14.96        Mean   :33.42         Mean   :45.98           
    ##  3rd Qu.:18.50        3rd Qu.:40.00         3rd Qu.:57.00           
    ##  Max.   :25.00        Max.   :68.00         Max.   :85.00           
    ##                                                                     
    ##  SpecOrnament_distribution FamSport_distribution SpecSport_distribution
    ##  Min.   :  0.0             Min.   : 0.00         Min.   :  0.0         
    ##  1st Qu.: 96.0             1st Qu.:36.00         1st Qu.:139.0         
    ##  Median :307.0             Median :51.00         Median :177.0         
    ##  Mean   :387.6             Mean   :56.19         Mean   :194.5         
    ##  3rd Qu.:661.0             3rd Qu.:72.00         3rd Qu.:212.0         
    ##  Max.   :885.0             Max.   :89.00         Max.   :363.0         
    ##                                                                        
    ##  FamHuman_distribution SpecHuman_distribution FamThreat_distribution
    ##  Min.   :  2.0         Min.   :   7.0         Min.   : 0.0          
    ##  1st Qu.: 77.0         1st Qu.: 500.0         1st Qu.:28.0          
    ##  Median :112.0         Median : 789.0         Median :33.0          
    ##  Mean   :127.0         Mean   : 960.7         Mean   :33.9          
    ##  3rd Qu.:166.2         3rd Qu.:1195.0         3rd Qu.:39.0          
    ##  Max.   :225.0         Max.   :2172.0         Max.   :51.0          
    ##                                                                     
    ##  SpecThreat_distribution FamIntro_distribution SpecIntro_distribution
    ##  Min.   :  0             Min.   : 0.0          Min.   :  0.00        
    ##  1st Qu.: 65             1st Qu.: 2.0          1st Qu.:  3.00        
    ##  Median :101             Median :11.0          Median : 49.00        
    ##  Mean   :229             Mean   :11.2          Mean   : 42.16        
    ##  3rd Qu.:565             3rd Qu.:20.0          3rd Qu.: 69.00        
    ##  Max.   :644             Max.   :62.0          Max.   :105.00        
    ##                                                                      
    ##  FamDanger_distribution SpecDanger_distribution Complete_distribution
    ##  Min.   : 0.00          Min.   :  0.0           Min.   :-1.0000      
    ##  1st Qu.:25.00          1st Qu.: 90.0           1st Qu.:-1.0000      
    ##  Median :43.00          Median :144.5           Median :-1.0000      
    ##  Mean   :46.53          Mean   :183.8           Mean   :-0.9503      
    ##  3rd Qu.:62.50          3rd Qu.:216.0           3rd Qu.:-1.0000      
    ##  Max.   :82.00          Max.   :463.0           Max.   : 0.0000      
    ##                                                                      
    ##  CompleteRef_distribution ContinentGrp_distribution Modified.y_distribution
    ##  Min.   : 167             Length:342                Min.   :2013-10-30     
    ##  1st Qu.: 556             Class :character          1st Qu.:2013-10-30     
    ##  Median : 594             Mode  :character          Median :2013-10-30     
    ##  Mean   :1388                                       Mean   :2013-10-30     
    ##  3rd Qu.:2204                                       3rd Qu.:2013-10-30     
    ##  Max.   :5152                                       Max.   :2013-10-30     
    ##  NA's   :255                                                               
    ##  TS.y_distribution
    ##  Mode:logical     
    ##  NA's:342         
    ##                   
    ##                   
    ##                   
    ##                   
    ## 

``` r
names(DF_distribution)
```

    ##  [1] "Species"                         "haddock_score_mean"             
    ##  [3] "haddock_score_sd"                "Order"                          
    ##  [5] "Class"                           "Species_ACE2"                   
    ##  [7] "brain_body_ratio"                "SpecCode_distribution"          
    ##  [9] "autoctr_distribution"            "AreaCode_distribution"          
    ## [11] "StockCode_distribution"          "Status_distribution"            
    ## [13] "Entered_distribution"            "DateEntered_distribution"       
    ## [15] "Modified.x_distribution"         "DateModified_distribution"      
    ## [17] "Expert_distribution"             "DateChecked_distribution"       
    ## [19] "TS.x_distribution"               "FAO_distribution"               
    ## [21] "Note_distribution"               "Coastline_distribution"         
    ## [23] "Shelf_distribution"              "EEZarea_distribution"           
    ## [25] "LatDeg_distribution"             "LatMin_distribution"            
    ## [27] "N_S_distribution"                "LongDeg_distribution"           
    ## [29] "LongMin_distribution"            "E_W_distribution"               
    ## [31] "NeighborN_distribution"          "NeighborS_distribution"         
    ## [33] "NeighborW_distribution"          "NeighborE_distribution"         
    ## [35] "NorthernLatitude_distribution"   "NorthernLatitudeNS_distribution"
    ## [37] "SouthernLatitude_distribution"   "SouthernLatitudeNS_distribution"
    ## [39] "WesternLongitude_distribution"   "WesternLongitudeEW_distribution"
    ## [41] "EasternLongitude_distribution"   "EasternLongitudeEW_distribution"
    ## [43] "FamiliesCount_distribution"      "FamiliesNo_distribution"        
    ## [45] "FamiliesRef_distribution"        "SpeciesCount_distribution"      
    ## [47] "SpeciesNo_distribution"          "SpeciesRef_distribution"        
    ## [49] "FamFisheries_distribution"       "SpecFisheries_distribution"     
    ## [51] "FamAqua_distribution"            "SpecAqua_distribution"          
    ## [53] "FamBait_distribution"            "SpecBait_distribution"          
    ## [55] "FamOrnament_distribution"        "SpecOrnament_distribution"      
    ## [57] "FamSport_distribution"           "SpecSport_distribution"         
    ## [59] "FamHuman_distribution"           "SpecHuman_distribution"         
    ## [61] "FamThreat_distribution"          "SpecThreat_distribution"        
    ## [63] "FamIntro_distribution"           "SpecIntro_distribution"         
    ## [65] "FamDanger_distribution"          "SpecDanger_distribution"        
    ## [67] "Complete_distribution"           "CompleteRef_distribution"       
    ## [69] "ContinentGrp_distribution"       "Modified.y_distribution"        
    ## [71] "TS.y_distribution"

\#\#get ecology data
\#\#<http://fishbase.us/manual/English/FishbaseThe_ECOLOGY_Table.htm>

``` r
load("DF.Rdata")
a = 1
out = NULL
for (a in 1:dim(DF)[1]){

  ecology_tmp = ecology(species_list = DF$Species[a])
  ind_species =which(names(ecology_tmp) == "Species")
  inds_new = setdiff(seq(1,dim(ecology_tmp)[2]), ind_species)
  names(ecology_tmp)[inds_new]= paste0(names(ecology_tmp)[inds_new], 
                                       "_ecology")
  tmp = merge(DF[a,], ecology_tmp)
  # dist_tmp = distribution(species_list = DF$Species[a])
  # tmp = merge(tmp, dist_tmp)
  out = rbind(out, tmp)
}
# write.csv(out, file = "fish_HADDOCK_ecology.csv")
ecology = out
save(ecology, file = "ecology.Rdata")
```

\#\#ecosystem – couldn’t find description of this online \#\#multiple
rows per species, one for each ecosystem

``` r
load("ecology.Rdata")
DF = ecology

species = DF$Species
out = NULL

for (a in 1:length(species)){
  tmp = data.frame(ecosystem(species[a]))
  print(dim(tmp)[1])
  out = rbind(out, tmp)
}
```

    ## [1] 18
    ## [1] 27
    ## [1] 25
    ## [1] 24
    ## [1] 16
    ## [1] 1
    ## [1] 9
    ## [1] 3
    ## [1] 1
    ## [1] 3
    ## [1] 11
    ## [1] 7
    ## [1] 44
    ## [1] 82
    ## [1] 28
    ## [1] 28
    ## [1] 4
    ## [1] 6
    ## [1] 9
    ## [1] 11
    ## [1] 8
    ## [1] 77
    ## [1] 3
    ## [1] 8
    ## [1] 110
    ## [1] 4
    ## [1] 10
    ## [1] 24
    ## [1] 11
    ## [1] 5
    ## [1] 3
    ## [1] 19
    ## [1] 10
    ## [1] 22
    ## [1] 4
    ## [1] 37
    ## [1] 4
    ## [1] 19
    ## [1] 2
    ## [1] 11
    ## [1] 43
    ## [1] 2
    ## [1] 1
    ## [1] 4
    ## [1] 53
    ## [1] 15
    ## [1] 86
    ## [1] 86
    ## [1] 86
    ## [1] 86
    ## [1] 1
    ## [1] 5
    ## [1] 8
    ## [1] 8
    ## [1] 13
    ## [1] 12
    ## [1] 2
    ## [1] 7
    ## [1] 2
    ## [1] 17
    ## [1] 2
    ## [1] 5
    ## [1] 29
    ## [1] 80
    ## [1] 2
    ## [1] 73
    ## [1] 31
    ## [1] 2
    ## [1] 1
    ## [1] 29
    ## [1] 6
    ## [1] 14
    ## [1] 7
    ## [1] 2
    ## [1] 9
    ## [1] 5

``` r
summary(out)
```

    ##     SpecCode       Species             autoctr           E_CODE      
    ##  Min.   :    2   Length:1582        Min.   :    26   Min.   :   1.0  
    ##  1st Qu.:   24   Class :character   1st Qu.: 54653   1st Qu.: 139.0  
    ##  Median :  360   Mode  :character   Median : 96979   Median : 295.5  
    ##  Mean   : 2804                      Mean   :109276   Mean   : 449.3  
    ##  3rd Qu.: 3181                      3rd Qu.:125594   3rd Qu.: 790.0  
    ##  Max.   :67194                      Max.   :249865   Max.   :1814.0  
    ##                                                                      
    ##  EcosystemRefno     Stockcode        Status          CurrentPresence   
    ##  Min.   :     2   Min.   :    1   Length:1582        Length:1582       
    ##  1st Qu.:  7247   1st Qu.:   95   Class :character   Class :character  
    ##  Median : 37032   Median :  396   Mode  :character   Mode  :character  
    ##  Mean   : 41915   Mean   : 3325                                        
    ##  3rd Qu.: 59043   3rd Qu.: 3418                                        
    ##  Max.   :119696   Max.   :58289                                        
    ##  NA's   :7                                                             
    ##   Abundance          LifeStage          Remarks.x           Entered.x   
    ##  Length:1582        Length:1582        Length:1582        Min.   :   1  
    ##  Class :character   Class :character   Class :character   1st Qu.:  10  
    ##  Mode  :character   Mode  :character   Mode  :character   Median : 303  
    ##                                                           Mean   : 508  
    ##                                                           3rd Qu.: 949  
    ##                                                           Max.   :2542  
    ##                                                                         
    ##   Dateentered                    Modified.x    Datemodified                
    ##  Min.   :1990-10-19 00:00:00   Min.   :   1   Min.   :1994-02-17 00:00:00  
    ##  1st Qu.:1999-04-07 00:00:00   1st Qu.:   1   1st Qu.:2002-03-27 00:00:00  
    ##  Median :2004-01-31 00:00:00   Median :  97   Median :2007-03-16 00:00:00  
    ##  Mean   :2005-02-12 23:30:18   Mean   : 450   Mean   :2008-01-20 04:55:21  
    ##  3rd Qu.:2011-10-27 00:00:00   3rd Qu.: 675   3rd Qu.:2013-07-17 00:00:00  
    ##  Max.   :2019-04-04 00:00:00   Max.   :2542   Max.   :2019-04-04 00:00:00  
    ##                                NA's   :979    NA's   :5                    
    ##     Expert.x       Datechecked                     WebURL         
    ##  Min.   :   1.0   Min.   :2001-05-02 00:00:00   Length:1582       
    ##  1st Qu.: 393.0   1st Qu.:2001-05-23 00:00:00   Class :character  
    ##  Median : 393.0   Median :2001-06-03 00:00:00   Mode  :character  
    ##  Mean   : 328.5   Mean   :2001-10-08 20:54:06                     
    ##  3rd Qu.: 393.0   3rd Qu.:2001-06-28 00:00:00                     
    ##  Max.   :1873.0   Max.   :2006-07-10 00:00:00                     
    ##  NA's   :1437     NA's   :1468                                    
    ##    TS.x         EcosystemName      EcosystemType           MEOW       
    ##  Mode:logical   Length:1582        Length:1582        Min.   :-1.000  
    ##  NA's:1582      Class :character   Class :character   1st Qu.: 0.000  
    ##                 Mode  :character   Mode  :character   Median : 0.000  
    ##                                                       Mean   :-0.104  
    ##                                                       3rd Qu.: 0.000  
    ##                                                       Max.   : 0.000  
    ##                                                       NA's   :5       
    ##       LME           E_CODE_Large  E_CODE_Larger  E_CODE_Largest 
    ##  Min.   :-1.0000   Min.   :  11   Min.   :   0   Min.   : 7.00  
    ##  1st Qu.: 0.0000   1st Qu.:1323   1st Qu.:1206   1st Qu.: 8.00  
    ##  Median : 0.0000   Median :1340   Median :1206   Median : 9.00  
    ##  Mean   :-0.1877   Mean   :1060   Mean   :1082   Mean   : 8.47  
    ##  3rd Qu.: 0.0000   3rd Qu.:1365   3rd Qu.:1210   3rd Qu.: 9.00  
    ##  Max.   : 0.0000   Max.   :1610   Max.   :1216   Max.   :10.00  
    ##  NA's   :5         NA's   :1189   NA's   :1113   NA's   :1014   
    ##  E_CODE_Ecoregion    MEOWCode      MEOWLevel             Ready        
    ##  Min.   : 246     Min.   :    1   Length:1582        Min.   :-1.0000  
    ##  1st Qu.:1393     1st Qu.:   34   Class :character   1st Qu.:-1.0000  
    ##  Median :1453     Median :20024   Mode  :character   Median :-1.0000  
    ##  Mean   :1403     Mean   :13117                      Mean   :-0.8453  
    ##  3rd Qu.:1493     3rd Qu.:20052                      3rd Qu.:-1.0000  
    ##  Max.   :1533     Max.   :25185                      Max.   : 0.0000  
    ##  NA's   :1335     NA's   :1416                       NA's   :5        
    ##   OtherNames          Location         LocationMap          Salinity        
    ##  Length:1582        Length:1582        Length:1582        Length:1582       
    ##  Class :character   Class :character   Class :character   Class :character  
    ##  Mode  :character   Mode  :character   Mode  :character   Mode  :character  
    ##                                                                             
    ##                                                                             
    ##                                                                             
    ##                                                                             
    ##   RiverLength        Area              SizeRef       DrainageArea     
    ##  Min.   :  14   Min.   :       45   Min.   : 6232   Min.   :    2346  
    ##  1st Qu.: 514   1st Qu.:   284843   1st Qu.: 6232   1st Qu.:  165760  
    ##  Median :1400   Median :   840343   Median : 6232   Median :  810000  
    ##  Mean   :1979   Mean   : 13323475   Mean   :18667   Mean   : 9056089  
    ##  3rd Qu.:3436   3rd Qu.:  2003064   3rd Qu.:27871   3rd Qu.: 3250000  
    ##  Max.   :6695   Max.   :165384000   Max.   :93252   Max.   :69000000  
    ##  NA's   :1291   NA's   :1081        NA's   :1167    NA's   :1308      
    ##   NorthernLat      NrangeNS          SouthernLat      SrangeNS        
    ##  Min.   : 0.00   Length:1582        Min.   : 0.00   Length:1582       
    ##  1st Qu.:11.00   Class :character   1st Qu.: 9.00   Class :character  
    ##  Median :26.00   Mode  :character   Median :22.00   Mode  :character  
    ##  Mean   :31.23                      Mean   :26.39                     
    ##  3rd Qu.:46.00                      3rd Qu.:42.00                     
    ##  Max.   :90.00                      Max.   :86.00                     
    ##  NA's   :369                        NA's   :375                       
    ##    WesternLat       WrangeEW           EasternLat       ErangeEW        
    ##  Min.   :  0.00   Length:1582        Min.   :  0.00   Length:1582       
    ##  1st Qu.: 24.00   Class :character   1st Qu.: 34.00   Class :character  
    ##  Median : 78.00   Mode  :character   Median : 72.00   Mode  :character  
    ##  Mean   : 75.75                      Mean   : 80.68                     
    ##  3rd Qu.:120.00                      3rd Qu.:125.00                     
    ##  Max.   :180.00                      Max.   :180.00                     
    ##  NA's   :371                         NA's   :377                        
    ##    Climate              Polar            Boreal         Temperate      
    ##  Length:1582        Min.   :-1.000   Min.   :-1.000   Min.   :-1.0000  
    ##  Class :character   1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.0000  
    ##  Mode  :character   Median : 0.000   Median : 0.000   Median : 0.0000  
    ##                     Mean   :-0.026   Mean   :-0.078   Mean   :-0.2143  
    ##                     3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.: 0.0000  
    ##                     Max.   : 0.000   Max.   : 0.000   Max.   : 0.0000  
    ##                     NA's   :5        NA's   :5        NA's   :5        
    ##   Subtropical         Tropical        AverageDepth     MaxDepth    
    ##  Min.   :-1.0000   Min.   :-1.0000   Min.   :   2   Min.   :    3  
    ##  1st Qu.: 0.0000   1st Qu.:-1.0000   1st Qu.:  55   1st Qu.:  108  
    ##  Median : 0.0000   Median : 0.0000   Median : 220   Median :  529  
    ##  Mean   :-0.2334   Mean   :-0.4585   Mean   :1878   Mean   : 3542  
    ##  3rd Qu.: 0.0000   3rd Qu.: 0.0000   3rd Qu.:4000   3rd Qu.: 9000  
    ##  Max.   : 0.0000   Max.   : 0.0000   Max.   :4200   Max.   :11524  
    ##  NA's   :5         NA's   :5         NA's   :1462   NA's   :1399   
    ##     DepthRef      TempSurface    TempSurfaceMap       TempDepth   
    ##  Min.   : 6232   Min.   :-1.00   Length:1582        Min.   :-1.2  
    ##  1st Qu.: 6232   1st Qu.:12.50   Class :character   1st Qu.:11.0  
    ##  Median : 6318   Median :22.00   Mode  :character   Median :17.5  
    ##  Mean   :15897   Mean   :18.98                      Mean   :15.5  
    ##  3rd Qu.:27768   3rd Qu.:26.50                      3rd Qu.:22.0  
    ##  Max.   :86351   Max.   :28.80                      Max.   :27.5  
    ##  NA's   :1417    NA's   :1176                       NA's   :1176  
    ##  TempDepthMap       Description          TotalCount     TotalFamCount   
    ##  Length:1582        Length:1582        Min.   :   1.0   Min.   :  0.00  
    ##  Class :character   Class :character   1st Qu.:  55.0   1st Qu.: 17.00  
    ##  Mode  :character   Mode  :character   Median : 228.0   Median : 44.00  
    ##                                        Mean   : 890.7   Mean   : 79.81  
    ##                                        3rd Qu.: 868.0   3rd Qu.:110.00  
    ##                                        Max.   :8674.0   Max.   :403.00  
    ##                                        NA's   :19       NA's   :5       
    ##  TotalComplete        TotalLit       TotalFamLit       TotalRef    
    ##  Min.   :-1.0000   Min.   :  15.0   Min.   : 10.0   Min.   : 5152  
    ##  1st Qu.: 0.0000   1st Qu.:  71.0   1st Qu.: 16.0   1st Qu.:30553  
    ##  Median : 0.0000   Median : 135.0   Median : 30.0   Median :30553  
    ##  Mean   :-0.2492   Mean   : 299.5   Mean   : 43.1   Mean   :31897  
    ##  3rd Qu.: 0.0000   3rd Qu.: 350.0   3rd Qu.: 37.0   3rd Qu.:31075  
    ##  Max.   : 0.0000   Max.   :2500.0   Max.   :198.0   Max.   :96325  
    ##  NA's   :5         NA's   :1366     NA's   :1394    NA's   :1229   
    ##     UseFlag          Comments          Remarks.y        
    ##  Min.   :-1.0000   Length:1582        Length:1582       
    ##  1st Qu.:-1.0000   Class :character   Class :character  
    ##  Median :-1.0000   Mode  :character   Mode  :character  
    ##  Mean   :-0.5555                                        
    ##  3rd Qu.: 0.0000                                        
    ##  Max.   : 0.0000                                        
    ##  NA's   :5                                              
    ##    LastUpdate                    LatDegFill      LatMinFill    
    ##  Min.   :2018-02-22 00:00:00   Min.   : 0.00   Min.   :  0.00  
    ##  1st Qu.:2018-02-22 00:00:00   1st Qu.:11.00   1st Qu.:  0.00  
    ##  Median :2018-02-22 00:00:00   Median :20.00   Median : 16.00  
    ##  Mean   :2018-02-25 04:11:06   Mean   :25.32   Mean   : 22.92  
    ##  3rd Qu.:2018-02-22 00:00:00   3rd Qu.:39.00   3rd Qu.: 41.00  
    ##  Max.   :2019-03-27 00:00:00   Max.   :84.00   Max.   :587.00  
    ##  NA's   :5                     NA's   :280     NA's   :280     
    ##  NorthSouthFill      LongDegFill      LongMinFill    EastWestFill      
    ##  Length:1582        Min.   :  0.00   Min.   : 0.00   Length:1582       
    ##  Class :character   1st Qu.: 25.00   1st Qu.: 0.00   Class :character  
    ##  Mode  :character   Median : 68.00   Median :14.00   Mode  :character  
    ##                     Mean   : 71.79   Mean   :18.24                     
    ##                     3rd Qu.:120.00   3rd Qu.:33.00                     
    ##                     Max.   :179.00   Max.   :59.00                     
    ##                     NA's   :280      NA's   :280                       
    ##  EcosystemURL1      EcosystemURL2      EcosystemURL3        Entered.y     
    ##  Length:1582        Length:1582        Length:1582        Min.   :   1.0  
    ##  Class :character   Class :character   Class :character   1st Qu.:   1.0  
    ##  Mode  :character   Mode  :character   Mode  :character   Median :  34.0  
    ##                                                           Mean   : 296.4  
    ##                                                           3rd Qu.: 393.0  
    ##                                                           Max.   :1560.0  
    ##                                                           NA's   :5       
    ##   DateEntered                    Modified.y      DateModified                
    ##  Min.   :1993-11-24 00:00:00   Min.   :   1.0   Min.   :2018-02-22 00:00:00  
    ##  1st Qu.:1994-02-18 00:00:00   1st Qu.: 309.0   1st Qu.:2018-02-22 00:00:00  
    ##  Median :2002-09-25 00:00:00   Median : 949.0   Median :2018-02-22 00:00:00  
    ##  Mean   :2003-03-03 18:00:13   Mean   : 712.8   Mean   :2018-02-25 10:06:18  
    ##  3rd Qu.:2011-04-18 00:00:00   3rd Qu.: 949.0   3rd Qu.:2018-02-22 00:00:00  
    ##  Max.   :2018-02-15 00:00:00   Max.   :1868.0   Max.   :2019-03-27 00:00:00  
    ##  NA's   :5                     NA's   :399      NA's   :5                    
    ##     Expert.y      DateChecked                  EcosystemName_German
    ##  Min.   :  2.0   Min.   :2002-09-12 00:00:00   Length:1582         
    ##  1st Qu.:949.0   1st Qu.:2012-06-06 00:00:00   Class :character    
    ##  Median :949.0   Median :2012-06-06 00:00:00   Mode  :character    
    ##  Mean   :882.8   Mean   :2012-02-26 11:08:17                       
    ##  3rd Qu.:949.0   3rd Qu.:2012-06-07 00:00:00                       
    ##  Max.   :949.0   Max.   :2015-11-28 00:00:00                       
    ##  NA's   :1401    NA's   :1401                                      
    ##  EcosystemName_Russian_original EcosystemName_Russian EcosystemName_French
    ##  Length:1582                    Length:1582           Length:1582         
    ##  Class :character               Class :character      Class :character    
    ##  Mode  :character               Mode  :character      Mode  :character    
    ##                                                                           
    ##                                                                           
    ##                                                                           
    ##                                                                           
    ##  EcosystemName_Chinese EcosystemName_Dutch EcosystemName_Italian
    ##  Mode:logical          Length:1582         Length:1582          
    ##  NA's:1582             Class :character    Class :character     
    ##                        Mode  :character    Mode  :character     
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##  EcosystemName_Swedish EcosystemName_Greek_original EcosystemName_Greek
    ##  Length:1582           Length:1582                  Length:1582        
    ##  Class :character      Class :character             Class :character   
    ##  Mode  :character      Mode  :character             Mode  :character   
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##  EcosystemName_Portuguese EcosystemName_Spanish EcosystemName_Chinese_u
    ##  Length:1582              Length:1582           Mode:logical           
    ##  Class :character         Class :character      NA's:1582              
    ##  Mode  :character         Mode  :character                             
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##    TS.y        
    ##  Mode:logical  
    ##  NA's:1582     
    ##                
    ##                
    ##                
    ##                
    ## 

``` r
head(tmp)
```

    ##   SpecCode               Species autoctr E_CODE EcosystemRefno Stockcode
    ## 1     3232 Xiphophorus maculatus   99508    375           5723      3428
    ## 2     3232 Xiphophorus maculatus  100206    376           5723      3428
    ## 3     3232 Xiphophorus maculatus  106531    378           1739      3428
    ## 4     3232 Xiphophorus maculatus  109336    379          38466      3428
    ## 5     3232 Xiphophorus maculatus  112190    380           1739      3428
    ##       Status CurrentPresence Abundance LifeStage Remarks.x Entered.x
    ## 1    endemic         Present      <NA>    adults      <NA>         1
    ## 2 introduced         Present      <NA>    adults      <NA>         1
    ## 3 introduced         Present      <NA>    adults      <NA>         1
    ## 4 introduced         Present      <NA>    adults      <NA>         1
    ## 5 introduced         Present      <NA>    adults      <NA>         1
    ##   Dateentered Modified.x Datemodified Expert.x Datechecked WebURL TS.x
    ## 1  2004-01-31         NA   2004-01-31       NA        <NA>   <NA>   NA
    ## 2  2004-01-31         NA   2004-01-31       NA        <NA>   <NA>   NA
    ## 3  2004-01-31         NA   2004-01-31       NA        <NA>   <NA>   NA
    ## 4  2004-01-31         NA   2004-01-31       NA        <NA>   <NA>   NA
    ## 5  2004-01-31         NA   2004-01-31       NA        <NA>   <NA>   NA
    ##   EcosystemName       EcosystemType MEOW LME E_CODE_Large E_CODE_Larger
    ## 1      Nearctic Zoogeographic realm    0   0           NA            NA
    ## 2   Neotropical Zoogeographic realm    0   0           NA            NA
    ## 3     Ethiopian Zoogeographic realm    0   0           NA            NA
    ## 4      Oriental Zoogeographic realm    0   0           NA            NA
    ## 5    Australian Zoogeographic realm    0   0           NA            NA
    ##   E_CODE_Largest E_CODE_Ecoregion MEOWCode MEOWLevel Ready   OtherNames
    ## 1             NA               NA       NA      <NA>    -1         <NA>
    ## 2             NA               NA       NA      <NA>    -1         <NA>
    ## 3             NA               NA       NA      <NA>    -1 Afrotropical
    ## 4             NA               NA       NA      <NA>    -1         <NA>
    ## 5             NA               NA       NA      <NA>    -1         <NA>
    ##                                                   Location LocationMap
    ## 1 North America except tropical Mexico (south of isthmus).        <NA>
    ## 2                               South and Central America.        <NA>
    ## 3                              Africa and southern Arabia.        <NA>
    ## 4                        Tropical Asia and nearby Islands.        <NA>
    ## 5        Celebes to Australia, New Guinea and New Zealand.        <NA>
    ##     Salinity RiverLength Area SizeRef DrainageArea NorthernLat NrangeNS
    ## 1 freshwater          NA   NA      NA           NA          80        N
    ## 2 freshwater          NA   NA      NA           NA          19        N
    ## 3 freshwater          NA   NA      NA           NA          26        N
    ## 4 freshwater          NA   NA      NA           NA          34        N
    ## 5 freshwater          NA   NA      NA           NA           4        N
    ##   SouthernLat SrangeNS WesternLat WrangeEW EasternLat ErangeEW     Climate
    ## 1          16        N        167        W         53        W   Temperate
    ## 2          56        S         93        W         34        W    Tropical
    ## 3          35        S         17        W         60        E    Tropical
    ## 4           7        S         66        E        127        E    Tropical
    ## 5          48        S        105        E        179        E Subtropical
    ##   Polar Boreal Temperate Subtropical Tropical AverageDepth MaxDepth DepthRef
    ## 1     0     -1        -1          -1        0           NA       NA       NA
    ## 2     0      0        -1          -1       -1           NA       NA       NA
    ## 3     0      0         0           0       -1           NA       NA       NA
    ## 4     0      0         0           0       -1           NA       NA       NA
    ## 5     0      0         0          -1        0           NA       NA       NA
    ##   TempSurface TempSurfaceMap TempDepth TempDepthMap
    ## 1          NA           <NA>        NA         <NA>
    ## 2          NA           <NA>        NA         <NA>
    ## 3          NA           <NA>        NA         <NA>
    ## 4          NA           <NA>        NA         <NA>
    ## 5          NA           <NA>        NA         <NA>
    ##                                                                                                                Description
    ## 1                                                                                                                     <NA>
    ## 2 South and Central America with tropical Mexico (south of Isthmus) and all Caribbean Islands from the Bahamas southwards.
    ## 3                                                                                                                     <NA>
    ## 4                                                                                                                     <NA>
    ## 5                                                                                                                     <NA>
    ##   TotalCount TotalFamCount TotalComplete TotalLit TotalFamLit TotalRef UseFlag
    ## 1       1239            63             0       NA          NA       NA       0
    ## 2       6025           102             0       NA          NA       NA       0
    ## 3       3563            92             0       NA          NA       NA       0
    ## 4       4278           122             0       NA          NA       NA       0
    ## 5        868            89             0       NA          NA       NA       0
    ##   Comments Remarks.y LastUpdate LatDegFill LatMinFill NorthSouthFill
    ## 1     <NA>      <NA> 2018-02-22         42          0              N
    ## 2     <NA>      <NA> 2018-02-22          8          0              S
    ## 3     <NA>      <NA> 2018-02-22         12          0              N
    ## 4     <NA>      <NA> 2018-02-22         18          0              N
    ## 5     <NA>      <NA> 2018-02-22         26          0              S
    ##   LongDegFill LongMinFill EastWestFill EcosystemURL1 EcosystemURL2
    ## 1         108           0            W          <NA>          <NA>
    ## 2          66           0            W          <NA>          <NA>
    ## 3           6           0            E          <NA>          <NA>
    ## 4         112           0            E          <NA>          <NA>
    ## 5         154           0            E          <NA>          <NA>
    ##   EcosystemURL3 Entered.y DateEntered Modified.y DateModified Expert.y
    ## 1          <NA>         1  2004-01-31         NA   2018-02-22       NA
    ## 2          <NA>         1  2004-01-31        949   2018-02-22       NA
    ## 3          <NA>         1  2004-01-31         NA   2018-02-22      949
    ## 4          <NA>         1  2004-01-31         NA   2018-02-22       NA
    ## 5          <NA>         1  2004-01-31         NA   2018-02-22       NA
    ##   DateChecked EcosystemName_German EcosystemName_Russian_original
    ## 1        <NA>                 <NA>                           <NA>
    ## 2        <NA>                 <NA>                           <NA>
    ## 3  2012-06-06                 <NA>                           <NA>
    ## 4        <NA>                 <NA>                           <NA>
    ## 5        <NA>                 <NA>                           <NA>
    ##   EcosystemName_Russian EcosystemName_French EcosystemName_Chinese
    ## 1                  <NA>                 <NA>                    NA
    ## 2                  <NA>                 <NA>                    NA
    ## 3                  <NA>                 <NA>                    NA
    ## 4                  <NA>                 <NA>                    NA
    ## 5                  <NA>                 <NA>                    NA
    ##   EcosystemName_Dutch EcosystemName_Italian EcosystemName_Swedish
    ## 1                <NA>                  <NA>                  <NA>
    ## 2                <NA>                  <NA>                  <NA>
    ## 3                <NA>                  <NA>                  <NA>
    ## 4                <NA>                  <NA>                  <NA>
    ## 5                <NA>                  <NA>                  <NA>
    ##   EcosystemName_Greek_original
    ## 1                     Nearctic
    ## 2                  Neotropical
    ## 3                    Ethiopian
    ## 4                     Oriental
    ## 5                   Australian
    ##                                               EcosystemName_Greek
    ## 1                    &#78;&#101;&#97;&#114;&#99;&#116;&#105;&#99;
    ## 2 &#78;&#101;&#111;&#116;&#114;&#111;&#112;&#105;&#99;&#97;&#108;
    ## 3            &#69;&#116;&#104;&#105;&#111;&#112;&#105;&#97;&#110;
    ## 4                  &#79;&#114;&#105;&#101;&#110;&#116;&#97;&#108;
    ## 5       &#65;&#117;&#115;&#116;&#114;&#97;&#108;&#105;&#97;&#110;
    ##   EcosystemName_Portuguese EcosystemName_Spanish EcosystemName_Chinese_u TS.y
    ## 1                     <NA>                  <NA>                      NA   NA
    ## 2                     <NA>                  <NA>                      NA   NA
    ## 3                     <NA>                  <NA>                      NA   NA
    ## 4                     <NA>                  <NA>                      NA   NA
    ## 5                     <NA>                  <NA>                      NA   NA

\#\#estimate: a table of estimates from some models on trophic levels
\#\#<http://www.fishbase.us/manual/English/FishbaseThe_FOOD_ITEMS_table.htm>

``` r
load("ecology.Rdata")
DF = ecology

species = DF$Species
out = NULL
for (a in 1:length(species)){
  tmp = data.frame(estimate(species_list = DF$Species[a]))
  ind_species =which(names(tmp) == "Species")
  inds_new = setdiff(seq(1,dim(tmp)[2]), ind_species)
  names(tmp)[inds_new]= paste0(names(tmp)[inds_new], 
                                     "_estimate")
  tmp = merge(DF[a,], tmp)
  out = rbind(out, tmp)
}

summary(out)
```

    ##    Species          haddock_score_mean haddock_score_sd    Order          
    ##  Length:76          Min.   :-167.8     Min.   :0.7569   Length:76         
    ##  Class :character   1st Qu.:-143.9     1st Qu.:2.1368   Class :character  
    ##  Mode  :character   Median :-139.5     Median :2.7989   Mode  :character  
    ##                     Mean   :-137.4     Mean   :2.9628                     
    ##                     3rd Qu.:-129.1     3rd Qu.:3.8402                     
    ##                     Max.   :-108.5     Max.   :5.4386                     
    ##                                                                           
    ##     Class           Species_ACE2       brain_body_ratio SpecCode_ecology 
    ##  Length:76          Length:76          Min.   : 0.771   Min.   :    2.0  
    ##  Class :character   Class :character   1st Qu.: 2.022   1st Qu.:  896.8  
    ##  Mode  :character   Mode  :character   Median : 2.268   Median : 3732.5  
    ##                                        Mean   : 5.947   Mean   : 9432.2  
    ##                                        3rd Qu.: 6.631   3rd Qu.: 6730.2  
    ##                                        Max.   :27.139   Max.   :67194.0  
    ##                                        NA's   :50                        
    ##  autoctr_ecology StockCode_ecology EcologyRefNo_ecology HabitatsRef_ecology
    ##  Min.   :   33   Min.   :    1     Min.   :    2        Min.   :    2      
    ##  1st Qu.:  686   1st Qu.: 1136     1st Qu.: 4787        1st Qu.: 3158      
    ##  Median : 2199   Median : 3848     Median : 7335        Median : 6946      
    ##  Mean   : 3245   Mean   : 8206     Mean   :17336        Mean   :19424      
    ##  3rd Qu.: 4314   3rd Qu.: 7026     3rd Qu.:32016        3rd Qu.:33846      
    ##  Max.   :11633   Max.   :58289     Max.   :94150        Max.   :94150      
    ##  NA's   :9       NA's   :9         NA's   :9            NA's   :18         
    ##  Neritic_ecology   SupraLittoralZone_ecology Saltmarshes_ecology
    ##  Min.   :-1.0000   Min.   :-1.00000          Min.   :-1.00000   
    ##  1st Qu.: 0.0000   1st Qu.: 0.00000          1st Qu.: 0.00000   
    ##  Median : 0.0000   Median : 0.00000          Median : 0.00000   
    ##  Mean   :-0.1791   Mean   :-0.01493          Mean   :-0.01493   
    ##  3rd Qu.: 0.0000   3rd Qu.: 0.00000          3rd Qu.: 0.00000   
    ##  Max.   : 0.0000   Max.   : 0.00000          Max.   : 0.00000   
    ##  NA's   :9         NA's   :9                 NA's   :9          
    ##  LittoralZone_ecology TidePools_ecology Intertidal_ecology SubLittoral_ecology
    ##  Min.   :-1.00000     Min.   :0         Min.   :-1.0000    Min.   :0          
    ##  1st Qu.: 0.00000     1st Qu.:0         1st Qu.: 0.0000    1st Qu.:0          
    ##  Median : 0.00000     Median :0         Median : 0.0000    Median :0          
    ##  Mean   :-0.01493     Mean   :0         Mean   :-0.1493    Mean   :0          
    ##  3rd Qu.: 0.00000     3rd Qu.:0         3rd Qu.: 0.0000    3rd Qu.:0          
    ##  Max.   : 0.00000     Max.   :0         Max.   : 0.0000    Max.   :0          
    ##  NA's   :9            NA's   :9         NA's   :9          NA's   :9          
    ##  Caves_ecology      Oceanic_ecology   Epipelagic_ecology Mesopelagic_ecology
    ##  Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.00000   
    ##  1st Qu.: 0.00000   1st Qu.:-1.0000   1st Qu.: 0.00000   1st Qu.: 0.00000   
    ##  Median : 0.00000   Median : 0.0000   Median : 0.00000   Median : 0.00000   
    ##  Mean   :-0.01493   Mean   :-0.3433   Mean   :-0.08955   Mean   :-0.01493   
    ##  3rd Qu.: 0.00000   3rd Qu.: 0.0000   3rd Qu.: 0.00000   3rd Qu.: 0.00000   
    ##  Max.   : 0.00000   Max.   : 0.0000   Max.   : 0.00000   Max.   : 0.00000   
    ##  NA's   :9          NA's   :9         NA's   :9          NA's   :9          
    ##  Bathypelagic_ecology Abyssopelagic_ecology Hadopelagic_ecology
    ##  Min.   :0            Min.   :0             Min.   :-1.00000   
    ##  1st Qu.:0            1st Qu.:0             1st Qu.: 0.00000   
    ##  Median :0            Median :0             Median : 0.00000   
    ##  Mean   :0            Mean   :0             Mean   :-0.01493   
    ##  3rd Qu.:0            3rd Qu.:0             3rd Qu.: 0.00000   
    ##  Max.   :0            Max.   :0             Max.   : 0.00000   
    ##  NA's   :9            NA's   :9             NA's   :9          
    ##  Estuaries_ecology Mangroves_ecology  MarshesSwamps_ecology
    ##  Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.00000     
    ##  1st Qu.:-1.0000   1st Qu.: 0.00000   1st Qu.: 0.00000     
    ##  Median : 0.0000   Median : 0.00000   Median : 0.00000     
    ##  Mean   :-0.3731   Mean   :-0.07463   Mean   :-0.07463     
    ##  3rd Qu.: 0.0000   3rd Qu.: 0.00000   3rd Qu.: 0.00000     
    ##  Max.   : 0.0000   Max.   : 0.00000   Max.   : 0.00000     
    ##  NA's   :9         NA's   :9          NA's   :9            
    ##  CaveAnchialine_ecology Stream_ecology    Lakes_ecology      Cave_ecology     
    ##  Min.   :0              Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000  
    ##  1st Qu.:0              1st Qu.:-1.0000   1st Qu.:-1.0000   1st Qu.: 0.00000  
    ##  Median :0              Median : 0.0000   Median : 0.0000   Median : 0.00000  
    ##  Mean   :0              Mean   :-0.4627   Mean   :-0.3582   Mean   :-0.02985  
    ##  3rd Qu.:0              3rd Qu.: 0.0000   3rd Qu.: 0.0000   3rd Qu.: 0.00000  
    ##  Max.   :0              Max.   : 0.0000   Max.   : 0.0000   Max.   : 0.00000  
    ##  NA's   :9              NA's   :9         NA's   :9         NA's   :9         
    ##  Cave2_ecology Herbivory2_ecology HerbivoryRef_ecology FeedingType_ecology
    ##  Min.   :0     Length:76          Min.   :    2        Length:76          
    ##  1st Qu.:0     Class :character   1st Qu.: 5459        Class :character   
    ##  Median :0     Mode  :character   Median : 8179        Mode  :character   
    ##  Mean   :0                        Mean   :16788                           
    ##  3rd Qu.:0                        3rd Qu.:28561                           
    ##  Max.   :0                        Max.   :76754                           
    ##  NA's   :9                        NA's   :18                              
    ##  FeedingTypeRef_ecology DietTroph_ecology DietSeTroph_ecology DietTLu_ecology
    ##  Min.   :   33          Min.   :2.000     Min.   :0.0000      Min.   :2.000  
    ##  1st Qu.: 4826          1st Qu.:2.210     1st Qu.:0.0960      1st Qu.:2.930  
    ##  Median : 7136          Median :3.385     Median :0.1790      Median :3.305  
    ##  Mean   :19098          Mean   :3.229     Mean   :0.2177      Mean   :3.337  
    ##  3rd Qu.:29482          3rd Qu.:4.072     3rd Qu.:0.2770      3rd Qu.:4.043  
    ##  Max.   :76754          Max.   :4.500     Max.   :0.7600      Max.   :4.450  
    ##  NA's   :40             NA's   :48        NA's   :55          NA's   :52     
    ##  DietseTLu_ecology DietRemark_ecology DietRef_ecology FoodTroph_ecology
    ##  Min.   :0.0000    Length:76          Min.   : 5414   Min.   :2.000    
    ##  1st Qu.:0.1575    Class :character   1st Qu.:10379   1st Qu.:2.875    
    ##  Median :0.4400    Mode  :character   Median :33400   Median :3.280    
    ##  Mean   :0.4042                       Mean   :31510   Mean   :3.232    
    ##  3rd Qu.:0.6350                       3rd Qu.:46306   3rd Qu.:3.607    
    ##  Max.   :0.7700                       Max.   :75305   Max.   :4.400    
    ##  NA's   :52                           NA's   :46      NA's   :16       
    ##  FoodSeTroph_ecology FoodRemark_ecology FoodRef_ecology AddRems_ecology   
    ##  Min.   :0.0000      Length:76          Min.   :    2   Length:76         
    ##  1st Qu.:0.3075      Class :character   1st Qu.: 6347   Class :character  
    ##  Median :0.4400      Mode  :character   Median :12692   Mode  :character  
    ##  Mean   :0.4277                         Mean   :14388                     
    ##  3rd Qu.:0.5459                         3rd Qu.:21580                     
    ##  Max.   :1.0500                         Max.   :30469                     
    ##  NA's   :16                             NA's   :73                        
    ##  AssociationRef_ecology Parasitism_ecology Solitary_ecology   Symbiosis_ecology
    ##  Min.   :5951           Min.   :0          Min.   :-1.00000   Min.   :0        
    ##  1st Qu.:5951           1st Qu.:0          1st Qu.: 0.00000   1st Qu.:0        
    ##  Median :5951           Median :0          Median : 0.00000   Median :0        
    ##  Mean   :5951           Mean   :0          Mean   :-0.01493   Mean   :0        
    ##  3rd Qu.:5951           3rd Qu.:0          3rd Qu.: 0.00000   3rd Qu.:0        
    ##  Max.   :5951           Max.   :0          Max.   : 0.00000   Max.   :0        
    ##  NA's   :75             NA's   :9          NA's   :9          NA's   :9        
    ##  Symphorism_ecology Commensalism_ecology Mutualism_ecology Epiphytic_ecology
    ##  Min.   :0          Min.   :0            Min.   :0         Min.   :0        
    ##  1st Qu.:0          1st Qu.:0            1st Qu.:0         1st Qu.:0        
    ##  Median :0          Median :0            Median :0         Median :0        
    ##  Mean   :0          Mean   :0            Mean   :0         Mean   :0        
    ##  3rd Qu.:0          3rd Qu.:0            3rd Qu.:0         3rd Qu.:0        
    ##  Max.   :0          Max.   :0            Max.   :0         Max.   :0        
    ##  NA's   :9          NA's   :9            NA's   :9         NA's   :9        
    ##  Schooling_ecology  SchoolingFrequency_ecology SchoolingLifestage_ecology
    ##  Min.   :-1.00000   Length:76                  Length:76                 
    ##  1st Qu.: 0.00000   Class :character           Class :character          
    ##  Median : 0.00000   Mode  :character           Mode  :character          
    ##  Mean   :-0.04478                                                        
    ##  3rd Qu.: 0.00000                                                        
    ##  Max.   : 0.00000                                                        
    ##  NA's   :9                                                               
    ##  Shoaling_ecology   ShoalingFrequency_ecology ShoalingLifestage_ecology
    ##  Min.   :-1.00000   Length:76                 Length:76                
    ##  1st Qu.: 0.00000   Class :character          Class :character         
    ##  Median : 0.00000   Mode  :character          Mode  :character         
    ##  Mean   :-0.01493                                                      
    ##  3rd Qu.: 0.00000                                                      
    ##  Max.   : 0.00000                                                      
    ##  NA's   :9                                                             
    ##  SchoolShoalRef_ecology AssociationsWith_ecology AssociationsRemarks_ecology
    ##  Min.   : 1371          Length:76                Length:76                  
    ##  1st Qu.:25561          Class :character         Class :character           
    ##  Median :49751          Mode  :character         Mode  :character           
    ##  Mean   :46895                                                              
    ##  3rd Qu.:69657                                                              
    ##  Max.   :89563                                                              
    ##  NA's   :73                                                                 
    ##  OutsideHost_ecology OHRemarks_ecology  InsideHost_ecology IHRemarks_ecology 
    ##  Min.   :0           Length:76          Min.   :0          Length:76         
    ##  1st Qu.:0           Class :character   1st Qu.:0          Class :character  
    ##  Median :0           Mode  :character   Median :0          Mode  :character  
    ##  Mean   :0                              Mean   :0                            
    ##  3rd Qu.:0                              3rd Qu.:0                            
    ##  Max.   :0                              Max.   :0                            
    ##  NA's   :9                              NA's   :9                            
    ##  SubstrateRef_ecology Benthic_ecology    Sessile_ecology Mobile_ecology    
    ##  Min.   : 9710        Min.   :-1.00000   Min.   :0       Min.   :-1.00000  
    ##  1st Qu.:30486        1st Qu.: 0.00000   1st Qu.:0       1st Qu.: 0.00000  
    ##  Median :50307        Median : 0.00000   Median :0       Median : 0.00000  
    ##  Mean   :47922        Mean   :-0.01493   Mean   :0       Mean   :-0.01493  
    ##  3rd Qu.:53568        3rd Qu.: 0.00000   3rd Qu.:0       3rd Qu.: 0.00000  
    ##  Max.   :95541        Max.   : 0.00000   Max.   :0       Max.   : 0.00000  
    ##  NA's   :71           NA's   :9          NA's   :9       NA's   :9         
    ##  Demersal_ecology Endofauna_ecology Pelagic_ecology Megabenthos_ecology
    ##  Min.   :0        Min.   :0         Min.   :0       Min.   :0          
    ##  1st Qu.:0        1st Qu.:0         1st Qu.:0       1st Qu.:0          
    ##  Median :0        Median :0         Median :0       Median :0          
    ##  Mean   :0        Mean   :0         Mean   :0       Mean   :0          
    ##  3rd Qu.:0        3rd Qu.:0         3rd Qu.:0       3rd Qu.:0          
    ##  Max.   :0        Max.   :0         Max.   :0       Max.   :0          
    ##  NA's   :9        NA's   :9         NA's   :9       NA's   :9          
    ##  Macrobenthos_ecology Meiobenthos_ecology SoftBottom_ecology  Sand_ecology    
    ##  Min.   :0            Min.   :0           Min.   :-1.0000    Min.   :-1.0000  
    ##  1st Qu.:0            1st Qu.:0           1st Qu.: 0.0000    1st Qu.: 0.0000  
    ##  Median :0            Median :0           Median : 0.0000    Median : 0.0000  
    ##  Mean   :0            Mean   :0           Mean   :-0.1642    Mean   :-0.0597  
    ##  3rd Qu.:0            3rd Qu.:0           3rd Qu.: 0.0000    3rd Qu.: 0.0000  
    ##  Max.   :0            Max.   :0           Max.   : 0.0000    Max.   : 0.0000  
    ##  NA's   :9            NA's   :9           NA's   :9          NA's   :9        
    ##  Coarse_ecology  Fine_ecology Level_ecology Sloping_ecology  Silt_ecology
    ##  Min.   :0      Min.   :0     Min.   :0     Min.   :0       Min.   :0    
    ##  1st Qu.:0      1st Qu.:0     1st Qu.:0     1st Qu.:0       1st Qu.:0    
    ##  Median :0      Median :0     Median :0     Median :0       Median :0    
    ##  Mean   :0      Mean   :0     Mean   :0     Mean   :0       Mean   :0    
    ##  3rd Qu.:0      3rd Qu.:0     3rd Qu.:0     3rd Qu.:0       3rd Qu.:0    
    ##  Max.   :0      Max.   :0     Max.   :0     Max.   :0       Max.   :0    
    ##  NA's   :9      NA's   :9     NA's   :9     NA's   :9       NA's   :9    
    ##   Mud_ecology       Ooze_ecology Detritus_ecology Organic_ecology
    ##  Min.   :-1.0000   Min.   :0     Min.   :0        Min.   :0      
    ##  1st Qu.: 0.0000   1st Qu.:0     1st Qu.:0        1st Qu.:0      
    ##  Median : 0.0000   Median :0     Median :0        Median :0      
    ##  Mean   :-0.0597   Mean   :0     Mean   :0        Mean   :0      
    ##  3rd Qu.: 0.0000   3rd Qu.:0     3rd Qu.:0        3rd Qu.:0      
    ##  Max.   : 0.0000   Max.   :0     Max.   :0        Max.   :0      
    ##  NA's   :9         NA's   :9     NA's   :9        NA's   :9      
    ##  HardBottom_ecology Rocky_ecology     Rubble_ecology     Gravel_ecology
    ##  Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.00000   Min.   :0     
    ##  1st Qu.: 0.00000   1st Qu.: 0.0000   1st Qu.: 0.00000   1st Qu.:0     
    ##  Median : 0.00000   Median : 0.0000   Median : 0.00000   Median :0     
    ##  Mean   :-0.08955   Mean   :-0.1194   Mean   :-0.01493   Mean   :0     
    ##  3rd Qu.: 0.00000   3rd Qu.: 0.0000   3rd Qu.: 0.00000   3rd Qu.:0     
    ##  Max.   : 0.00000   Max.   : 0.0000   Max.   : 0.00000   Max.   :0     
    ##  NA's   :9          NA's   :9         NA's   :9          NA's   :9     
    ##  SpecialHabitatRef_ecology Macrophyte_ecology BedsBivalve_ecology
    ##  Min.   : 9988             Min.   :-1.00000   Min.   :0          
    ##  1st Qu.:53568             1st Qu.: 0.00000   1st Qu.:0          
    ##  Median :58534             Median : 0.00000   Median :0          
    ##  Mean   :51948             Mean   :-0.01493   Mean   :0          
    ##  3rd Qu.:58534             3rd Qu.: 0.00000   3rd Qu.:0          
    ##  Max.   :58652             Max.   : 0.00000   Max.   :0          
    ##  NA's   :67                NA's   :9          NA's   :9          
    ##  BedsRock_ecology SeaGrassBeds_ecology BedsOthers_ecology CoralReefs_ecology
    ##  Min.   :0        Min.   :-1.00000     Min.   :0          Min.   :-1.0000   
    ##  1st Qu.:0        1st Qu.: 0.00000     1st Qu.:0          1st Qu.: 0.0000   
    ##  Median :0        Median : 0.00000     Median :0          Median : 0.0000   
    ##  Mean   :0        Mean   :-0.08955     Mean   :0          Mean   :-0.1791   
    ##  3rd Qu.:0        3rd Qu.: 0.00000     3rd Qu.:0          3rd Qu.: 0.0000   
    ##  Max.   :0        Max.   : 0.00000     Max.   :0          Max.   : 0.0000   
    ##  NA's   :9        NA's   :9            NA's   :9          NA's   :9         
    ##  ReefExclusive_ecology DropOffs_ecology ReefFlats_ecology  Lagoons_ecology   
    ##  Min.   :0             Min.   :0        Min.   :-1.00000   Min.   :-1.00000  
    ##  1st Qu.:0             1st Qu.:0        1st Qu.: 0.00000   1st Qu.: 0.00000  
    ##  Median :0             Median :0        Median : 0.00000   Median : 0.00000  
    ##  Mean   :0             Mean   :0        Mean   :-0.01493   Mean   :-0.01493  
    ##  3rd Qu.:0             3rd Qu.:0        3rd Qu.: 0.00000   3rd Qu.: 0.00000  
    ##  Max.   :0             Max.   :0        Max.   : 0.00000   Max.   : 0.00000  
    ##  NA's   :9             NA's   :9        NA's   :9          NA's   :9         
    ##  Burrows_ecology    Tunnels_ecology Crevices_ecology Vents_ecology
    ##  Min.   :-1.00000   Min.   :0       Min.   :0        Min.   :0    
    ##  1st Qu.: 0.00000   1st Qu.:0       1st Qu.:0        1st Qu.:0    
    ##  Median : 0.00000   Median :0       Median :0        Median :0    
    ##  Mean   :-0.02985   Mean   :0       Mean   :0        Mean   :0    
    ##  3rd Qu.: 0.00000   3rd Qu.:0       3rd Qu.:0        3rd Qu.:0    
    ##  Max.   : 0.00000   Max.   :0       Max.   :0        Max.   :0    
    ##  NA's   :9          NA's   :9       NA's   :9        NA's   :9    
    ##  Seamounts_ecology DeepWaterCorals_ecology Vegetation_ecology Leaves_ecology
    ##  Min.   :0         Min.   :0               Min.   :-1.00000   Min.   :0     
    ##  1st Qu.:0         1st Qu.:0               1st Qu.: 0.00000   1st Qu.:0     
    ##  Median :0         Median :0               Median : 0.00000   Median :0     
    ##  Mean   :0         Mean   :0               Mean   :-0.04478   Mean   :0     
    ##  3rd Qu.:0         3rd Qu.:0               3rd Qu.: 0.00000   3rd Qu.:0     
    ##  Max.   :0         Max.   :0               Max.   : 0.00000   Max.   :0     
    ##  NA's   :9         NA's   :9               NA's   :9          NA's   :9     
    ##  Stems_ecology      Roots_ecology Driftwood_ecology OInverterbrates_ecology
    ##  Min.   :-1.00000   Min.   :0     Min.   :0         Min.   :0              
    ##  1st Qu.: 0.00000   1st Qu.:0     1st Qu.:0         1st Qu.:0              
    ##  Median : 0.00000   Median :0     Median :0         Median :0              
    ##  Mean   :-0.01493   Mean   :0     Mean   :0         Mean   :0              
    ##  3rd Qu.: 0.00000   3rd Qu.:0     3rd Qu.:0         3rd Qu.:0              
    ##  Max.   : 0.00000   Max.   :0     Max.   :0         Max.   :0              
    ##  NA's   :9          NA's   :9     NA's   :9         NA's   :9              
    ##  OIRemarks_ecology  Verterbrates_ecology VRemarks_ecology Pilings_ecology
    ##  Length:76          Min.   :0            Mode:logical     Min.   :0      
    ##  Class :character   1st Qu.:0            NA's:76          1st Qu.:0      
    ##  Mode  :character   Median :0                             Median :0      
    ##                     Mean   :0                             Mean   :0      
    ##                     3rd Qu.:0                             3rd Qu.:0      
    ##                     Max.   :0                             Max.   :0      
    ##                     NA's   :9                             NA's   :9      
    ##  BoatHulls_ecology Corals_ecology SoftCorals_ecology OnPolyp_ecology
    ##  Min.   :0         Min.   :0      Min.   :0          Min.   :0      
    ##  1st Qu.:0         1st Qu.:0      1st Qu.:0          1st Qu.:0      
    ##  Median :0         Median :0      Median :0          Median :0      
    ##  Mean   :0         Mean   :0      Mean   :0          Mean   :0      
    ##  3rd Qu.:0         3rd Qu.:0      3rd Qu.:0          3rd Qu.:0      
    ##  Max.   :0         Max.   :0      Max.   :0          Max.   :0      
    ##  NA's   :9         NA's   :9      NA's   :9          NA's   :9      
    ##  BetweenPolyps_ecology HardCorals_ecology OnExoskeleton_ecology
    ##  Min.   :0             Min.   :0          Min.   :0            
    ##  1st Qu.:0             1st Qu.:0          1st Qu.:0            
    ##  Median :0             Median :0          Median :0            
    ##  Mean   :0             Mean   :0          Mean   :0            
    ##  3rd Qu.:0             3rd Qu.:0          3rd Qu.:0            
    ##  Max.   :0             Max.   :0          Max.   :0            
    ##  NA's   :9             NA's   :9          NA's   :9            
    ##  InterstitialSpaces_ecology Entered_ecology Dateentered_ecology          
    ##  Min.   :0                  Min.   :  1.0   Min.   :1990-10-19 00:00:00  
    ##  1st Qu.:0                  1st Qu.: 21.0   1st Qu.:1994-08-22 00:00:00  
    ##  Median :0                  Median : 34.0   Median :2000-03-02 00:00:00  
    ##  Mean   :0                  Mean   :175.9   Mean   :1999-02-09 00:35:58  
    ##  3rd Qu.:0                  3rd Qu.:309.0   3rd Qu.:2000-12-16 00:00:00  
    ##  Max.   :0                  Max.   :711.0   Max.   :2015-06-01 16:10:26  
    ##  NA's   :9                  NA's   :9       NA's   :9                    
    ##  Modified_ecology Datemodified_ecology          Expert_ecology 
    ##  Min.   :   2.0   Min.   :1999-12-01 00:00:00   Min.   :  1.0  
    ##  1st Qu.: 309.0   1st Qu.:2005-07-13 21:27:30   1st Qu.:676.8  
    ##  Median : 309.0   Median :2008-01-14 00:00:00   Median :711.0  
    ##  Mean   : 744.6   Mean   :2009-01-26 16:57:30   Mean   :605.1  
    ##  3rd Qu.:1472.0   3rd Qu.:2014-02-05 12:00:00   3rd Qu.:711.0  
    ##  Max.   :2495.0   Max.   :2018-11-19 00:00:00   Max.   :711.0  
    ##  NA's   :24       NA's   :9                     NA's   :68     
    ##  Datechecked_ecology           TS_ecology     SpecCode_estimate
    ##  Min.   :2001-01-10 00:00:00   Mode:logical   Min.   :    2.0  
    ##  1st Qu.:2001-05-10 00:00:00   NA's:76        1st Qu.:  896.8  
    ##  Median :2001-05-10 00:00:00                  Median : 3732.5  
    ##  Mean   :2001-08-29 01:21:54                  Mean   : 9432.2  
    ##  3rd Qu.:2001-06-21 06:00:00                  3rd Qu.: 6730.2  
    ##  Max.   :2003-08-29 10:55:12                  Max.   :67194.0  
    ##  NA's   :68                                                    
    ##  MaxLengthTL_estimate TLObserved_estimate Troph_estimate  seTroph_estimate
    ##  Min.   :  4.00       Min.   :0           Min.   :2.000   Min.   :0.0000  
    ##  1st Qu.: 11.62       1st Qu.:0           1st Qu.:2.855   1st Qu.:0.1703  
    ##  Median : 40.60       Median :0           Median :3.230   Median :0.3500  
    ##  Mean   : 62.96       Mean   :0           Mean   :3.207   Mean   :0.3251  
    ##  3rd Qu.: 82.50       3rd Qu.:0           3rd Qu.:3.685   3rd Qu.:0.4425  
    ##  Max.   :305.00       Max.   :0           Max.   :4.660   Max.   :0.7800  
    ##                                                                           
    ##  TrophObserved_estimate TrophPredicted_estimate seTrophPredicted_estimate
    ##  Min.   :0              Mode:logical            Mode:logical             
    ##  1st Qu.:0              NA's:76                 NA's:76                  
    ##  Median :0                                                               
    ##  Mean   :0                                                               
    ##  3rd Qu.:0                                                               
    ##  Max.   :0                                                               
    ##                                                                          
    ##    a_estimate        sd_log10a_estimate   b_estimate    sd_b_estimate    
    ##  Min.   :0.0006457   Min.   :0.0247     Min.   :2.830   Min.   :0.01530  
    ##  1st Qu.:0.0057544   1st Qu.:0.0617     1st Qu.:2.980   1st Qu.:0.04000  
    ##  Median :0.0097724   Median :0.1250     Median :3.040   Median :0.08010  
    ##  Mean   :0.0107931   Mean   :0.1230     Mean   :3.041   Mean   :0.07068  
    ##  3rd Qu.:0.0151356   3rd Qu.:0.1730     3rd Qu.:3.100   3rd Qu.:0.09190  
    ##  Max.   :0.0275423   Max.   :0.2160     Max.   :3.210   Max.   :0.11800  
    ##  NA's   :3           NA's   :3          NA's   :3       NA's   :3        
    ##  Method_ab_estimate prior_r_estimate lcl_r_estimate   ucl_r_estimate  
    ##  Length:76          Min.   :0.2822   Min.   :0.1635   Min.   :0.4462  
    ##  Class :character   1st Qu.:0.2974   1st Qu.:0.1963   1st Qu.:0.4874  
    ##  Mode  :character   Median :0.4545   Median :0.3000   Median :0.6817  
    ##                     Mean   :0.4476   Mean   :0.2903   Mean   :0.6856  
    ##                     3rd Qu.:0.5655   3rd Qu.:0.3733   3rd Qu.:0.8483  
    ##                     Max.   :0.5914   Max.   :0.3903   Max.   :0.8871  
    ##                     NA's   :67       NA's   :67       NA's   :67      
    ##   n_r_estimate   Comment_r_estimate   K_estimate     SD_logK_estimate
    ##  Min.   : 1.00   Length:76          Min.   :0.0600   Mode:logical    
    ##  1st Qu.: 4.00   Class :character   1st Qu.:0.2300   NA's:76         
    ##  Median : 7.00   Mode  :character   Median :0.3850                   
    ##  Mean   :17.89                      Mean   :0.5870                   
    ##  3rd Qu.:40.00                      3rd Qu.:0.7375                   
    ##  Max.   :48.00                      Max.   :2.5700                   
    ##  NA's   :67                         NA's   :10                       
    ##  Linf_estimate  SD_logLinf_estimate Winf_estimate     LengthType_estimate
    ##  Mode:logical   Mode:logical        Min.   :    0.7   Mode:logical       
    ##  NA's:76        NA's:76             1st Qu.:  609.0   NA's:76            
    ##                                     Median : 1041.2                      
    ##                                     Mean   : 8864.1                      
    ##                                     3rd Qu.: 6403.1                      
    ##                                     Max.   :60447.4                      
    ##                                     NA's   :46                           
    ##  ComDepthMin_estimate ComDepthMax_estimate ComDepMinObserved_estimate
    ##  Min.   :  0.00       Min.   :  3.00       Min.   :0                 
    ##  1st Qu.:  2.00       1st Qu.: 15.25       1st Qu.:0                 
    ##  Median :  4.00       Median : 24.50       Median :0                 
    ##  Mean   : 15.78       Mean   : 70.34       Mean   :0                 
    ##  3rd Qu.: 16.00       3rd Qu.: 89.25       3rd Qu.:0                 
    ##  Max.   :150.00       Max.   :440.00       Max.   :0                 
    ##  NA's   :39           NA's   :38                                     
    ##  ComDepMaxObserved_estimate DepthMin_estimate DepthMax_estimate
    ##  Min.   :0                  Min.   : 0.00     Min.   :   4.0   
    ##  1st Qu.:0                  1st Qu.: 0.00     1st Qu.:  22.0   
    ##  Median :0                  Median : 0.00     Median :  50.0   
    ##  Mean   :0                  Mean   : 1.87     Mean   : 173.1   
    ##  3rd Qu.:0                  3rd Qu.: 1.00     3rd Qu.: 200.0   
    ##  Max.   :0                  Max.   :15.00     Max.   :1540.0   
    ##                             NA's   :30        NA's   :38       
    ##  DepthMinEstimate_estimate DepthMaxEstimate_estimate PredPreyRatioMin_estimate
    ##  Min.   :0                 Min.   :0                 Min.   :  1.920          
    ##  1st Qu.:0                 1st Qu.:0                 1st Qu.:  4.721          
    ##  Median :0                 Median :0                 Median :  7.102          
    ##  Mean   :0                 Mean   :0                 Mean   : 21.932          
    ##  3rd Qu.:0                 3rd Qu.:0                 3rd Qu.: 12.260          
    ##  Max.   :0                 Max.   :0                 Max.   :143.670          
    ##                                                                               
    ##  PredPreyRatioMax_estimate AgeMin_estimate   AgeMax_estimate
    ##  Min.   :   3.819          Min.   :0.01751   Min.   : 0.22  
    ##  1st Qu.: 110.159          1st Qu.:0.50000   1st Qu.: 7.25  
    ##  Median : 534.994          Median :1.00000   Median :12.40  
    ##  Mean   :1442.571          Mean   :1.06227   Mean   :14.66  
    ##  3rd Qu.:1344.652          3rd Qu.:1.39662   3rd Qu.:25.00  
    ##  Max.   :7174.060          Max.   :3.49000   Max.   :41.00  
    ##                            NA's   :40        NA's   :45     
    ##  TempPrefMin_estimate TempPrefMean_estimate TempPrefMax_estimate
    ##  Min.   :-1.70        Min.   :-0.60         Min.   : 2.40       
    ##  1st Qu.: 4.90        1st Qu.: 8.40         1st Qu.:12.78       
    ##  Median :12.80        Median :18.90         Median :23.35       
    ##  Mean   :13.11        Mean   :17.61         Mean   :20.91       
    ##  3rd Qu.:21.65        3rd Qu.:27.35         3rd Qu.:28.93       
    ##  Max.   :28.30        Max.   :28.80         Max.   :29.30       
    ##  NA's   :48           NA's   :48            NA's   :48          
    ##  nCells_estimate  LastModified_estimate MaxLengthSL_estimate KObserved_estimate
    ##  Min.   :  54.0   Min.   :2019-04-24    Min.   :  3.280      Min.   :0         
    ##  1st Qu.: 261.0   1st Qu.:2019-04-24    1st Qu.:  9.252      1st Qu.:0         
    ##  Median : 474.5   Median :2019-04-24    Median : 32.960      Median :0         
    ##  Mean   : 841.3   Mean   :2019-04-24    Mean   : 52.429      Mean   :0         
    ##  3rd Qu.: 912.0   3rd Qu.:2019-04-24    3rd Qu.: 70.487      3rd Qu.:0         
    ##  Max.   :4182.0   Max.   :2019-04-24    Max.   :250.000      Max.   :0         
    ##  NA's   :48

``` r
DF_estimate = out
save(DF_estimate, file = "DF_estimate.Rdata")
```

\#\#faoareas, seems to be redundant to countrysub?

``` r
test = faoareas(species_list = species[a])
test
```

    ## # A tibble: 5 x 65
    ##   SpecCode Species autoctr AreaCode StockCode Status Entered DateEntered        
    ##      <dbl> <chr>     <dbl>    <dbl>     <dbl> <chr>    <dbl> <dttm>             
    ## 1     3232 Xiphop…    8605        1      3428 intro…       2 1992-05-21 00:00:00
    ## 2     3232 Xiphop…    8606        2      3428 native       1 1991-05-01 00:00:00
    ## 3     3232 Xiphop…    8607        3      3428 intro…       2 1992-05-21 00:00:00
    ## 4     3232 Xiphop…    8608        4      3428 intro…      97 1996-08-07 00:00:00
    ## 5     3232 Xiphop…    8609        6      3428 intro…       2 1992-05-21 00:00:00
    ## # … with 57 more variables: Modified.x <dbl>, DateModified <dttm>,
    ## #   Expert <dbl>, DateChecked <dttm>, TS.x <lgl>, FAO <chr>, Note <chr>,
    ## #   Coastline <dbl>, Shelf <dbl>, EEZarea <dbl>, LatDeg <dbl>, LatMin <dbl>,
    ## #   N_S <chr>, LongDeg <dbl>, LongMin <dbl>, E_W <chr>, NeighborN <dbl>,
    ## #   NeighborS <dbl>, NeighborW <dbl>, NeighborE <dbl>, NorthernLatitude <dbl>,
    ## #   NorthernLatitudeNS <chr>, SouthernLatitude <dbl>, SouthernLatitudeNS <chr>,
    ## #   WesternLongitude <dbl>, WesternLongitudeEW <chr>, EasternLongitude <dbl>,
    ## #   EasternLongitudeEW <chr>, FamiliesCount <dbl>, FamiliesNo <dbl>,
    ## #   FamiliesRef <dbl>, SpeciesCount <dbl>, SpeciesNo <dbl>, SpeciesRef <dbl>,
    ## #   FamFisheries <dbl>, SpecFisheries <dbl>, FamAqua <dbl>, SpecAqua <dbl>,
    ## #   FamBait <dbl>, SpecBait <dbl>, FamOrnament <dbl>, SpecOrnament <dbl>,
    ## #   FamSport <dbl>, SpecSport <dbl>, FamHuman <dbl>, SpecHuman <dbl>,
    ## #   FamThreat <dbl>, SpecThreat <dbl>, FamIntro <dbl>, SpecIntro <dbl>,
    ## #   FamDanger <dbl>, SpecDanger <dbl>, Complete <dbl>, CompleteRef <dbl>,
    ## #   ContinentGrp <chr>, Modified.y <dttm>, TS.y <lgl>

\#\#fecundity \#\#sometimes multiple rows per species. could not
\#\#could not locate doc table about fecundity. spawning table seems to
be something different (different fields):
<https://www.fishbase.in/manual/fishbasethe_spawning_table.htm>

``` r
load("DF_estimate.Rdata")
DF= DF_estimate

species = DF$Species
out = NULL
a = 2
for (a in 1:length(species)){
  tmp = data.frame(fecundity(species_list = DF$Species[a]))
  print(dim(tmp)[1])#1 row per
  # ind_species =which(names(tmp) == "Species")
  # inds_new = setdiff(seq(1,dim(tmp)[2]), ind_species)
  # names(tmp)[inds_new]= paste0(names(tmp)[inds_new],
  #                                    "_fecundity")
  # tmp = merge(DF[a,], tmp)
  # out = rbind(out, tmp)
}
```

    ## [1] 1
    ## [1] 3
    ## [1] 2
    ## [1] 5
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 3
    ## [1] 50
    ## [1] 50
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 16
    ## [1] 3
    ## [1] 1
    ## [1] 34
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 3
    ## [1] 4
    ## [1] 4
    ## [1] 4
    ## [1] 4
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 36
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1

\#\#fooditems
\#\#<http://www.fishbase.org/manual/english/fishbasethe_food_items_table.htm>
\#\#multiple rows per species, for different food types, life stages of
predator, locality, etc.

``` r
load("DF_estimate.Rdata")
DF= DF_estimate

species = DF$Species
for (a in 1:length(species)){
  tmp = data.frame(fooditems(species_list = DF$Species[a]))
  print(dim(tmp)[1])#1 row per
}
```

    ## [1] 2
    ## [1] 169
    ## [1] 14
    ## [1] 25
    ## [1] 6
    ## [1] 3
    ## [1] 5
    ## [1] 3
    ## [1] 1
    ## [1] 4
    ## [1] 14
    ## [1] 2
    ## [1] 10
    ## [1] 72
    ## [1] 88
    ## [1] 88
    ## [1] 21
    ## [1] 2
    ## [1] 1
    ## [1] 5
    ## [1] 1
    ## [1] 1
    ## [1] 6
    ## [1] 4
    ## [1] 88
    ## [1] 15
    ## [1] 7
    ## [1] 549
    ## [1] 1
    ## [1] 18
    ## [1] 1
    ## [1] 18
    ## [1] 16
    ## [1] 28
    ## [1] 4
    ## [1] 14
    ## [1] 2
    ## [1] 18
    ## [1] 1
    ## [1] 11
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 23
    ## [1] 73
    ## [1] 34
    ## [1] 132
    ## [1] 132
    ## [1] 132
    ## [1] 132
    ## [1] 1
    ## [1] 6
    ## [1] 11
    ## [1] 2
    ## [1] 1
    ## [1] 14
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 6
    ## [1] 7
    ## [1] 18
    ## [1] 1
    ## [1] 40
    ## [1] 2
    ## [1] 14
    ## [1] 5
    ## [1] 1
    ## [1] 1
    ## [1] 57
    ## [1] 1
    ## [1] 4
    ## [1] 15
    ## [1] 1
    ## [1] 12
    ## [1] 4

\#\#genetic – don’t think we want to use this, but including just to see
what it shows

``` r
load("DF_estimate.Rdata")
DF= DF_estimate

test = data.frame(genetics(DF$Species[1]))
names(test)
```

    ##  [1] "SpecCode"           "Species"            "AutoCtr"           
    ##  [4] "StockCode"          "GeneticsRefNo"      "Locality"          
    ##  [7] "C_Code"             "Sex"                "Tissues"           
    ## [10] "ChromosomeNo"       "ChromosomeRef"      "ChromosomeDip"     
    ## [13] "ChromosomeDipTemp"  "ChromosomeDipMax"   "ChromosomeDipRef"  
    ## [16] "ChromosomeTypeRef"  "Metacentric"        "SubMetacentric"    
    ## [19] "Subtelocentric"     "Telocentric"        "MetaSubmetacentric"
    ## [22] "SubteloAcrocentric" "ChromosomeArm"      "ChromosomeArmCalc" 
    ## [25] "ChromosomeArmTemp"  "ChromosomeArmRef"   "SexMech"           
    ## [28] "SexmechRef"         "DNASequence"        "DNASeqRef"         
    ## [31] "DNAAnalysis"        "DNAAnalRef"         "GeneticMarker"     
    ## [34] "GMarkerRef"         "DNA"                "DNARef"            
    ## [37] "RemarksRef"         "Entered"            "DateEntered"       
    ## [40] "Modified"           "DateModified"       "Expert"            
    ## [43] "DateChecked"        "Remark"             "TS"

\#\#introductions – species introductions data. for now making one new
feature: the number of records about introductions; it seems that each
row is a different place
\#\#<https://www.fishbase.in/manual/fishbasethe_introduction_table.htm>

``` r
load("DF_estimate.Rdata")
DF= DF_estimate

species = DF$Species
DF$introductions_count = NA
for (a in 1:length(species)){
  tmp = data.frame(introductions(species_list = DF$Species[a]))
  # print(dim(tmp)[1])#1 row per
  DF$introductions_count[a]= dim(tmp)[1]
}
#see what the other fields are
names(tmp)
```

    ##  [1] "SpecCode"      "Species"       "autoctr"       "IntrCaseRefNo"
    ##  [5] "StockCode"     "Year"          "RangeMin"      "RangeMax"     
    ##  [9] "Period"        "PeriodOrder"   "TO"            "C_Code_To"    
    ## [13] "Area_To"       "From"          "C_Code_From"   "Area_From"    
    ## [17] "Reason"        "OtherReason"   "OtherReason2"  "ReasonOrder"  
    ## [21] "Introducer"    "Estabwild"     "EstabType"     "EstabAqua"    
    ## [25] "ComAqua"       "ReproMode"     "EcolEff"       "EcolEffType"  
    ## [29] "Impacts"       "SocioEff"      "SocioEffType"  "IntrSourceRef"
    ## [33] "RecordSource"  "Invasive"      "InvasiveRef"   "Entered"      
    ## [37] "DateEntered"   "Modified"      "DateModified"  "Expert"       
    ## [41] "DateChecked"   "Comments"      "Remarks"       "TS"

``` r
head(tmp)
```

    ##   SpecCode               Species autoctr IntrCaseRefNo StockCode Year RangeMin
    ## 1     3232 Xiphophorus maculatus    2229         13686      3428 1922       NA
    ## 2     3232 Xiphophorus maculatus    2230          1739      3428 1922       NA
    ## 3     3232 Xiphophorus maculatus    2231          1739      3428 1935       NA
    ## 4     3232 Xiphophorus maculatus    3472         53249      3428 1971       NA
    ## 5     3232 Xiphophorus maculatus    2232         13686      3428   NA     1960
    ## 6     3232 Xiphophorus maculatus    2233          1739      3428   NA       NA
    ##   RangeMax    Period PeriodOrder          TO C_Code_To Area_To    From
    ## 1       NA 1900-1924           E         USA       840       2  Mexico
    ## 2       NA 1900-1924           E      Hawaii      840B       6 Unknown
    ## 3       NA 1925-1949           F Puerto Rico       630       2  Mexico
    ## 4       NA 1950-1974           G      Canada       124       2 Unknown
    ## 5     1969 1950-1974           G   Singapore       702       4 Unknown
    ## 6       NA   unknown           A   Australia       036       6 Unknown
    ##   C_Code_From Area_From     Reason OtherReason OtherReason2 ReasonOrder
    ## 1         484         2 ornamental        <NA>         <NA>           4
    ## 2        <NA>        NA accidental        <NA>         <NA>           8
    ## 3         484         2 accidental        <NA>         <NA>           8
    ## 4        <NA>        NA ornamental        <NA>         <NA>           4
    ## 5        <NA>        NA ornamental        <NA>         <NA>           4
    ## 6        <NA>        NA accidental  ornamental         <NA>           8
    ##       Introducer            Estabwild            EstabType EstabAqua
    ## 1        unknown          established natural reproduction         0
    ## 2           <NA>          established natural reproduction         0
    ## 3           <NA>          established natural reproduction         0
    ## 4           <NA>              unknown                 <NA>         0
    ## 5 private sector probably established                 <NA>         0
    ## 6           <NA>          established natural reproduction         0
    ##       ComAqua            ReproMode       EcolEff EcolEffType Impacts
    ## 1        <NA>                 <NA>       unknown        <NA>    <NA>
    ## 2        <NA>                 <NA>          <NA>        <NA>    <NA>
    ## 3        <NA>                 <NA>          <NA>        <NA>    <NA>
    ## 4        <NA>                 <NA>          <NA>        <NA>    <NA>
    ## 5 widely used natural reproduction probably some  beneficial    <NA>
    ## 6        <NA>                 <NA> probably some     adverse    <NA>
    ##        SocioEff SocioEffType IntrSourceRef RecordSource Invasive InvasiveRef
    ## 1 probably some   beneficial          2000           24        0          NA
    ## 2          <NA>         <NA>          1972           FB        0          NA
    ## 3          <NA>         <NA>          1739           FB        0          NA
    ## 4 probably some   beneficial            NA         <NA>        0          NA
    ## 5          some   beneficial         13686           24        0          NA
    ## 6          <NA>         <NA>          6071           FB        0          NA
    ##   Entered DateEntered Modified DateModified Expert DateChecked
    ## 1      24  1997-12-17       97   2005-07-04     97  2005-07-04
    ## 2      19  1992-10-28       97   2008-05-05     97  1996-12-03
    ## 3      19  1992-10-28       97   2009-12-18     97  1996-12-03
    ## 4      97  2005-07-05       97   2009-12-18     NA        <NA>
    ## 5      24  1997-12-17       97   2003-01-29     NA        <NA>
    ## 6      19  1992-10-28       97   2003-09-17     97  1996-12-03
    ##                                                                                                                                                                                                                                                                                                  Comments
    ## 1                                                               Reintroduced in the 1960s. Introduced through escapes from aquarium and found to be reproducing but seen as unstable populations in Florida. A popular aquarium fish, found in 85% of pet shops near Lakes Erie and Ontario (Ref. 53249).
    ## 2                                                                                                                                                                           Accidentally introduced and some populations are established in reservoirs of Hawaii, Maui and Oahu islands. Also Ref. 74657.
    ## 3                                                Accidentally released from aquaria and now found in a few rivers. Reported from Quebrada Honda at its junction with R<ed>o La Plata, northwest of Aibonito, near Loiza reservoir and at R<ed>o Abajo Forest Station, Utuado (Ref 6443). Also Ref. 27158.
    ## 4                                                                                                                                                                                                            A popular aquarium fish, found in 85% of pet shops near Lakes Erie and Ontario (Ref. 53249).
    ## 5                                                                                                                                                                                                                                  Beneficial to the ornamental fish trade and industry. Also Ref. 38466.
    ## 6 Also introduced for ornamental purposes (Ref. 48787).  Accidentally released from aquaria and established populations are found in Brisbane region, Babinda, Tully and Gordonvale, Queensland. The spread of this species could have an adverse effect on endemic fishes (Ref. 12257). Also Ref. 12559.
    ##                                   Remarks TS
    ## 1   Record imported from DIAS (16 Dec 97) NA
    ## 2 Record probably not in DIAS (16 Dec 97) NA
    ## 3 Record probably not in DIAS (16 Dec 97) NA
    ## 4                                    <NA> NA
    ## 5   Record imported from DIAS (16 Dec 97) NA
    ## 6 Record probably not in DIAS (16 Dec 97) NA

``` r
m <- lm(haddock_score_mean ~ introductions_count, data = DF, na.action = na.omit)
summary(m)
```

    ## 
    ## Call:
    ## lm(formula = haddock_score_mean ~ introductions_count, data = DF, 
    ##     na.action = na.omit)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -30.9264  -6.9794   0.7046   7.8225  28.3395 
    ## 
    ## Coefficients:
    ##                       Estimate Std. Error  t value Pr(>|t|)    
    ## (Intercept)         -136.85292    1.36283 -100.418   <2e-16 ***
    ## introductions_count   -0.03613    0.03667   -0.985    0.328    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 10.82 on 74 degrees of freedom
    ## Multiple R-squared:  0.01295,    Adjusted R-squared:  -0.000388 
    ## F-statistic: 0.9709 on 1 and 74 DF,  p-value: 0.3277

``` r
DF_intro = DF
save(DF_intro, file = "DF_intro.Rdata")
```

\#\#larvae
\#\#<https://www.fishbase.in/manual/fishbasethe_larvae_table.htm> \#\#2
out of the 74 species have multiple records w/ different values.
excluding for now.

``` r
load("DF_intro.Rdata")
DF= DF_intro

species = DF$Species
for (a in 1:length(species)){
  tmp = data.frame(larvae(species_list = DF$Species[a]))
  # print(a)
  print(dim(tmp)[1])
}
```

    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
#see what the other fields are

names(tmp)
```

    ##   [1] "SpecCode"             "Species"              "autoctr"             
    ##   [4] "StockCode"            "LarvaeRefNo"          "OtherRef1"           
    ##   [7] "OtherRef2"            "LarvalArea"           "PlaceofDevelopment"  
    ##  [10] "LhMax"                "LBirthmaxRef"         "LhMin"               
    ##  [13] "LBirthminRef"         "LhMid"                "LBirthmodRef"        
    ##  [16] "PreanalLengthMaxY"    "PreAnmaxRef"          "PreanalLengthMinY"   
    ##  [19] "PreAnminRef"          "PreanalLengthModY"    "PreAnmodRef"         
    ##  [22] "FlexLengthMin"        "FlexLengthMod"        "FlexLengthMax"       
    ##  [25] "FlexLengthType"       "FlexLengthMinRef"     "FlexLengthModRef"    
    ##  [28] "FlexLengthMaxRef"     "TransLengthMin"       "TransLengthMod"      
    ##  [31] "TransLengthMax"       "TransLengthType"      "TransLengthMinRef"   
    ##  [34] "TransLengthModRef"    "TransLengthMaxRef"    "LarvalDurationMin"   
    ##  [37] "LarvalDurationMinRef" "LarvalDurationMax"    "LarvalDurationMaxRef"
    ##  [40] "LarvalDurationMod"    "LarvalDurationModRef" "Shapeofyolksac"      
    ##  [43] "YolksacPigm"          "YolksacSegm"          "YolkRef"             
    ##  [46] "OilGlobules"          "OilGlobuleposH"       "OilGlobuleposV"      
    ##  [49] "OilGlobulePigm"       "RowsonTailY"          "OtherMelOnTailY"     
    ##  [52] "MelonHeadTrunkY"      "LyaMax"               "L1FeedmaxRef"        
    ##  [55] "LyaMin"               "L1FeedminRef"         "LyaMod"              
    ##  [58] "L1FeedmodRef"         "JanLarv"              "FebLarv"             
    ##  [61] "MarLarv"              "AprLarv"              "MayLarv"             
    ##  [64] "JunLarv"              "JulLarv"              "AugLarv"             
    ##  [67] "SepLarv"              "OctLarv"              "NovLarv"             
    ##  [70] "DecLarv"              "PresenceRef"          "WaterDepthMax"       
    ##  [73] "WaterTempMax"         "SalinityMax"          "pH"                  
    ##  [76] "OxygenMax"            "WatermaxRef"          "WaterDepthMin"       
    ##  [79] "WaterTempMin"         "SalinityMin"          "pHMin"               
    ##  [82] "OxygenMin"            "WaterminRef"          "WaterDepthMod"       
    ##  [85] "WaterTempMod"         "SalinityMod"          "pHMod"               
    ##  [88] "OxygenMod"            "WatermodRef"          "StrikingFeature"     
    ##  [91] "LarvaPic"             "StrikingShapeLat"     "StrikingShapeDors"   
    ##  [94] "BodyForm"             "ShapeofGut"           "GasBladderEarly"     
    ##  [97] "GasBladderLate"       "SpinalArmatureEarl"   "SpinalArmatureLate"  
    ## [100] "RowsonTailE"          "OtherMelonTailE"      "MelonHeadTrunkE"     
    ## [103] "RowsonTaill"          "OtherMelonTaill"      "MelonHeadTrunkl"     
    ## [106] "UrostyleRegion"       "UrostyleRegionLate"   "Peritoneum"          
    ## [109] "PectoralsI"           "PectoralsII"          "PelvicsI"            
    ## [112] "PelvicsII"            "MyomeresMax"          "MyomeresMin"         
    ## [115] "MyomeresMod"          "MyomVert"             "TotMyomRef"          
    ## [118] "MyomeresMaxPrean"     "MyomeresMinPrean"     "MyomeresModPrean"    
    ## [121] "MyomVert2"            "PreAnMyoRef"          "RLLatePre"           
    ## [124] "RLLateFlex"           "RLLatePost"           "RLEarlyPre"          
    ## [127] "RLEarlyFlex"          "RLEarlyPost"          "RLFlexPre"           
    ## [130] "RLFlexFlex"           "RLFlexPost"           "MeasurementsPreRef"  
    ## [133] "MeasurementsFlexRef"  "MeasurementsPostRef"  "TypePre"             
    ## [136] "TypeFlex"             "TypePost"             "comment"             
    ## [139] "PreanalLengthMaxPre"  "PreanalLengthMaxFlex" "PreanalLengthMaxPost"
    ## [142] "PreanalLengthMinPre"  "PreanalLengthMinFlex" "PreanalLengthMinPost"
    ## [145] "PreanalLengthLitPre"  "PreanalLengthLitFlex" "PreanalLengthLitPost"
    ## [148] "PrepecLengthMaxPre"   "PrepecLengthMaxFlex"  "PrepecLengthMaxPost" 
    ## [151] "PrepecLengthMinPre"   "PrepecLengthMinFlex"  "PrepecLengthMinPost" 
    ## [154] "PrepecLengthLitPre"   "PrepecLengthLitFlex"  "PrepecLengthLitPost" 
    ## [157] "PreorbitalMaxPre"     "PreorbitalMaxFlex"    "PreorbitalMaxPost"   
    ## [160] "PreorbitalMinPre"     "PreorbitalMinFlex"    "PreorbitalMinPost"   
    ## [163] "PreorbitalLitPre"     "PreorbitalLitFlex"    "PreorbitalLitPost"   
    ## [166] "DiameterofEyeMaxPre"  "DiameterofEyeMaxFlex" "DiameterofEyeMaxPost"
    ## [169] "DiameterofEyeMinPre"  "DiameterofEyeMinFlex" "DiameterofEyeMinPost"
    ## [172] "DiameterofEyeLitPre"  "DiameterofEyeLitFlex" "DiameterofEyeLitPost"
    ## [175] "DepthEyeMaxPre"       "DepthEyeMaxFlex"      "DepthEyeMaxPost"     
    ## [178] "DepthEyeMinPre"       "DepthEyeMinFlex"      "DepthEyeMinPost"     
    ## [181] "DepthEyeLitPre"       "DepthEyeLitFlex"      "DepthEyeLitPost"     
    ## [184] "DepthPectoralMaxPre"  "DepthPectoralMaxFlex" "DepthPectoralMaxPost"
    ## [187] "DepthPectoralMinPre"  "DepthPectoralMinFlex" "DepthPectoralMinPost"
    ## [190] "DepthPectoralLitPre"  "DepthPectoralLitFlex" "DepthPectoralLitPost"
    ## [193] "DepthAnusMaxPre"      "DepthAnusMaxFlex"     "DepthAnusMaxPost"    
    ## [196] "DepthAnusMinPre"      "DepthAnusMinFlex"     "DepthAnusMinPost"    
    ## [199] "DepthAnusLitPre"      "DepthAnusLitFlex"     "DepthAnusLitPost"    
    ## [202] "AddCharYolks"         "AddCharPosts"         "EaseofID"            
    ## [205] "SimilarSpecies1"      "SimilarSpec1Remarks"  "SimilarSpecies2"     
    ## [208] "SimilarSpec2Remarks"  "Entered"              "DateEntered"         
    ## [211] "Modified"             "DateModified"         "Expert"              
    ## [214] "DateChecked"          "TS"

``` r
#look at one that has multiple rows
a = 15
tmp = data.frame(larvae(species_list = DF$Species[a]))

head(tmp)
```

    ##   SpecCode         Species autoctr StockCode LarvaeRefNo OtherRef1 OtherRef2
    ## 1       24 Clupea harengus      53        32          37     39467        NA
    ## 2       24 Clupea harengus     962     56760        3949        NA        NA
    ##                                                                                    LarvalArea
    ## 1 Northeastern Atlantic (British coasts: Plymouth area); Northwestern Atlantic (Delaware Bay)
    ## 2                                             Western Baltic, in coastal waters and estuaries
    ##   PlaceofDevelopment LhMax LBirthmaxRef LhMin LBirthminRef LhMid LBirthmodRef
    ## 1         planktonic  10.0        39467   4.0        39467   7.2           37
    ## 2         planktonic   7.3         3949   5.5         3949   5.5         3949
    ##   PreanalLengthMaxY PreAnmaxRef PreanalLengthMinY PreAnminRef PreanalLengthModY
    ## 1                NA          NA                NA          NA              82.1
    ## 2                NA          NA                NA          NA                NA
    ##   PreAnmodRef FlexLengthMin FlexLengthMod FlexLengthMax FlexLengthType
    ## 1          NA            17            NA            21           <NA>
    ## 2          NA            NA            NA            NA           <NA>
    ##   FlexLengthMinRef FlexLengthModRef FlexLengthMaxRef TransLengthMin
    ## 1               37               NA               37             NA
    ## 2               NA               NA               NA             NA
    ##   TransLengthMod TransLengthMax TransLengthType TransLengthMinRef
    ## 1             NA             NA            <NA>                NA
    ## 2             NA             NA            <NA>                NA
    ##   TransLengthModRef TransLengthMaxRef LarvalDurationMin LarvalDurationMinRef
    ## 1                NA                NA                NA                   NA
    ## 2                NA                NA                NA                   NA
    ##   LarvalDurationMax LarvalDurationMaxRef LarvalDurationMod LarvalDurationModRef
    ## 1                NA                   NA                NA                   NA
    ## 2                NA                   NA                NA                   NA
    ##   Shapeofyolksac YolksacPigm YolksacSegm YolkRef    OilGlobules OilGlobuleposH
    ## 1      elongated        <NA> unsegmented      NA no oil globule           <NA>
    ## 2      elongated        <NA>        <NA>      NA no oil globule           <NA>
    ##   OilGlobuleposV OilGlobulePigm RowsonTailY              OtherMelOnTailY
    ## 1           <NA>           <NA> ventral row        no other melanophores
    ## 2           <NA>           <NA>     no rows tail with single melanophore
    ##                MelonHeadTrunkY LyaMax L1FeedmaxRef LyaMin L1FeedminRef LyaMod
    ## 1        melanophores on trunk     10           NA      8           NA      9
    ## 2 melanophores on head + trunk     NA           NA     NA           NA     NA
    ##   L1FeedmodRef JanLarv FebLarv MarLarv AprLarv MayLarv JunLarv JulLarv AugLarv
    ## 1           NA      -1      -1      -1      -1      -1      -1      -1      -1
    ## 2           NA       0       0       0      -1      -1      -1       0       0
    ##   SepLarv OctLarv NovLarv DecLarv PresenceRef WaterDepthMax WaterTempMax
    ## 1      -1      -1      -1      -1          NA            NA           NA
    ## 2       0       0       0       0          NA            NA           NA
    ##   SalinityMax pH OxygenMax WatermaxRef WaterDepthMin WaterTempMin SalinityMin
    ## 1          NA NA        NA          NA            NA           NA          NA
    ## 2          NA NA        NA          NA            NA           NA          NA
    ##   pHMin OxygenMin WaterminRef WaterDepthMod WaterTempMod SalinityMod pHMod
    ## 1    NA        NA          NA            NA           NA          NA    NA
    ## 2    NA        NA          NA            NA           NA          NA    NA
    ##   OxygenMod WatermodRef StrikingFeature LarvaPic StrikingShapeLat
    ## 1        NA          NA            none CLHAR_L0         eel-like
    ## 2        NA          NA            <NA> CLHAR_L0         eel-like
    ##       StrikingShapeDors  BodyForm ShapeofGut GasBladderEarly GasBladderLate
    ## 1 normal (not striking) elongated  tube-like            <NA>           <NA>
    ## 2 normal (not striking)  eel-like  tube-like            <NA>           <NA>
    ##   SpinalArmatureEarl SpinalArmatureLate RowsonTailE
    ## 1          no spines          no spines ventral row
    ## 2          no spines          no spines     no rows
    ##                OtherMelonTailE              MelonHeadTrunkE RowsonTaill
    ## 1        no other melanophores        melanophores on trunk ventral row
    ## 2 tail with single melanophore melanophores on head + trunk ventral row
    ##                OtherMelonTaill              MelonHeadTrunkl UrostyleRegion
    ## 1        no other melanophores        melanophores on trunk           <NA>
    ## 2 tail with single melanophore melanophores on head + trunk      pigmented
    ##   UrostyleRegionLate               Peritoneum PectoralsI
    ## 1               <NA> with row of melanophores     normal
    ## 2          pigmented with row of melanophores     normal
    ##                PectoralsII                      PelvicsI            PelvicsII
    ## 1 melanophores at fin base normal (i.e. small or absent) without melanophores
    ## 2     without melanophores normal (i.e. small or absent)                 <NA>
    ##   MyomeresMax MyomeresMin MyomeresMod MyomVert TotMyomRef MyomeresMaxPrean
    ## 1          NA          NA          NA     <NA>         NA               47
    ## 2          NA          NA          NA     <NA>         NA               NA
    ##   MyomeresMinPrean MyomeresModPrean MyomVert2 PreAnMyoRef RLLatePre RLLateFlex
    ## 1               46               47  myomeres          37      19.5         NA
    ## 2               NA               NA      <NA>          NA        NA         NA
    ##   RLLatePost RLEarlyPre RLEarlyFlex RLEarlyPost RLFlexPre RLFlexFlex RLFlexPost
    ## 1         NA         11          NA          NA      15.2         NA         NA
    ## 2         NA         NA          NA          NA        NA         NA         NA
    ##   MeasurementsPreRef MeasurementsFlexRef MeasurementsPostRef TypePre TypeFlex
    ## 1                 38                  NA                  NA      SL       NA
    ## 2                 NA                  NA                  NA    <NA>       NA
    ##   TypePost comment PreanalLengthMaxPre PreanalLengthMaxFlex
    ## 1     <NA>    <NA>                84.2                   NA
    ## 2     <NA>    <NA>                  NA                   NA
    ##   PreanalLengthMaxPost PreanalLengthMinPre PreanalLengthMinFlex
    ## 1                   NA                84.1                   NA
    ## 2                   NA                  NA                   NA
    ##   PreanalLengthMinPost PreanalLengthLitPre PreanalLengthLitFlex
    ## 1                   NA                  NA                   NA
    ## 2                   NA                  NA                   NA
    ##   PreanalLengthLitPost PrepecLengthMaxPre PrepecLengthMaxFlex
    ## 1                   NA               14.2                  NA
    ## 2                   NA                 NA                  NA
    ##   PrepecLengthMaxPost PrepecLengthMinPre PrepecLengthMinFlex
    ## 1                  NA               14.9                  NA
    ## 2                  NA                 NA                  NA
    ##   PrepecLengthMinPost PrepecLengthLitPre PrepecLengthLitFlex
    ## 1                  NA                 NA                  NA
    ## 2                  NA                 NA                  NA
    ##   PrepecLengthLitPost PreorbitalMaxPre PreorbitalMaxFlex PreorbitalMaxPost
    ## 1                  NA              3.7                NA                NA
    ## 2                  NA               NA                NA                NA
    ##   PreorbitalMinPre PreorbitalMinFlex PreorbitalMinPost PreorbitalLitPre
    ## 1              4.5                NA                NA               NA
    ## 2               NA                NA                NA               NA
    ##   PreorbitalLitFlex PreorbitalLitPost DiameterofEyeMaxPre DiameterofEyeMaxFlex
    ## 1                NA                NA                 3.8                   NA
    ## 2                NA                NA                  NA                   NA
    ##   DiameterofEyeMaxPost DiameterofEyeMinPre DiameterofEyeMinFlex
    ## 1                   NA                 3.4                   NA
    ## 2                   NA                  NA                   NA
    ##   DiameterofEyeMinPost DiameterofEyeLitPre DiameterofEyeLitFlex
    ## 1                   NA                  NA                   NA
    ## 2                   NA                  NA                   NA
    ##   DiameterofEyeLitPost DepthEyeMaxPre DepthEyeMaxFlex DepthEyeMaxPost
    ## 1                   NA            6.8              NA              NA
    ## 2                   NA             NA              NA              NA
    ##   DepthEyeMinPre DepthEyeMinFlex DepthEyeMinPost DepthEyeLitPre DepthEyeLitFlex
    ## 1            6.7              NA              NA             NA              NA
    ## 2             NA              NA              NA             NA              NA
    ##   DepthEyeLitPost DepthPectoralMaxPre DepthPectoralMaxFlex DepthPectoralMaxPost
    ## 1              NA                 7.8                   NA                   NA
    ## 2              NA                  NA                   NA                   NA
    ##   DepthPectoralMinPre DepthPectoralMinFlex DepthPectoralMinPost
    ## 1                 5.3                   NA                   NA
    ## 2                  NA                   NA                   NA
    ##   DepthPectoralLitPre DepthPectoralLitFlex DepthPectoralLitPost DepthAnusMaxPre
    ## 1                  NA                   NA                   NA             5.8
    ## 2                  NA                   NA                   NA              NA
    ##   DepthAnusMaxFlex DepthAnusMaxPost DepthAnusMinPre DepthAnusMinFlex
    ## 1               NA               NA             3.8               NA
    ## 2               NA               NA              NA               NA
    ##   DepthAnusMinPost DepthAnusLitPre DepthAnusLitFlex DepthAnusLitPost
    ## 1               NA              NA               NA               NA
    ## 2               NA              NA               NA               NA
    ##                                                                                                                                                                                                                                                                                                                                                      AddCharYolks
    ## 1 Yolk is usually completely absorbed when the larvae have reached lengths of 8-10 mm (Ref. 37). Remnants of yolk may persist in some specimens as long as 12 mm (Ref. 33011).\r\nPigmentation: Line of chromatophores between body and intestine on anterior half of body, ventrally along intestine on posterior half; concentration of pigment in vent region.
    ## 2                                                                                                                                                                                                                                                                                                                                                            <NA>
    ##                                                                                                                                                                                                                                                                                                                                                       AddCharPosts
    ## 1 In general in northern areas, post larvae will be most abundant in late spring and summer, while in the south they will predominate during the late winter and early spring (Ref. 37).\r\nPigmentation: Body transparent, pigment increased in density in region of anus and below pectorals.\r\nSequence of fin development: dorsal (10.5 mm); anal (16-29 mm).
    ## 2                                                                                                                                                                                                                                                                                                                                                             <NA>
    ##   EaseofID SimilarSpecies1 SimilarSpec1Remarks SimilarSpecies2
    ## 1     <NA>              NA                <NA>              NA
    ## 2     <NA>              NA                <NA>              NA
    ##   SimilarSpec2Remarks Entered DateEntered Modified DateModified Expert
    ## 1                <NA>       1  1990-10-19        2   2002-01-29     NA
    ## 2                <NA>      28  1992-06-28        3   2013-04-11     NA
    ##   DateChecked TS
    ## 1        <NA> NA
    ## 2        <NA> NA

\#\#length\_freq; multiple records for some species; excluding for now;
could not find metadata

``` r
load("DF_intro.Rdata")
DF= DF_intro
a = 15
species = DF$Species
for (a in 1:length(species)){
  tmp = data.frame(length_freq(species_list = DF$Species[a]))
  # print(a)
  print(dim(tmp)[1])
}
```

    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 4
    ## [1] 1
    ## [1] 1
    ## [1] 6
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 3
    ## [1] 3
    ## [1] 3
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
#see what the other fields are
names(tmp)
```

    ##  [1] "SpecCode"      "Species"       "LFCode"        "Stockcode"    
    ##  [5] "LFRefno"       "Sex"           "Locality"      "C_Code"       
    ##  [9] "LatDeg"        "LatMin"        "NorthSouth"    "LatDegS"      
    ## [13] "LatMinS"       "NorthSouthS"   "LongDeg"       "LongMin"      
    ## [17] "EastWest"      "LongDegE"      "LongMinE"      "EastWestE"    
    ## [21] "Accuracy"      "DepthMin"      "DepthMax"      "TempMin"      
    ## [25] "TempMax"       "MLMin"         "MLMax"         "MeanLength"   
    ## [29] "Lm"            "Loo"           "Lopt"          "Lc"           
    ## [33] "SourceLinf"    "a"             "b"             "LWRef"        
    ## [37] "LType"         "F"             "Z"             "E"            
    ## [41] "M"             "Unexploited"   "DataType"      "GrowthLoo"    
    ## [45] "GrowthK"       "GrowthRef"     "GrowthM"       "GrowthMRef"   
    ## [49] "tm"            "FrequencyType" "ClassInterval" "Gear"         
    ## [53] "GearII"        "YearFrom"      "YearTo"        "Remark"       
    ## [57] "Provider"      "EMail"         "Entered"       "DateEntered"  
    ## [61] "Modified"      "DateModified"  "Expert"        "DateChecked"  
    ## [65] "TS"

``` r
head(tmp)
```

    ##   SpecCode               Species LFCode Stockcode LFRefno  Sex Locality C_Code
    ## 1     3232 Xiphophorus maculatus     NA        NA      NA <NA>     <NA>   <NA>
    ##   LatDeg LatMin NorthSouth LatDegS LatMinS NorthSouthS LongDeg LongMin EastWest
    ## 1     NA     NA       <NA>      NA      NA        <NA>      NA      NA     <NA>
    ##   LongDegE LongMinE EastWestE Accuracy DepthMin DepthMax TempMin TempMax MLMin
    ## 1       NA       NA      <NA>       NA       NA       NA      NA      NA    NA
    ##   MLMax MeanLength Lm Loo Lopt Lc SourceLinf  a  b LWRef LType  F  Z  E  M
    ## 1    NA         NA NA  NA   NA NA       <NA> NA NA    NA  <NA> NA NA NA NA
    ##   Unexploited DataType GrowthLoo GrowthK GrowthRef GrowthM GrowthMRef tm
    ## 1          NA     <NA>        NA      NA        NA      NA         NA NA
    ##   FrequencyType ClassInterval Gear GearII YearFrom YearTo Remark Provider EMail
    ## 1          <NA>            NA <NA>   <NA>       NA     NA   <NA>     <NA>  <NA>
    ##   Entered DateEntered Modified DateModified Expert DateChecked TS
    ## 1      NA        <NA>       NA         <NA>     NA        <NA> NA

\#\#length\_length: conversion of length types

\#\#length\_weight: The LENGTH-WEIGHT table presents the a and b values
of over 5,000 length-weight relationships of the form W = a x Lb,
pertaining to about over 2,000 fish species. \#\#multiple records for
some species. \#\#seems like this may only be useful in combination with
length\_length
\#\#<https://www.fishbase.de/manual/FishbaseThe_LENGTH_WEIGHT_Table.htm>

``` r
load("DF_intro.Rdata")
DF= DF_intro
a = 1
species = DF$Species
for (a in 1:length(species)){
  tmp = data.frame(length_weight(species_list = DF$Species[a]))
  # print(a)
  print(dim(tmp)[1])
}
```

    ## [1] 2
    ## [1] 6
    ## [1] 1
    ## [1] 6
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 4
    ## [1] 1
    ## [1] 20
    ## [1] 19
    ## [1] 113
    ## [1] 113
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 4
    ## [1] 80
    ## [1] 1
    ## [1] 1
    ## [1] 41
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 16
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 3
    ## [1] 3
    ## [1] 4
    ## [1] 1
    ## [1] 2
    ## [1] 5
    ## [1] 1
    ## [1] 1
    ## [1] 7
    ## [1] 15
    ## [1] 7
    ## [1] 31
    ## [1] 31
    ## [1] 31
    ## [1] 31
    ## [1] 1
    ## [1] 2
    ## [1] 4
    ## [1] 2
    ## [1] 1
    ## [1] 9
    ## [1] 1
    ## [1] 3
    ## [1] 4
    ## [1] 2
    ## [1] 1
    ## [1] 5
    ## [1] 3
    ## [1] 41
    ## [1] 1
    ## [1] 12
    ## [1] 4
    ## [1] 1
    ## [1] 1
    ## [1] 18
    ## [1] 1
    ## [1] 11
    ## [1] 1
    ## [1] 1
    ## [1] 4
    ## [1] 1

``` r
#see what the other fields are
names(tmp)
```

    ##  [1] "SpecCode"           "Species"            "AutoCtr"           
    ##  [4] "StockCode"          "FamCode"            "PopLWRef"          
    ##  [7] "LengthMin"          "LengthMax"          "Type"              
    ## [10] "LmaxCompare"        "EsQ"                "Number"            
    ## [13] "Sex"                "a"                  "aTL"               
    ## [16] "b"                  "CoeffDetermination" "SEa"               
    ## [19] "SEb"                "SDa"                "SDb"               
    ## [22] "LCLa"               "UCLa"               "LCLb"              
    ## [25] "UCLb"               "Method"             "SpecimenType"      
    ## [28] "Locality"           "DataRef"            "C_Code"            
    ## [31] "Comment"            "Entered"            "DateEntered"       
    ## [34] "Modified"           "DateModified"       "Expert"            
    ## [37] "DateChecked"        "TS"

``` r
a = 1
tmp = data.frame(length_weight(species_list = DF$Species[a]))
head(tmp)
```

    ##   SpecCode                     Species AutoCtr StockCode FamCode PopLWRef
    ## 1     6655 Acanthochromis polyacanthus    8112      6975     350    52323
    ## 2     6655 Acanthochromis polyacanthus   38494      6975      NA   108462
    ##   LengthMin LengthMax Type LmaxCompare  EsQ Number     Sex      a    aTL     b
    ## 1        NA        NA   TL        <NA> <NA>     NA   mixed 0.0135 0.0135 3.312
    ## 2       7.5        10   SL        <NA> <NA>     15 unsexed 0.0429     NA 3.045
    ##   CoeffDetermination SEa SEb SDa SDb   LCLa   UCLa  LCLb  UCLb
    ## 1                 NA  NA  NA  NA  NA     NA     NA    NA    NA
    ## 2              0.944  NA  NA  NA  NA 0.0161 0.1142 2.601 3.489
    ##                     Method SpecimenType                Locality DataRef C_Code
    ## 1 type I linear regression        fresh Presumably Philippines.      NA    608
    ## 2 Type I linear regression        fresh  Davao Gulf / 2009-2012      NA    608
    ##   Comment Entered DateEntered Modified DateModified Expert DateChecked TS
    ## 1    <NA>       1  2005-12-12       NA   2005-12-12     NA        <NA> NA
    ## 2    <NA>      65  2016-11-03       NA   2016-11-03     NA        <NA> NA

\#\#maturity \#\#multiple records for some species, would need to take
averages if we wanted to use. there are multiple measures of maturity to
choose from.
\#\#<https://www.fishbase.in/manual/fishbasethe_maturity_table.htm>

``` r
load("DF_intro.Rdata")
DF= DF_intro
species = DF$Species
for (a in 1:length(species)){
  tmp = data.frame(maturity(species_list = DF$Species[a]))
  # print(a)
  print(dim(tmp)[1])
}
```

    ## [1] 1
    ## [1] 7
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 5
    ## [1] 3
    ## [1] 16
    ## [1] 80
    ## [1] 80
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 32
    ## [1] 1
    ## [1] 1
    ## [1] 111
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 3
    ## [1] 3
    ## [1] 2
    ## [1] 1
    ## [1] 3
    ## [1] 4
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 4
    ## [1] 5
    ## [1] 7
    ## [1] 42
    ## [1] 42
    ## [1] 42
    ## [1] 42
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 98
    ## [1] 4
    ## [1] 4
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
#see what the other fields are
names(tmp)
```

    ##  [1] "SpecCode"      "Species"       "autoctr"       "StockCode"    
    ##  [5] "MaturityRefNo" "Sex"           "AgeMatMin"     "AgeMatMin2"   
    ##  [9] "AgeMatRef"     "tm"            "Number"        "r2"           
    ## [13] "SE_tm"         "SD_tm"         "LCL_tm"        "UCL_tm"       
    ## [17] "LengthMatMin"  "LengthMatMin2" "Type1"         "LengthMatRef" 
    ## [21] "Lm"            "SE_Lm"         "SD_Lm"         "LCL_Lm"       
    ## [25] "UCL_Lm"        "Locality"      "C_Code"        "E_CODE"       
    ## [29] "Comment"       "Entered"       "DateEntered"   "Modified"     
    ## [33] "DateModified"  "Expert"        "DateChecked"   "TS"

``` r
a = 2
  tmp = data.frame(maturity(species_list = DF$Species[a]))
  head(tmp)
```

    ##   SpecCode           Species autoctr StockCode MaturityRefNo     Sex AgeMatMin
    ## 1     2565 Amblyraja radiata    1940      2761         27347 unsexed        NA
    ## 2     2565 Amblyraja radiata    1941      2761         27372 unsexed        NA
    ## 3     2565 Amblyraja radiata    5141      2761         56246 unsexed        NA
    ## 4     2565 Amblyraja radiata    7136      2761         79800  female        NA
    ## 5     2565 Amblyraja radiata    7135      2761         79800    male        NA
    ## 6     2565 Amblyraja radiata    7679      2761         88187 unsexed        NA
    ##   AgeMatMin2 AgeMatRef   tm Number r2 SE_tm SD_tm LCL_tm UCL_tm LengthMatMin
    ## 1         NA     27365  4.0     NA NA    NA    NA     NA     NA           NA
    ## 2         NA        NA  4.0     NA NA    NA    NA     NA     NA           NA
    ## 3         NA        NA   NA     NA NA    NA    NA     NA     NA           50
    ## 4         NA     79800 11.0     NA NA    NA    NA     NA     NA           NA
    ## 5         NA     79800 10.9     NA NA    NA    NA     NA     NA           NA
    ## 6         NA        NA   NA     NA NA    NA    NA     NA     NA           60
    ##   LengthMatMin2 Type1 LengthMatRef   Lm SE_Lm SD_Lm LCL_Lm UCL_Lm
    ## 1            NA  <NA>        27365 40.0    NA    NA     NA     NA
    ## 2            NA    TL           NA 46.0    NA    NA     NA     NA
    ## 3            56  <NA>        56246   NA    NA    NA     NA     NA
    ## 4            NA    TL        79800 87.5    NA    NA     NA     NA
    ## 5            NA    TL        79800 86.5    NA    NA     NA     NA
    ## 6            75  <NA>           NA   NA    NA    NA     NA     NA
    ##                                                    Locality C_Code E_CODE
    ## 1                                                 North Sea   <NA>     NA
    ## 2                                                 North Sea    826     NA
    ## 3                                      Gulf of St. Lawrence    124     NA
    ## 4 western Gulf of Maine (42<b0>50' N; 70<b0>15' W), 2005(?)    840    233
    ## 5 western Gulf of Maine (42<b0>50' N; 70<b0>15' W), 2005(?)    840    233
    ## 6                                        Northeast Atlantic   <NA>     NA
    ##                                                                     Comment
    ## 1                                                                      <NA>
    ## 2                                                                      <NA>
    ## 3                                                                      <NA>
    ## 4 Maturity ogives based on several contemporaneous reproductive parameters.
    ## 5 Maturity ogives based on several contemporaneous reproductive parameters.
    ## 6                                                                      <NA>
    ##   Entered         DateEntered Modified        DateModified Expert DateChecked
    ## 1       3 1998-10-05 00:00:00       NA 1998-10-05 00:00:00     NA        <NA>
    ## 2       3 1998-10-06 00:00:00       NA 1998-12-04 00:00:00     NA        <NA>
    ## 3       2 2006-03-01 00:00:00       NA 2006-03-01 00:00:00     NA        <NA>
    ## 4       3 2010-01-15 00:00:00       NA 2010-01-15 00:00:00     NA        <NA>
    ## 5       3 2010-01-15 00:00:00       NA 2010-01-15 00:00:00     NA        <NA>
    ## 6    2189 2012-01-23 23:04:59       NA 2012-01-23 23:04:59     NA        <NA>
    ##   TS
    ## 1 NA
    ## 2 NA
    ## 3 NA
    ## 4 NA
    ## 5 NA
    ## 6 NA

\#\#morphology
\#\#<https://www.fishbase.in/manual/fishbasethe_morphology_table.htm>
\#\#there are multiple records for some species

``` r
load("DF_intro.Rdata")
DF= DF_intro
species = DF$Species
for (a in 1:length(species)){
  tmp = data.frame(morphology(species_list = DF$Species[a]))
  # print(a)
  print(dim(tmp)[1])
}
```

    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 8
    ## [1] 8
    ## [1] 8
    ## [1] 8
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
a = 48
  tmp = data.frame(morphology(species_list = DF$Species[a]))
  head(tmp)
```

    ##   SpecCode               Species autoctr StockCode MorphDatRefNo Females Males
    ## 1        2 Oreochromis niloticus      80         1             2      -1    -1
    ## 2        2 Oreochromis niloticus    1118      1492             2      -1    -1
    ## 3        2 Oreochromis niloticus    1577      2263             2       0     0
    ## 4        2 Oreochromis niloticus    1578      2264             2      -1    -1
    ## 5        2 Oreochromis niloticus    1579      2265             2      -1    -1
    ## 6        2 Oreochromis niloticus    1580      2266             2      -1    -1
    ##   AppearancePic               SexualAttributes
    ## 1      ORNIL_U0                           <NA>
    ## 2          <NA> protruding genital papilla (m)
    ## 3          <NA>              no special organs
    ## 4          <NA>              no special organs
    ## 5          <NA>              no special organs
    ## 6          <NA>              no special organs
    ##                                      SexMorphology
    ## 1 different morphology during breeding season only
    ## 2 different morphology during breeding season only
    ## 3                              males alike females
    ## 4                              males alike females
    ## 5                              males alike females
    ## 6                              males alike females
    ##                                      SexColors StrikingFeatures
    ## 1 different colors during breeding season only             none
    ## 2 different colors during breeding season only             none
    ## 3                          males alike females             none
    ## 4     different colors in juveniles and adults             none
    ## 5 different colors during breeding season only             none
    ## 6     different colors in juveniles and adults             none
    ##          BodyShapeI BodyShapeII              Forehead OperculumPresent
    ## 1 fusiform / normal  compressed more or less straight               -1
    ## 2 fusiform / normal  compressed more or less straight               -1
    ## 3 fusiform / normal  compressed more or less straight               -1
    ## 4 fusiform / normal  compressed more or less straight               -1
    ## 5 fusiform / normal  compressed more or less straight               -1
    ## 6 fusiform / normal  compressed more or less straight               -1
    ##            TypeofEyes         TypeofMouth PosofMouth MandibleTeeth
    ## 1 more or less normal more or less normal   terminal       present
    ## 2 more or less normal more or less normal   terminal       present
    ## 3 more or less normal more or less normal   terminal       present
    ## 4 more or less normal more or less normal   terminal       present
    ## 5 more or less normal more or less normal   terminal       present
    ## 6 more or less normal more or less normal   terminal       present
    ##   MandibleTeethT1 MandibleTeethT2 MandibleRowsMin MandibleRowsMax MaxillaTeeth
    ## 1    tricuspidate     bicuspidate               3               6      present
    ## 2            <NA>     bicuspidate               4               6      present
    ## 3            <NA>     bicuspidate               4               7      present
    ## 4            <NA>            <NA>               3               4      present
    ## 5    tricuspidate     bicuspidate               4               7      present
    ## 6    tricuspidate            <NA>               4               7      present
    ##   MaxillaTeethT1 MaxillaTeethT2 MaxillaRowsMin MaxillaRowsMax VomerineTeeth
    ## 1   tricuspidate    bicuspidate              3              6        absent
    ## 2           <NA>    bicuspidate              4              6        absent
    ## 3           <NA>    bicuspidate              4              7          <NA>
    ## 4           <NA>           <NA>              3              4          <NA>
    ## 5   tricuspidate    bicuspidate              4              7          <NA>
    ## 6   tricuspidate           <NA>              4              7          <NA>
    ##   VomerineTeethT1 VomerineTeethT2 VomerineRowsMin VomerineRowsMax Palatine
    ## 1            <NA>            <NA>              NA              NA   absent
    ## 2            <NA>            <NA>              NA              NA   absent
    ## 3            <NA>            <NA>              NA              NA     <NA>
    ## 4            <NA>            <NA>              NA              NA     <NA>
    ## 5            <NA>            <NA>              NA              NA     <NA>
    ## 6            <NA>            <NA>              NA              NA     <NA>
    ##   PalatineTeethT1 PalatineTeethT2 PalatineRowsMin PalatineRowsMax
    ## 1            <NA>            <NA>              NA              NA
    ## 2            <NA>            <NA>              NA              NA
    ## 3            <NA>            <NA>              NA              NA
    ## 4            <NA>            <NA>              NA              NA
    ## 5            <NA>            <NA>              NA              NA
    ## 6            <NA>            <NA>              NA              NA
    ##   PharyngealTeeth PharyngealTeethT1 PharyngealTeethT2 PharyngealRowsMin
    ## 1         present              <NA>      tricuspidate                NA
    ## 2         present              <NA>              <NA>                NA
    ## 3         present              <NA>              <NA>                NA
    ## 4         present              <NA>              <NA>                NA
    ## 5         present              <NA>              <NA>                NA
    ## 6         present              <NA>              <NA>                NA
    ##   PharyngealRowsMax TeethonTongue Lipsteeth DermalTeeth
    ## 1                NA        absent      <NA>      absent
    ## 2                NA        absent      <NA>      absent
    ## 3                NA          <NA>      <NA>        <NA>
    ## 4                NA          <NA>      <NA>        <NA>
    ## 5                NA          <NA>      <NA>        <NA>
    ## 6                NA          <NA>      <NA>        <NA>
    ##                                                       CommentonTeeth
    ## 1                                 Pharyngeal teeth firm and regular.
    ## 2 Pharyngeal teeth finer and more numerous than in @O.n. niloticus@.
    ## 3                                         Pharyngeal teeth variable.
    ## 4                          Pharyngeal teeth fine and rather crowded.
    ## 5                                                               <NA>
    ## 6                                                               <NA>
    ##     TypeofScales Scutes Keels HorStripesTTI HorStripesTTII VerStripesTTI
    ## 1 cycloid scales absent     0        absent           <NA>       present
    ## 2 cycloid scales absent     0          <NA>           <NA>          <NA>
    ## 3 cycloid scales   <NA>    NA          <NA>           <NA>          <NA>
    ## 4 cycloid scales   <NA>    NA          <NA>           <NA>          <NA>
    ## 5 cycloid scales   <NA>    NA          <NA>           <NA>          <NA>
    ## 6 cycloid scales   <NA>    NA          <NA>           <NA>          <NA>
    ##   VerStripesTTII VerStripesTTIII DiaStripesTTI DiaStripesTTII DiaStripesTTIII
    ## 1  mainly dorsal            <NA>        absent           <NA>            <NA>
    ## 2           <NA>            <NA>          <NA>           <NA>            <NA>
    ## 3           <NA>            <NA>          <NA>           <NA>            <NA>
    ## 4           <NA>            <NA>          <NA>           <NA>            <NA>
    ## 5           <NA>            <NA>          <NA>           <NA>            <NA>
    ## 6           <NA>            <NA>          <NA>           <NA>            <NA>
    ##   CurStripesTTI CurStripesTTII CurStripesTTIII           SpotsTTI SpotsTTII
    ## 1        absent           <NA>            <NA>      one spot only      <NA>
    ## 2          <NA>           <NA>            <NA>               <NA>      <NA>
    ## 3          <NA>           <NA>            <NA> more than one spot      <NA>
    ## 4          <NA>           <NA>            <NA> more than one spot      <NA>
    ## 5          <NA>           <NA>            <NA>               <NA>      <NA>
    ## 6          <NA>           <NA>            <NA>               <NA>      <NA>
    ##       SpotsTTIII                   DorsalFinI    DorsalFinII
    ## 1 mainly on tail          no spots or stripes colored margin
    ## 2           <NA>                         <NA>           <NA>
    ## 3           <NA>                         <NA>           <NA>
    ## 4           <NA> more than one spot or stripe colored margin
    ## 5           <NA>                         <NA>           <NA>
    ## 6           <NA>                         <NA> colored margin
    ##                     CaudalFinI    CaudalFinII            AnalFinI
    ## 1 more than one spot or stripe colored margin no spots or stripes
    ## 2 more than one spot or stripe           <NA>                <NA>
    ## 3 more than one spot or stripe           <NA>                <NA>
    ## 4 more than one spot or stripe           <NA>                <NA>
    ## 5 more than one spot or stripe           <NA>                <NA>
    ## 6           one spot or stripe           <NA>                <NA>
    ##           AnalFinII LateralLinesNo LLinterrupted ScalesLateralmin
    ## 1 no colored margin              1            -1               31
    ## 2              <NA>              2             0               30
    ## 3              <NA>              2             0               32
    ## 4              <NA>              2             0               30
    ## 5              <NA>              2             0               32
    ## 6              <NA>              2             0               32
    ##   ScalesLateralmax PoredScalesMin PoredScalesMax LatSeriesMin LatSeriesMax
    ## 1               34             NA             NA           NA           NA
    ## 2               33             NA             NA           NA           NA
    ## 3               34             NA             NA           NA           NA
    ## 4               33             NA             NA           NA           NA
    ## 5               34             NA             NA           NA           NA
    ## 6               33             NA             NA           NA           NA
    ##   ScaleRowsAboveMin ScaleRowsAboveMax ScaleRowsBelowMin ScaleRowsBelowMax
    ## 1               4.0               5.0                NA                NA
    ## 2               3.5               5.5              12.5              15.5
    ## 3                NA                NA                NA                NA
    ## 4               4.0               4.5                NA                NA
    ## 5                NA                NA                NA                NA
    ## 6               4.0               5.0                NA                NA
    ##   ScalesPeduncMin ScalesPeduncMax BarbelsNo BarbelsType GillCleftsNo Spiracle
    ## 1              NA              NA         0        <NA>            0   absent
    ## 2              16              20         0        <NA>            0   absent
    ## 3              NA              NA         0        <NA>            0   absent
    ## 4              NA              NA         0        <NA>            0   absent
    ## 5              NA              NA         0        <NA>            0   absent
    ## 6              19              20         0        <NA>            0   absent
    ##   GillRakersLowMin GillRakersLowMax GillRakersUpMin GillRakersUpMax
    ## 1               18               28              NA              NA
    ## 2               20               28              NA              NA
    ## 3               19               25              NA              NA
    ## 4               18               23               2               3
    ## 5               20               28              NA              NA
    ## 6               20               23              NA              NA
    ##   GillRakersTotalMin GillRakersTotalMax Vertebrae VertebraePreanMin
    ## 1                 NA                 NA      <NA>                NA
    ## 2                 NA                 NA      <NA>                NA
    ## 3                 NA                 NA      <NA>                NA
    ## 4                 20                 26      <NA>                NA
    ## 5                 NA                 NA      <NA>                NA
    ## 6                 NA                 NA      <NA>                NA
    ##   VertebraePreanMax VertebraeTotalMin VertebraeTotalMax
    ## 1                NA                30                32
    ## 2                NA                29                31
    ## 3                NA                30                32
    ## 4                NA                26                30
    ## 5                NA                30                32
    ## 6                NA                30                31
    ##                         DorsalAttributes Dfinno DorsalSpinesMin DorsalSpinesMax
    ## 1 extending over most of the back length      1              15              18
    ## 2 extending over most of the back length      1              15              17
    ## 3 extending over most of the back length      1              16              18
    ## 4 extending over most of the back length      1              14              16
    ## 5 extending over most of the back length      1              15              17
    ## 6                 no striking attributes      1              16              17
    ##   Notched DorsalSoftRaysMin DorsalSoftRaysMax Adifin DFinletsmin DFinletsmax
    ## 1       0                11                13 absent           0           0
    ## 2       0                10                14 absent          NA           0
    ## 3       0                12                13 absent          NA           0
    ## 4       0                11                13 absent          NA           0
    ## 5       0                13                14 absent          NA           0
    ## 6       0                12                13 absent          NA           0
    ##   VFinletsmin VFinletsmax                CShape          Attributes Afinno
    ## 1           0           0 more or less truncate more or less normal      1
    ## 2          NA           0 more or less truncate more or less normal      1
    ## 3          NA           0 more or less truncate more or less normal      1
    ## 4          NA           0 more or less truncate more or less normal      1
    ## 5          NA           0 more or less truncate more or less normal      1
    ## 6          NA           0 more or less truncate more or less normal      1
    ##   AnalFinSpinesMin AnalFinSpinesMax Araymin Araymax  PectoralAttributes
    ## 1                3                3       9      11 more or less normal
    ## 2                3                3       8      11 more or less normal
    ## 3                3                3      10      NA more or less normal
    ## 4                3                3       8      10 more or less normal
    ## 5                3                3      NA      NA more or less normal
    ## 6                3                3       9      11 more or less normal
    ##   Pspines2 Praymin Praymax   PelvicsAttributes VPosition           VPosition2
    ## 1       NA      NA      NA more or less normal  thoracic beneath origin of D1
    ## 2        1      12      13 more or less normal  thoracic beneath origin of D1
    ## 3       NA      NA      NA more or less normal  thoracic  behind origin of D1
    ## 4       NA      NA      NA more or less normal  thoracic  behind origin of D1
    ## 5       NA      NA      NA more or less normal  thoracic  behind origin of D1
    ## 6       NA      NA      NA more or less normal  thoracic                 <NA>
    ##   Vspines Vraymin Vraymax StandardLengthCm Forklength Totallength HeadLength
    ## 1       1      NA      NA               NA         NA          NA         NA
    ## 2       1       5       5               NA         NA          NA         NA
    ## 3      NA      NA      NA               NA         NA          NA         NA
    ## 4      NA      NA      NA               NA         NA          NA         NA
    ## 5      NA      NA      NA               NA         NA          NA         NA
    ## 6      NA      NA      NA               NA         NA          NA         NA
    ##   PreDorsalLength PrePelvicsLength PreAnalLength PostHeadDepth PostTrunkDepth
    ## 1              NA               NA            NA            NA             NA
    ## 2              NA               NA            NA            NA             NA
    ## 3              NA               NA            NA            NA             NA
    ## 4              NA               NA            NA            NA             NA
    ## 5              NA               NA            NA            NA             NA
    ## 6              NA               NA            NA            NA             NA
    ##   MaximumDepth PeduncleDepth PeduncleLength CaudalHeight PreorbitalLength
    ## 1           NA            NA             NA           NA               NA
    ## 2           NA            NA             NA           NA               NA
    ## 3           NA            NA             NA           NA               NA
    ## 4           NA            NA             NA           NA               NA
    ## 5           NA            NA             NA           NA               NA
    ## 6           NA            NA             NA           NA               NA
    ##   EyeLength Entered DateEntered Modified        DateModified Expert DateChecked
    ## 1        NA       4  1990-10-18      675 2018-11-19 18:29:29     NA        <NA>
    ## 2        NA       4  1990-10-18       65 2013-01-16 00:00:00     NA        <NA>
    ## 3        NA       3  1991-01-18       65 2013-06-28 00:00:00     NA        <NA>
    ## 4        NA       3  1991-01-18       65 2013-06-28 00:00:00     NA        <NA>
    ## 5        NA       3  1991-01-21       65 2013-01-16 00:00:00     NA        <NA>
    ## 6        NA       3  1991-01-21       65 2013-06-28 00:00:00     NA        <NA>
    ##   RemarkSex
    ## 1      <NA>
    ## 2      <NA>
    ## 3      <NA>
    ## 4      <NA>
    ## 5      <NA>
    ## 6      <NA>
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               AddChars
    ## 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               Diagnosis: A large deep-bodied tilapia, with a relatively small head (Ref. 118638). Jaws of mature male not greatly enlarged, length of lower jaw 29-37% of head length; genital papilla of breeding male not tassellated (Ref. 2). Most distinguishing characteristic is the presence of regular vertical stripes throughout depth of caudal fin (Ref. 4967, 53405); at all life stages, the tailfin is marked with numerous thin vertical stripes; in smaller fishes, these are relatively wide and form an arc, and start at the base of the tailfin (Ref. 118638).Males are bluish pink, sometimes with a dark throat, belly, anal and pelvic fins; females are usually brownish, silvery/white beneath with around 10 thin vertical bars (Ref. 118638).\r\nDescription: Lower pharyngeal bone longer than broad, its anterior part longer than toothed part; outer jaw teeth bicuspid, inner jaw teeth tricuspid, posterior pharyngeal teeth bicuspid and stout; 3-4 rows of teeth in jaws (3-5, rarely 6, in specimens over 200 mm SL); micro-gillrakers present; scales cycloid (Ref. 53405).\r\nColouration: Margin of dorsal fin grey or black;   vertical bars in caudal fin 7-12 (Ref. 2). Regular black cross bars on caudal fin; ground colour greyish, relatively dark in adults; back olivaceous-green, sides paler, with 6-9 rather indistinct cross bars; belly whitish; upper lip pale green or white, lower lip white; dorsal and anal fins greyish, sometimes with very narrow red margin, soft part of fin with vertical lines (or with aligned light spots resembling striped pattern); pelvic fins grey, pectorals transparent; "tilapian" spot lacking in adults but very distinct in fingerlings which also have more distinct cross bars and very prominent black spot on upper part of caudal peduncle; throat, belly and unpaired fins black in mature males (Ref. 53405).
    ## 2 Diagnosis: teeth in jaws with shafts as in <i>O. niloticus niloticus</i> or a little more slender, in 3 or 4 series up to about 160mm SL, 4-6 above this size; outermost all bicuspid, rarely 1 or 2 with a third cusp; lower pharyngeal teeth usually finer and more numerous than in <i>O. niloticus niloticus</i>, and on a smaller dentigerous area with concave sides, its median length always less than that of the blade; width of bone equal to or a little greater than its length, 29.0-33.4% head length; vertical stripes on caudal fin usually distinct, with anastomoses only basally; breeding males with throat, chest, pelvic, dorsal and anal fins black, head and flanks flushed red (Ref. 2).\r\nDescription: dorsal head profile straight (Ref. 1887) or slightly convex (Ref. 1887, 54979). Snout rounded (Ref. 1887). Jaws equal anteriorly (Ref. 55985). Maxillary not reaching anterior margin of eye (Ref. 1887, 51936, 53528, 55985, 72417). 2 (Ref. 1887, 51936, 53528, 55985, 72417) or 3 (Ref. 1887) scale rows on cheek. Maxillary entirely covered by preorbital (Ref. 72417). Gill rakers short (Ref. 1887). Inferior vertebral apophysis (spondylophysial apophysis) of only the third vertebra supports anterior end of swimbladder (Ref. 2). 11-15.5 scales between upper part of lateral line and pelvic fins (Ref. 51936, 54979). 19-22 scales in upper part of lateral line, 11-18 in lower part (Ref. 1887, 51936, 53528, 72417). 5-7 scales between pectoral and pelvic fins (Ref. 55985). Pectoral reaching beyond vertical of origin of anal (ref. 1887). Pelvic fins reaching vent (Ref. 51936, 55985, 72417) or not (Ref. 53528). Soft rays of dorsal fin longer than spines (Ref. 53528). Soft dorsal reaching caudal fin (Ref. 54979). Third anal fin spine a little longer than last dorsal (Ref. 55985). Caudal fin a little covered by scales, with straight posterior margin and slightly rounded corners (Ref. 54979).\r\nColoration: vertical bars on caudal fin sometimes absent and replaced by white dots (Ref. 54979, 55074), arranged in vertical or oblique rows (Ref. 54979). Blackish opercular spot present in both sexes; vertical fins with alternating series of pale and dark spots on the soft part (Ref. 72417). Male (in live): body grey-brown with a greenish hue above; mature males with darker head, reddish upper part of cheeks, bluish-black lower part of cheeks and throat, and rosy chest with dark grey-blackish spots and lines; dorsal, anal and pelvic fins blackish; pectoral fins red; caudal fin reddish with numerous black, vertical, wavy lines, sometimes replaced by rows of white spots (Ref. 54979). Gill membrane of male blackish, sometimes also on inferior parts of head (Ref. 72417). Females and young: body paler, greenish, relatively dark above becoming paler ventrally; throat white; chest rosy-whitish; belly whitish; cheeks dark green above; opercular spot clearly visible (Ref. 54979). Gill membrane of females yellowish or with small blackish spots (Ref. 72417). Juveniles with about 10 vertical bands dorsally, a black lateral spot below the dorsal fin extremity and a spot on the upper part of the caudal peduncle; soft part of vertical fins with dark spots forming parallel lines (Ref. 53528). Preserved fish: generally green-grey or grey-brown, with paler fins; caudal fin greyish with black vertical stripes (ref. 54979). Pelvic fins dark, except near inner edge; soft anal dark at base (Ref. 55985). Body with or without very indistinct darker cross-bars; soft dorsal uniform or with oblique streaks (Ref. 1887).
    ## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Diagnosis: body depth -36.147% standard length; teeth in jaws with stout shafts in rivers, usually more slender in lakes, in 4-5 series at 100-200mm standard length and (4)5-7 above this size, outer bicuspid; pharyngeal teeth variable, in lakes usually covering a shorter dentigerous area; width of pharyngeal bone from a little less to a little more than its length; caudal peduncle relatively long and slender, its length usually 12.0-14.5% standard length, 0.8-1.0 of its depth; pectoral fin length usually over 37% (35-45%) standard length; pigment of the body usually forms a reticulum or spots based on the scales, but mature males may be uniformly dark (blue-black); stripes of caudal fin often anastomosing in adult to form a reticulum in center of fin (Ref. 2). Possesion of fixed mtDNA cleavage phenotypes <i>Hha</i>I-B and <i>Mbo</i>I-D (Ref. 27554).\r\nDescription: jaws equal; mouth does not reach vertical from anterior border of eye; outer teeth rather broad, irregularly bicuspid, inner cusp the larger; inner teeth tricuspid, in 3-4 rows; 3 rows of scales on cheek; gill-rakers short; scales cycloid; pectoral fin pointed; pelvic, dorsal and anal fins blunt; caudal well scaled (Ref. 58535).\r\nColoration: about 9 narrow dark cross-bars on sides; soft dorsal and caudal fin sharply barred, anal fin faintly barred; dark blotch at angle of operculum (Ref. 58535).
    ## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Diagnosis: pharyngeal teeth fine and rather crowded; lower dentigerous area with more rounded lobes than in other subspecies; pectoral fin length less than 37% standard length (Ref. 2). Possession of mtDNA cleavage phenotypes <i>Bcl</i>I-B, <i>Hha</i>I-D, <i>Mbo</i>I-A and <i>Mbo</i>II-E (Ref. 27554).\r\nDescription: sometimes with only 4 lateral-line openings in the preorbital bone on one or both sides; teeth in 3-4 series, sometimes part of a fifth, with rather slender shafts; micro-branchiospines present on outer sides of second to fourth arches; scales in 2-3 rows on cheek; genital papilla of male conical or with a terminal notch (Ref. 2).\r\nColoration: recently preserved specimens dark, the dark spots on the scales becoming smaller towards the ventral surface; vertical series of dark spots on the caudal are present but less regular than in <i>O. n. niloticus</i> (Ref. 2). Mature males: anal fin is black between rays; dorsal fin grey with series of black spots on the soft part and posterior part of spinous dorsal fin; lappets with black edge (Ref. 2). Females and young: melanin more diffuse (Ref. 2).
    ## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Caudal marked with wavy vertical stripes in the young, becoming irregular in young specimens.  General body color of mature males dark green with blue iridescence or dark blue-black; or with ventral surface turning black at peak breeding phase.
    ## 6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Diagnosis: teeth in jaws with stout shafts, in 4 or 5 series; outer teeth of young bicuspid becoming tricuspid in adults; number of vertebrae relatively low (30-31); 32-33 scales in lateral line series; modal dorsal fin formula XVI 12; lower pharyngeal bone slender, with its width 29.0-32.4% head length, a little less to a little more its length; toother area of lower pharyngeal bone rather small, its median length contained 1.1-1.5 times in length of the blade; caudal peduncle length 10.0-13.5% standard length and 0.65-0.9 of its depth; pectoral fin 35.0-43.2% standard length; caudal fin with vertical stripes distally, but proximal markings more irregular in adult (Ref. 2).\r\nDescription: 7-9 scales between pectoral and pelvic fins (sometimes 6 in young) (Ref. 55985).\r\nColoration: pelvic and anal fins of breeding males tipped with dark grey, while their throat, chest and belly are dusky grey; females and young with pale slate-grey body and white chest, belly and pelvic fins; black or dark grey lappets and upper edge to dorsal fin; vertical stripes of caudal fin dark brown on a light grey background; pectoral rays red to light brown; flanks may bear 7-8 vertical bars (Ref. 2).
    ##   SimilarSpecies1 SimilarSpec1Remarks SimilarSpecies2 SimilarSpec2Remarks
    ## 1              NA                <NA>              NA                <NA>
    ## 2              NA                <NA>              NA                <NA>
    ## 3              NA                <NA>              NA                <NA>
    ## 4              NA                <NA>              NA                <NA>
    ## 5              NA                <NA>              NA                <NA>
    ## 6              NA                <NA>              NA                <NA>
    ##   EaseofID OtherRef1 OtherRef2 TS
    ## 1     <NA>     53405        NA NA
    ## 2     <NA>     54979     55074 NA
    ## 3     <NA>     58535        NA NA
    ## 4     <NA>     27554        NA NA
    ## 5     <NA>        NA        NA NA
    ## 6     <NA>     55985        NA NA

``` r
  names(tmp)
```

    ##   [1] "SpecCode"            "Species"             "autoctr"            
    ##   [4] "StockCode"           "MorphDatRefNo"       "Females"            
    ##   [7] "Males"               "AppearancePic"       "SexualAttributes"   
    ##  [10] "SexMorphology"       "SexColors"           "StrikingFeatures"   
    ##  [13] "BodyShapeI"          "BodyShapeII"         "Forehead"           
    ##  [16] "OperculumPresent"    "TypeofEyes"          "TypeofMouth"        
    ##  [19] "PosofMouth"          "MandibleTeeth"       "MandibleTeethT1"    
    ##  [22] "MandibleTeethT2"     "MandibleRowsMin"     "MandibleRowsMax"    
    ##  [25] "MaxillaTeeth"        "MaxillaTeethT1"      "MaxillaTeethT2"     
    ##  [28] "MaxillaRowsMin"      "MaxillaRowsMax"      "VomerineTeeth"      
    ##  [31] "VomerineTeethT1"     "VomerineTeethT2"     "VomerineRowsMin"    
    ##  [34] "VomerineRowsMax"     "Palatine"            "PalatineTeethT1"    
    ##  [37] "PalatineTeethT2"     "PalatineRowsMin"     "PalatineRowsMax"    
    ##  [40] "PharyngealTeeth"     "PharyngealTeethT1"   "PharyngealTeethT2"  
    ##  [43] "PharyngealRowsMin"   "PharyngealRowsMax"   "TeethonTongue"      
    ##  [46] "Lipsteeth"           "DermalTeeth"         "CommentonTeeth"     
    ##  [49] "TypeofScales"        "Scutes"              "Keels"              
    ##  [52] "HorStripesTTI"       "HorStripesTTII"      "VerStripesTTI"      
    ##  [55] "VerStripesTTII"      "VerStripesTTIII"     "DiaStripesTTI"      
    ##  [58] "DiaStripesTTII"      "DiaStripesTTIII"     "CurStripesTTI"      
    ##  [61] "CurStripesTTII"      "CurStripesTTIII"     "SpotsTTI"           
    ##  [64] "SpotsTTII"           "SpotsTTIII"          "DorsalFinI"         
    ##  [67] "DorsalFinII"         "CaudalFinI"          "CaudalFinII"        
    ##  [70] "AnalFinI"            "AnalFinII"           "LateralLinesNo"     
    ##  [73] "LLinterrupted"       "ScalesLateralmin"    "ScalesLateralmax"   
    ##  [76] "PoredScalesMin"      "PoredScalesMax"      "LatSeriesMin"       
    ##  [79] "LatSeriesMax"        "ScaleRowsAboveMin"   "ScaleRowsAboveMax"  
    ##  [82] "ScaleRowsBelowMin"   "ScaleRowsBelowMax"   "ScalesPeduncMin"    
    ##  [85] "ScalesPeduncMax"     "BarbelsNo"           "BarbelsType"        
    ##  [88] "GillCleftsNo"        "Spiracle"            "GillRakersLowMin"   
    ##  [91] "GillRakersLowMax"    "GillRakersUpMin"     "GillRakersUpMax"    
    ##  [94] "GillRakersTotalMin"  "GillRakersTotalMax"  "Vertebrae"          
    ##  [97] "VertebraePreanMin"   "VertebraePreanMax"   "VertebraeTotalMin"  
    ## [100] "VertebraeTotalMax"   "DorsalAttributes"    "Dfinno"             
    ## [103] "DorsalSpinesMin"     "DorsalSpinesMax"     "Notched"            
    ## [106] "DorsalSoftRaysMin"   "DorsalSoftRaysMax"   "Adifin"             
    ## [109] "DFinletsmin"         "DFinletsmax"         "VFinletsmin"        
    ## [112] "VFinletsmax"         "CShape"              "Attributes"         
    ## [115] "Afinno"              "AnalFinSpinesMin"    "AnalFinSpinesMax"   
    ## [118] "Araymin"             "Araymax"             "PectoralAttributes" 
    ## [121] "Pspines2"            "Praymin"             "Praymax"            
    ## [124] "PelvicsAttributes"   "VPosition"           "VPosition2"         
    ## [127] "Vspines"             "Vraymin"             "Vraymax"            
    ## [130] "StandardLengthCm"    "Forklength"          "Totallength"        
    ## [133] "HeadLength"          "PreDorsalLength"     "PrePelvicsLength"   
    ## [136] "PreAnalLength"       "PostHeadDepth"       "PostTrunkDepth"     
    ## [139] "MaximumDepth"        "PeduncleDepth"       "PeduncleLength"     
    ## [142] "CaudalHeight"        "PreorbitalLength"    "EyeLength"          
    ## [145] "Entered"             "DateEntered"         "Modified"           
    ## [148] "DateModified"        "Expert"              "DateChecked"        
    ## [151] "RemarkSex"           "AddChars"            "SimilarSpecies1"    
    ## [154] "SimilarSpec1Remarks" "SimilarSpecies2"     "SimilarSpec2Remarks"
    ## [157] "EaseofID"            "OtherRef1"           "OtherRef2"          
    ## [160] "TS"

\#\#morphometrics \#\#there are multiple records for some species; to
include we would need to take averages

``` r
load("DF_intro.Rdata")
DF= DF_intro
species = DF$Species
for (a in 1:length(species)){
  tmp = data.frame(morphometrics(species_list = DF$Species[a]))
  # print(a)
  print(dim(tmp)[1])
}
```

    ## [1] 4
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 4
    ## [1] 3
    ## [1] 3
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 2
    ## [1] 2
    ## [1] 2
    ## [1] 2
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 2
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
a = 48
  tmp = data.frame(morphometrics(species_list = DF$Species[a]))
  head(tmp)
```

    ##   SpecCode               Species autoctr      PicName  TL  SL  FL  HL PAL PDL
    ## 1        2 Oreochromis niloticus    6290 Ornil_m0.jpg 568 470 567 141 329 155
    ## 2        2 Oreochromis niloticus    6291 Ornil_u0.gif 555 458 552 139 314 120
    ##   PPL PPEL ED POL  BD  CH    CA SnoutTipX SnoutTipY CaudalOriginX CaudalOriginY
    ## 1 164  141 28  44 207 153 14934        NA        NA            NA            NA
    ## 2 147  137 26  40 210 137 15352        36       204           494           204
    ##   TLEndX TLEndY DorsalOriginX DorsalOriginY AnalOriginX AnalOriginY EyeFrontX
    ## 1     NA     NA            NA            NA          NA          NA        NA
    ## 2    591    204           156           204         350         204        76
    ##   EyeFrontY EyeEndX EyeEndY OpercleEndX OpercleEndY MaxDepthDorsalX
    ## 1        NA      NA      NA          NA          NA              NA
    ## 2       188     102     188         175         204             241
    ##   MaxDepthDorsalY MaxDepthVentralX MaxDepthVentralY PectoralOriginX
    ## 1              NA               NA               NA              NA
    ## 2              91              241              301             173
    ##   PectoralOriginY PelvicOriginX PelvicOriginY FLEndX FLEndY CaudalUpperX
    ## 1              NA            NA            NA     NA     NA           NA
    ## 2             204           183           204    588    204          569
    ##   CaudalUpperY CaudalLowerX CaudalLowerY AspectRatio Doubtful Remarks Entered
    ## 1           NA           NA           NA     1.56750        0    <NA>      NA
    ## 2          142          569          279     1.22258        0    <NA>     833
    ##   DateEntered Modified DateModified Expert DateChecked TS
    ## 1        <NA>       NA         <NA>     NA          NA NA
    ## 2  2003-03-10       NA   2003-03-10     NA          NA NA

``` r
  names(tmp)
```

    ##  [1] "SpecCode"         "Species"          "autoctr"          "PicName"         
    ##  [5] "TL"               "SL"               "FL"               "HL"              
    ##  [9] "PAL"              "PDL"              "PPL"              "PPEL"            
    ## [13] "ED"               "POL"              "BD"               "CH"              
    ## [17] "CA"               "SnoutTipX"        "SnoutTipY"        "CaudalOriginX"   
    ## [21] "CaudalOriginY"    "TLEndX"           "TLEndY"           "DorsalOriginX"   
    ## [25] "DorsalOriginY"    "AnalOriginX"      "AnalOriginY"      "EyeFrontX"       
    ## [29] "EyeFrontY"        "EyeEndX"          "EyeEndY"          "OpercleEndX"     
    ## [33] "OpercleEndY"      "MaxDepthDorsalX"  "MaxDepthDorsalY"  "MaxDepthVentralX"
    ## [37] "MaxDepthVentralY" "PectoralOriginX"  "PectoralOriginY"  "PelvicOriginX"   
    ## [41] "PelvicOriginY"    "FLEndX"           "FLEndY"           "CaudalUpperX"    
    ## [45] "CaudalUpperY"     "CaudalLowerX"     "CaudalLowerY"     "AspectRatio"     
    ## [49] "Doubtful"         "Remarks"          "Entered"          "DateEntered"     
    ## [53] "Modified"         "DateModified"     "Expert"           "DateChecked"     
    ## [57] "TS"

\#\#oxygen
\#\#<https://www.fishbase.in/manual/fishbasethe_oxygen_table.htm>
\#\#there are multiple records for some species (e.g. for different
sexes); to include we would need to take averages

``` r
load("DF_intro.Rdata")
DF= DF_intro
species = DF$Species
for (a in 1:length(species)){
  tmp = data.frame(oxygen(species_list = DF$Species[a]))
  # print(a)
  print(dim(tmp)[1])
}
```

    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 86
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 315
    ## [1] 56
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 18
    ## [1] 1
    ## [1] 1
    ## [1] 8
    ## [1] 1
    ## [1] 1
    ## [1] 27
    ## [1] 1
    ## [1] 18
    ## [1] 151
    ## [1] 1
    ## [1] 4
    ## [1] 1
    ## [1] 29
    ## [1] 1
    ## [1] 4
    ## [1] 1
    ## [1] 4
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 3
    ## [1] 558
    ## [1] 6
    ## [1] 52
    ## [1] 52
    ## [1] 52
    ## [1] 52
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 20
    ## [1] 1
    ## [1] 14
    ## [1] 1
    ## [1] 47
    ## [1] 1
    ## [1] 8
    ## [1] 1
    ## [1] 8
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 8
    ## [1] 1

``` r
a = 48
tmp = data.frame(oxygen(species_list = DF$Species[a]))
head(tmp)
```

    ##   SpecCode               Species autoctr StockCode OxygenRefNo TestCode
    ## 1        2 Oreochromis niloticus       1         1        7504       NA
    ## 2        2 Oreochromis niloticus       2         1        7504       NA
    ## 3        2 Oreochromis niloticus       3         1        7504       NA
    ## 4        2 Oreochromis niloticus       4         1        7504       NA
    ## 5        2 Oreochromis niloticus       5         1        7504       NA
    ## 6        2 Oreochromis niloticus       6         1        7504       NA
    ##   FamilyOxRef SpeciesOxRef Weight Number       Sex Temp Salinity Oxygen
    ## 1        <NA>         <NA>    2.1      8 juveniles   25        0     NA
    ## 2        <NA>         <NA>    9.2     13 juveniles   25        0     NA
    ## 3        <NA>         <NA>    9.5      7 juveniles   25        0     NA
    ## 4        <NA>         <NA>   16.6     11   unsexed   25        0     NA
    ## 5        <NA>         <NA>   17.1     13   unsexed   25        0     NA
    ## 6        <NA>         <NA>   22.8     11   unsexed   25        0     NA
    ##   Oxygenmgl OxygenCons MetabolicLevel AppliedStress DataRef SwimmingSpeed
    ## 1        NA      245.9        routine       hypoxia    7504            NA
    ## 2        NA      185.9        routine       hypoxia    7504            NA
    ## 3        NA      142.4        routine       hypoxia    7504            NA
    ## 4        NA      123.0        routine       hypoxia    7504            NA
    ## 5        NA      155.9        routine       hypoxia    7504            NA
    ## 6        NA      123.5        routine       hypoxia    7504            NA
    ##   Comment Entered DateEntered Modified DateModified Expert DateChecked TS
    ## 1    <NA>      10  1994-09-30       NA   1994-09-30     NA        <NA> NA
    ## 2    <NA>      10  1994-09-30       NA   1994-09-30     NA        <NA> NA
    ## 3    <NA>      10  1994-09-30       NA   1994-09-30     NA        <NA> NA
    ## 4    <NA>      10  1994-09-30       NA   1994-09-30     NA        <NA> NA
    ## 5    <NA>      10  1994-09-30       NA   1994-09-30     NA        <NA> NA
    ## 6    <NA>      10  1994-09-30       NA   1994-09-30     NA        <NA> NA

``` r
names(tmp)
```

    ##  [1] "SpecCode"       "Species"        "autoctr"        "StockCode"     
    ##  [5] "OxygenRefNo"    "TestCode"       "FamilyOxRef"    "SpeciesOxRef"  
    ##  [9] "Weight"         "Number"         "Sex"            "Temp"          
    ## [13] "Salinity"       "Oxygen"         "Oxygenmgl"      "OxygenCons"    
    ## [17] "MetabolicLevel" "AppliedStress"  "DataRef"        "SwimmingSpeed" 
    ## [21] "Comment"        "Entered"        "DateEntered"    "Modified"      
    ## [25] "DateModified"   "Expert"         "DateChecked"    "TS"

\#\#popchar: Table of maximum length (Lmax), weight (Wmax) and age
(tmax)
\#\#<https://www.fishbase.in/manual/fishbasethe_popchar_table.htm>
\#\#there are multiple records for some species; to include we would
need to take averages \#\#

``` r
load("DF_intro.Rdata")
DF= DF_intro
species = DF$Species
for (a in 1:length(species)){
  tmp = data.frame(popchar(species_list = DF$Species[a]))
  # print(a)
  print(dim(tmp)[1])
}
```

    ## [1] 2
    ## [1] 4
    ## [1] 2
    ## [1] 5
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 5
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 2
    ## [1] 9
    ## [1] 9
    ## [1] 38
    ## [1] 38
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 5
    ## [1] 1
    ## [1] 4
    ## [1] 1
    ## [1] 1
    ## [1] 13
    ## [1] 2
    ## [1] 3
    ## [1] 6
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 9
    ## [1] 1
    ## [1] 7
    ## [1] 1
    ## [1] 6
    ## [1] 2
    ## [1] 7
    ## [1] 1
    ## [1] 4
    ## [1] 5
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 10
    ## [1] 1
    ## [1] 15
    ## [1] 15
    ## [1] 15
    ## [1] 15
    ## [1] 1
    ## [1] 3
    ## [1] 3
    ## [1] 4
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 5
    ## [1] 1
    ## [1] 3
    ## [1] 2
    ## [1] 4
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 6
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
a = 48
tmp = data.frame(popchar(species_list = DF$Species[a]))
head(tmp)
```

    ##   SpecCode               Species Autoctr Stockcode PopCharRefNo     Sex
    ## 1        2 Oreochromis niloticus      34         1            2 unsexed
    ## 2        2 Oreochromis niloticus      35         1           81 unsexed
    ## 3        2 Oreochromis niloticus      36         1           87 unsexed
    ## 4        2 Oreochromis niloticus      37         1        27445    male
    ## 5        2 Oreochromis niloticus      38         1        31148 unsexed
    ## 6        2 Oreochromis niloticus      40         1        46152 unsexed
    ##   SourceRef Wmax   TypeWeight Lmax Type tmax      Locality C_Code Entered
    ## 1        NA   NA         <NA>   64   TL   NA  to be filled   <NA>       1
    ## 2        NA   NA         <NA>   40   TL   NA  to be filled   <NA>       1
    ## 3        NA   NA         <NA>   52   TL   NA  to be filled   <NA>       1
    ## 4     27598   NA         <NA>   53   TL   NA    Lake Ihema    646       3
    ## 5     31148 2000 total weight   NA <NA>   NA   Lake Kainji    566       3
    ## 6        NA   NA         <NA>   49   TL   NA Not specified    646     309
    ##   DateEntered Modified DateModified Expert DateChecked Comments SameWL SameLt
    ## 1  1991-05-08        1   1997-02-16     NA        <NA>     <NA>      0      0
    ## 2  1991-05-08        1   1991-05-08     NA        <NA>     <NA>      0      0
    ## 3  1991-05-08        1   1991-05-08     NA        <NA>     <NA>      0      0
    ## 4  1998-11-11       NA   1998-11-11     NA        <NA>     <NA>      0      0
    ## 5  1998-08-08       NA   1998-08-08     NA        <NA>     <NA>      0      0
    ## 6  2003-03-18       NA   2003-03-18     NA        <NA>     <NA>      0      0
    ##   TS
    ## 1 NA
    ## 2 NA
    ## 3 NA
    ## 4 NA
    ## 5 NA
    ## 6 NA

``` r
names(tmp)
```

    ##  [1] "SpecCode"     "Species"      "Autoctr"      "Stockcode"    "PopCharRefNo"
    ##  [6] "Sex"          "SourceRef"    "Wmax"         "TypeWeight"   "Lmax"        
    ## [11] "Type"         "tmax"         "Locality"     "C_Code"       "Entered"     
    ## [16] "DateEntered"  "Modified"     "DateModified" "Expert"       "DateChecked" 
    ## [21] "Comments"     "SameWL"       "SameLt"       "TS"

\#\#popgrowth
\#\#<https://www.fishbase.in/manual/fishbasethe_popgrowth_table.htm>
\#\#multiple records for some species, e.g. for different sexes;

``` r
load("DF_intro.Rdata")
DF= DF_intro
species = DF$Species
for (a in 1:length(species)){
  tmp = data.frame(popgrowth(species_list = DF$Species[a]))
  # print(a)
  print(dim(tmp)[1])
}
```

    ## [1] 9
    ## [1] 6
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 9
    ## [1] 2
    ## [1] 4
    ## [1] 124
    ## [1] 124
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 58
    ## [1] 1
    ## [1] 1
    ## [1] 107
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 5
    ## [1] 1
    ## [1] 5
    ## [1] 2
    ## [1] 7
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 7
    ## [1] 30
    ## [1] 107
    ## [1] 107
    ## [1] 107
    ## [1] 107
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 8
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 16
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 30
    ## [1] 1
    ## [1] 6
    ## [1] 4
    ## [1] 1
    ## [1] 1
    ## [1] 12
    ## [1] 1
    ## [1] 1
    ## [1] 6
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
a = 48
tmp = data.frame(popgrowth(species_list = DF$Species[a]))
head(tmp)
```

    ##   SpecCode               Species AutoCtr StockCode E_CODE PopGrowthRef    Sex
    ## 1        2 Oreochromis niloticus       1         1     NA          102 female
    ## 2        2 Oreochromis niloticus       2         1     NA          102 female
    ## 3        2 Oreochromis niloticus       3         1     NA          102 female
    ## 4        2 Oreochromis niloticus       4         1     NA          102 female
    ## 5        2 Oreochromis niloticus       5         1     NA          102 female
    ## 6        2 Oreochromis niloticus       6         1     NA          102   male
    ##                 Data DataSourceRef  Loo Number r2 SE_Loo SD_Loo LCL_Loo UCL_Loo
    ## 1 direct observation           331 15.6     NA NA     NA     NA      NA      NA
    ## 2 direct observation           322 19.0     NA NA     NA     NA      NA      NA
    ## 3 direct observation           322 22.5     NA NA     NA     NA      NA      NA
    ## 4 direct observation           331 24.9     NA NA     NA     NA      NA      NA
    ## 5 direct observation           322 40.8     NA NA     NA     NA      NA      NA
    ## 6 direct observation           322 13.2     NA NA     NA     NA      NA      NA
    ##   AssumedDistLoo TLinfinity      K SE_K SD_K LCL_K UCL_K AssumedDistK to SE_to
    ## 1           <NA>     19.500  3.003   NA   NA    NA    NA         <NA> NA    NA
    ## 2           <NA>     23.750  4.789   NA   NA    NA    NA         <NA> NA    NA
    ## 3           <NA>     28.125  2.984   NA   NA    NA    NA         <NA> NA    NA
    ## 4           <NA>     31.125  1.572   NA   NA    NA    NA         <NA> NA    NA
    ## 5           <NA>     51.000  0.716   NA   NA    NA    NA         <NA> NA    NA
    ## 6           <NA>     16.500 13.207   NA   NA    NA    NA         <NA> NA    NA
    ##   SD_to LCL_to UCL_to Type                 MethodGrowth Winfinity LinfLmax
    ## 1    NA     NA     NA   SL         other method(s)/n.a.       151       -1
    ## 2    NA     NA     NA   SL other linearizations of VBGF       287       -1
    ## 3    NA     NA     NA   SL other linearizations of VBGF       455       -1
    ## 4    NA     NA     NA   SL other linearizations of VBGF       617       -1
    ## 5    NA     NA     NA   SL other linearizations of VBGF      2850        0
    ## 6    NA     NA     NA   SL other linearizations of VBGF       233       -1
    ##            Auxim LogKLogLoo SourceWinfinity b  C tmax tmaxRef tm  M MethodM
    ## 1 within ellipse    0.40026 as given in Ref 3 NA   NA      NA NA NA    <NA>
    ## 2 within ellipse    0.53196 as given in Ref 3 NA   NA      NA NA NA    <NA>
    ## 3 within ellipse    0.35114 as given in Ref 3 NA   NA      NA NA NA    <NA>
    ## 4 within ellipse    0.14071 as given in Ref 3 NA   NA      NA NA NA    <NA>
    ## 5 within ellipse   -0.09008 as given in Ref 3 NA   NA      NA NA NA    <NA>
    ## 6 within ellipse    1.00021 as given in Ref 3 NA   NA      NA NA NA    <NA>
    ##   Mquality MRef Number_M r2_M SE_M SD_M LCL_M UCL_M AssumedDistM Lm LmLoo LmSex
    ## 1     <NA>   NA       NA   NA   NA   NA    NA    NA           NA NA    NA  <NA>
    ## 2     <NA>   NA       NA   NA   NA   NA    NA    NA           NA NA    NA  <NA>
    ## 3     <NA>   NA       NA   NA   NA   NA    NA    NA           NA NA    NA  <NA>
    ## 4     <NA>   NA       NA   NA   NA   NA    NA    NA           NA NA    NA  <NA>
    ## 5     <NA>   NA       NA   NA   NA   NA    NA    NA           NA NA    NA  <NA>
    ## 6     <NA>   NA       NA   NA   NA   NA    NA    NA           NA NA    NA  <NA>
    ##   TypeLm unsexedRef LmMale LmLooMale LmFemale LmLooFemale Locality YearStart
    ## 1   <NA>         NA     NA        NA       NA          NA    tanks      1973
    ## 2   <NA>         NA     NA        NA       NA          NA    ponds      1981
    ## 3   <NA>         NA     NA        NA       NA          NA    tanks      1981
    ## 4   <NA>         NA     NA        NA       NA          NA    tanks      1973
    ## 5   <NA>         NA     NA        NA       NA          NA    ponds      1981
    ## 6   <NA>         NA     NA        NA       NA          NA    tanks      1981
    ##   YearEnd       YearRemark C_Code GrowthEnviron Temperature DeltaT TempRef Rm
    ## 1      NA publication year    140     captivity          NA     NA      NA NA
    ## 2      NA publication year    056     captivity          NA     NA      NA NA
    ## 3      NA publication year    056     captivity          NA     NA      NA NA
    ## 4      NA publication year    140     captivity          NA     NA      NA NA
    ## 5      NA publication year    056     captivity          NA     NA      NA NA
    ## 6      NA publication year    056     captivity          NA     NA      NA NA
    ##   Comment Comment2 Entered DateEntered Modified DateModified Expert DateChecked
    ## 1    <NA>     <NA>       2  1991-05-10        3   2013-02-13     NA        <NA>
    ## 2    <NA>     <NA>       2  1991-05-10        3   2013-02-13     NA        <NA>
    ## 3    <NA>     <NA>       2  1991-05-10        3   2013-02-13     NA        <NA>
    ## 4    <NA>     <NA>       2  1991-05-10        3   2013-02-13     NA        <NA>
    ## 5    <NA>     <NA>       2  1991-05-10        3   2013-02-13     NA        <NA>
    ## 6    <NA>     <NA>       2  1991-05-10        3   2013-02-13     NA        <NA>
    ##   TS
    ## 1 NA
    ## 2 NA
    ## 3 NA
    ## 4 NA
    ## 5 NA
    ## 6 NA

``` r
names(tmp)
```

    ##  [1] "SpecCode"        "Species"         "AutoCtr"         "StockCode"      
    ##  [5] "E_CODE"          "PopGrowthRef"    "Sex"             "Data"           
    ##  [9] "DataSourceRef"   "Loo"             "Number"          "r2"             
    ## [13] "SE_Loo"          "SD_Loo"          "LCL_Loo"         "UCL_Loo"        
    ## [17] "AssumedDistLoo"  "TLinfinity"      "K"               "SE_K"           
    ## [21] "SD_K"            "LCL_K"           "UCL_K"           "AssumedDistK"   
    ## [25] "to"              "SE_to"           "SD_to"           "LCL_to"         
    ## [29] "UCL_to"          "Type"            "MethodGrowth"    "Winfinity"      
    ## [33] "LinfLmax"        "Auxim"           "LogKLogLoo"      "SourceWinfinity"
    ## [37] "b"               "C"               "tmax"            "tmaxRef"        
    ## [41] "tm"              "M"               "MethodM"         "Mquality"       
    ## [45] "MRef"            "Number_M"        "r2_M"            "SE_M"           
    ## [49] "SD_M"            "LCL_M"           "UCL_M"           "AssumedDistM"   
    ## [53] "Lm"              "LmLoo"           "LmSex"           "TypeLm"         
    ## [57] "unsexedRef"      "LmMale"          "LmLooMale"       "LmFemale"       
    ## [61] "LmLooFemale"     "Locality"        "YearStart"       "YearEnd"        
    ## [65] "YearRemark"      "C_Code"          "GrowthEnviron"   "Temperature"    
    ## [69] "DeltaT"          "TempRef"         "Rm"              "Comment"        
    ## [73] "Comment2"        "Entered"         "DateEntered"     "Modified"       
    ## [77] "DateModified"    "Expert"          "DateChecked"     "TS"

\#\#popqb
\#\#<https://www.fishbase.se/manual/english/fishbasethe_popqb_table.htm>
\#\#population-based estimates of food consumption (i.e., estimates that
account for the age structure of populations) \#\#multiple responses for
some species. here there are two measures, popqb and maintenance qb.

``` r
load("DF_intro.Rdata")
DF= DF_intro
species = DF$Species
for (a in 1:length(species)){
  tmp = data.frame(popqb(species_list = DF$Species[a]))
  # print(a)
  print(dim(tmp)[1])
}
```

    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 5
    ## [1] 1
    ## [1] 1
    ## [1] 12
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 17
    ## [1] 17
    ## [1] 17
    ## [1] 17
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
a = 48
tmp = data.frame(popqb(species_list = DF$Species[a]))
head(tmp)
```

    ##   SpecCode               Species AutoCtr StockCode PopQBRefNo PopQB MaintQB
    ## 1        2 Oreochromis niloticus       1         1       2939  2.21    1.41
    ## 2        2 Oreochromis niloticus       2         1       2939  3.30    2.20
    ## 3        2 Oreochromis niloticus       3         1       2939  3.56    2.39
    ## 4        2 Oreochromis niloticus       4         1       2939  4.15    2.74
    ## 5        2 Oreochromis niloticus       5         1       2939  4.81    3.33
    ## 6        2 Oreochromis niloticus      17         1       2939 11.40    5.23
    ##   Winf    FoodType    K   Salinity     t0 Temperature Mortality     Locality b
    ## 1 2056 zooplankton 0.33 freshwater -0.450        28.5      0.78 Lake Koussou 3
    ## 2 5700      others 0.17 freshwater -0.820        28.5      0.46    Bouak<e9> 3
    ## 3 2495      others 0.33 freshwater -0.440        26.0      0.75       Africa 3
    ## 4 2495      others 0.33 freshwater -0.440        32.0      0.83         <NA> 3
    ## 5 2495      others 0.33 freshwater -0.440        27.0      0.75         <NA> 3
    ## 6   95      plants 7.30 freshwater -0.024        27.0      7.40         <NA> 3
    ##   C_Code
    ## 1    384
    ## 2    384
    ## 3   <NA>
    ## 4    764
    ## 5    764
    ## 6    764
    ##                                                                                                               QBRemarks
    ## 1                                          TL inf: 46.0 cm; W = 0.04125L^3^, A: 1.28; D: 0.457; P: 0.510 (Ref. 013343).
    ## 2                                            TL inf: 64.6 cm; A: 1.28; D:0.413; P: 0.562 (Ref. 13343). Dry pellet feed.
    ## 3 TL inf: 45.9 cm; A: 1.28; D: 0.413; P: 0.562 (Ref. 013343). Mean estimate for an African population. Dry pellet feed.
    ## 4  TL inf: 45.9 cm; A: 1.28; D: 0.457; P: 0.510 (Ref. 013343). Mean estimate for a natural population. Dry pellet feed.
    ## 5  TL inf: 45.9 cm; A: 1.28; D: 0.457; P: 0.510 (Ref. 013343). Mean estimate for a natural population. Dry pellet feed.
    ## 6                      TL inf: 16.3 cm; A: 1.28; D: 0.413; P: 0.562 (Ref. 013343). Mean estimate from tank experiments.
    ##   Entered DateEntered Modified DateModified Expert DateChecked TS
    ## 1      21  1992-11-10     2495   2017-06-08     NA          NA NA
    ## 2      21  1992-11-10       34   1998-07-01     NA          NA NA
    ## 3      21  1992-11-10       34   1998-07-01     NA          NA NA
    ## 4      21  1992-11-11       34   1998-07-01     NA          NA NA
    ## 5      21  1992-11-11       34   1998-07-01     NA          NA NA
    ## 6      21  1992-11-10      293   2017-06-08     NA          NA NA

``` r
names(tmp)
```

    ##  [1] "SpecCode"     "Species"      "AutoCtr"      "StockCode"    "PopQBRefNo"  
    ##  [6] "PopQB"        "MaintQB"      "Winf"         "FoodType"     "K"           
    ## [11] "Salinity"     "t0"           "Temperature"  "Mortality"    "Locality"    
    ## [16] "b"            "C_Code"       "QBRemarks"    "Entered"      "DateEntered" 
    ## [21] "Modified"     "DateModified" "Expert"       "DateChecked"  "TS"

\#\#predators
\#\#<https://www.fishbase.se/manual/English/fishbasethe_predators_table.htm>

``` r
load("DF_intro.Rdata")
DF= DF_intro
species = DF$Species
out = NULL
out_mammal = NULL
DF$predator_mammals = NA
for (a in 1:length(species)){
  tmp = data.frame(predators(species_list = DF$Species[a]))
  tmp = subset(tmp, !is.na(PredatorI))
  if (dim(tmp)[1]>0){
      DF$predator_count[a] = dim(tmp)[1]
      tmp_mammal = subset(tmp, PredatorI == "mammals")
      DF$predator_mammals[a]= dim(tmp_mammal)[1]    
      out_mammal = rbind(out_mammal, tmp_mammal)
  }
  out = rbind(out, tmp)
}

m <- lm(haddock_score_mean ~ predator_mammals, data = DF, na.action = na.omit)
summary(m)
```

    ## 
    ## Call:
    ## lm(formula = haddock_score_mean ~ predator_mammals, data = DF, 
    ##     na.action = na.omit)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -18.064  -5.639  -1.871   8.758  18.412 
    ## 
    ## Coefficients:
    ##                  Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)      -138.812      1.824 -76.116   <2e-16 ***
    ## predator_mammals    2.037      1.226   1.661    0.107    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 9.828 on 31 degrees of freedom
    ##   (43 observations deleted due to missingness)
    ## Multiple R-squared:  0.08176,    Adjusted R-squared:  0.05214 
    ## F-statistic:  2.76 on 1 and 31 DF,  p-value: 0.1067

``` r
DF_predator = DF
save(DF_predator, file = "DF_predator.Rdata")
a = 2
tmp = data.frame(predators(species_list = DF$Species[a]))
head(tmp)
```

    ##   SpecCode           Species autoctr StockCode PredatsRefNo
    ## 1     2565 Amblyraja radiata    4009      2761        42288
    ## 2     2565 Amblyraja radiata    4266      2761        42288
    ## 3     2565 Amblyraja radiata    4265      2761        42288
    ## 4     2565 Amblyraja radiata    2235      2761         9023
    ##                          Locality C_Code Predatstage PredatorI  PredatorII
    ## 1 Nordliche Slickbank, June 1994.    208 juv./adults  mollusks  gastropods
    ## 2      Nordliche Slickbank, 1994.    208 juv./adults  mollusks  gastropods
    ## 3      Nordliche Slickbank, 1994.    208 juv./adults  mollusks  gastropods
    ## 4      Barents and Norwegian Seas   <NA> juv./adults   finfish sharks/rays
    ##     PreyStage      PredatorGroup DietP StomachContent
    ## 1        eggs Muricid gastropods    NA           <NA>
    ## 2        eggs          Muricidae    NA           <NA>
    ## 3        eggs          Naticidae    NA           <NA>
    ## 4 juv./adults            Rajidae    NA           <NA>
    ##                     PredatorName Predatcode AlphaCode MaxLength MaxLengthType
    ## 1                   unidentified         NA        NA        NA          <NA>
    ## 2 unidentified muricid gastropod         NA        NA        NA          <NA>
    ## 3 unidentified naticid gastropod         NA        NA        NA          <NA>
    ## 4              Amblyraja radiata       2565        NA        NA          <NA>
    ##   PredatTroph PredatseTroph PredatRef
    ## 1          NA            NA        NA
    ## 2          NA            NA        NA
    ## 3          NA            NA        NA
    ## 4          NA            NA        NA
    ##                                                                                                                                                                                         Remarks
    ## 1 Positive identification of Amblyraja radiata egg predators must await investigation of known oviposition sites along with controlled experimental studies of\r\npredator-prey encounters.\r\n
    ## 2       Positive identification of the egg predator(s) must await investigation of known oviposition sites along with controlled experimental studies of predator-prey encounters (Ref. 42288).
    ## 3       Positive identification of the egg predator(s) must await investigation of known oviposition sites along with controlled experimental studies of predator-prey encounters (Ref. 42288).
    ## 4                                                                                                                                                                                          <NA>
    ##   Entered DateEntered Modified        DateModified Expert DateChecked TS
    ## 1      34  2002-08-19       34 2002-08-19 17:04:08     NA        <NA> NA
    ## 2      34  2002-11-05       NA 2002-11-05 00:00:00     NA        <NA> NA
    ## 3      34  2002-11-05       NA 2002-11-05 00:00:00     NA        <NA> NA
    ## 4      34  1995-03-17       34 2002-08-26 21:54:51     NA        <NA> NA

``` r
names(tmp)
```

    ##  [1] "SpecCode"       "Species"        "autoctr"        "StockCode"     
    ##  [5] "PredatsRefNo"   "Locality"       "C_Code"         "Predatstage"   
    ##  [9] "PredatorI"      "PredatorII"     "PreyStage"      "PredatorGroup" 
    ## [13] "DietP"          "StomachContent" "PredatorName"   "Predatcode"    
    ## [17] "AlphaCode"      "MaxLength"      "MaxLengthType"  "PredatTroph"   
    ## [21] "PredatseTroph"  "PredatRef"      "Remarks"        "Entered"       
    ## [25] "DateEntered"    "Modified"       "DateModified"   "Expert"        
    ## [29] "DateChecked"    "TS"

``` r
table(out_mammal$PredatorName)
```

    ## 
    ## Balaenoptera acutorostrata         Halichoerus grypus 
    ##                          1                          3 
    ##                Lutra lutra         Phoca groenlandica 
    ##                          1                          3 
    ##             Phoca vitulina          Phocoena phocoena 
    ##                          4                          3 
    ##         Tursiops truncatus               unidentified 
    ##                          1                          1

``` r
plot <- ggplot(data = DF_predator, aes(x = predator_mammals, y = haddock_score_mean))+
  geom_point()+
  geom_smooth()
plot
```

    ## `geom_smooth()` using method = 'loess' and formula 'y ~ x'

    ## Warning: Removed 43 rows containing non-finite values (stat_smooth).

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : at -0.03

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : radius 0.0009

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : all data on boundary of neighborhood. make span bigger

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : pseudoinverse used at -0.03

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : neighborhood radius 0.03

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : reciprocal condition number 1

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : zero-width neighborhood. make span bigger

    ## Warning: Computation failed in `stat_smooth()`:
    ## NA/NaN/Inf in foreign function call (arg 5)

    ## Warning: Removed 43 rows containing missing values (geom_point).

![](fishbase_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

``` r
m <- lm(haddock_score_mean ~ predator_count, data = DF_predator, na.action = na.omit)
summary(m)
```

    ## 
    ## Call:
    ## lm(formula = haddock_score_mean ~ predator_count, data = DF_predator, 
    ##     na.action = na.omit)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -29.860  -6.454  -1.508   8.248  29.406 
    ## 
    ## Coefficients:
    ##                 Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)    -138.1097     1.3826 -99.889   <2e-16 ***
    ## predator_count    0.1542     0.1351   1.141    0.257    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 10.8 on 74 degrees of freedom
    ## Multiple R-squared:  0.0173, Adjusted R-squared:  0.004022 
    ## F-statistic: 1.303 on 1 and 74 DF,  p-value: 0.2574

\#\#ration \#\#�ration� (Rd) pertains to an estimate of daily food
consumption by fish of a specific size
\#\#<https://www.fishbase.in/manual/fishbasethe_ration_table.htm>
\#\#multiple rows for some species

``` r
load("DF_predator.Rdata")
DF= DF_predator
species = DF$Species
out = NULL
for (a in 1:length(species)){
  tmp = data.frame(ration(species_list = DF$Species[a]))
  print(dim(tmp)[1])
}
```

    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 24
    ## [1] 1
    ## [1] 1
    ## [1] 27
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 38
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
names(tmp)
```

    ##  [1] "SpecCode"          "Species"           "AutoCtr"          
    ##  [4] "StockCode"         "RDRefNo"           "DataRef1"         
    ##  [7] "EvacRate1"         "FoodI"             "Rd1"              
    ## [10] "FoodII"            "GCE"               "FoodName"         
    ## [13] "TBW"               "Water"             "Locality"         
    ## [16] "Salinity"          "C_Code"            "ComRDK1"          
    ## [19] "MethRDEvacRef"     "EvacRate2"         "FeedBegin1"       
    ## [22] "FeedBegin2"        "RD2"               "FeedStop1"        
    ## [25] "FeedStop2"         "DailyFeedingCycle" "Comment"          
    ## [28] "Entered"           "DateEntered"       "Modified"         
    ## [31] "DateModified"      "Expert"            "DateChecked"      
    ## [34] "TS"

\#\#reproduction
\#\#<https://www.fishbase.in/manual/fishbasethe_reproduction_table.htm>
\#\#only one row per species for these HADDOCK species; adding these
fields

``` r
load("DF_predator.Rdata")
DF= DF_predator
species = DF$Species
out = NULL
for (a in 1:length(species)){
  tmp = data.frame(reproduction(species_list = DF$Species[a]))
  # print(dim(tmp)[1])

      ind_species =which(names(tmp) == "Species")
  inds_new = setdiff(seq(1,dim(tmp)[2]), ind_species)
  names(tmp)[inds_new]= paste0(names(tmp)[inds_new], 
                                       "_reproduction")
  tmp = merge(DF[a,], tmp)
  out = rbind(out, tmp)
}
names(tmp)
```

    ##   [1] "Species"                      "haddock_score_mean"          
    ##   [3] "haddock_score_sd"             "Order"                       
    ##   [5] "Class"                        "Species_ACE2"                
    ##   [7] "brain_body_ratio"             "SpecCode_ecology"            
    ##   [9] "autoctr_ecology"              "StockCode_ecology"           
    ##  [11] "EcologyRefNo_ecology"         "HabitatsRef_ecology"         
    ##  [13] "Neritic_ecology"              "SupraLittoralZone_ecology"   
    ##  [15] "Saltmarshes_ecology"          "LittoralZone_ecology"        
    ##  [17] "TidePools_ecology"            "Intertidal_ecology"          
    ##  [19] "SubLittoral_ecology"          "Caves_ecology"               
    ##  [21] "Oceanic_ecology"              "Epipelagic_ecology"          
    ##  [23] "Mesopelagic_ecology"          "Bathypelagic_ecology"        
    ##  [25] "Abyssopelagic_ecology"        "Hadopelagic_ecology"         
    ##  [27] "Estuaries_ecology"            "Mangroves_ecology"           
    ##  [29] "MarshesSwamps_ecology"        "CaveAnchialine_ecology"      
    ##  [31] "Stream_ecology"               "Lakes_ecology"               
    ##  [33] "Cave_ecology"                 "Cave2_ecology"               
    ##  [35] "Herbivory2_ecology"           "HerbivoryRef_ecology"        
    ##  [37] "FeedingType_ecology"          "FeedingTypeRef_ecology"      
    ##  [39] "DietTroph_ecology"            "DietSeTroph_ecology"         
    ##  [41] "DietTLu_ecology"              "DietseTLu_ecology"           
    ##  [43] "DietRemark_ecology"           "DietRef_ecology"             
    ##  [45] "FoodTroph_ecology"            "FoodSeTroph_ecology"         
    ##  [47] "FoodRemark_ecology"           "FoodRef_ecology"             
    ##  [49] "AddRems_ecology"              "AssociationRef_ecology"      
    ##  [51] "Parasitism_ecology"           "Solitary_ecology"            
    ##  [53] "Symbiosis_ecology"            "Symphorism_ecology"          
    ##  [55] "Commensalism_ecology"         "Mutualism_ecology"           
    ##  [57] "Epiphytic_ecology"            "Schooling_ecology"           
    ##  [59] "SchoolingFrequency_ecology"   "SchoolingLifestage_ecology"  
    ##  [61] "Shoaling_ecology"             "ShoalingFrequency_ecology"   
    ##  [63] "ShoalingLifestage_ecology"    "SchoolShoalRef_ecology"      
    ##  [65] "AssociationsWith_ecology"     "AssociationsRemarks_ecology" 
    ##  [67] "OutsideHost_ecology"          "OHRemarks_ecology"           
    ##  [69] "InsideHost_ecology"           "IHRemarks_ecology"           
    ##  [71] "SubstrateRef_ecology"         "Benthic_ecology"             
    ##  [73] "Sessile_ecology"              "Mobile_ecology"              
    ##  [75] "Demersal_ecology"             "Endofauna_ecology"           
    ##  [77] "Pelagic_ecology"              "Megabenthos_ecology"         
    ##  [79] "Macrobenthos_ecology"         "Meiobenthos_ecology"         
    ##  [81] "SoftBottom_ecology"           "Sand_ecology"                
    ##  [83] "Coarse_ecology"               "Fine_ecology"                
    ##  [85] "Level_ecology"                "Sloping_ecology"             
    ##  [87] "Silt_ecology"                 "Mud_ecology"                 
    ##  [89] "Ooze_ecology"                 "Detritus_ecology"            
    ##  [91] "Organic_ecology"              "HardBottom_ecology"          
    ##  [93] "Rocky_ecology"                "Rubble_ecology"              
    ##  [95] "Gravel_ecology"               "SpecialHabitatRef_ecology"   
    ##  [97] "Macrophyte_ecology"           "BedsBivalve_ecology"         
    ##  [99] "BedsRock_ecology"             "SeaGrassBeds_ecology"        
    ## [101] "BedsOthers_ecology"           "CoralReefs_ecology"          
    ## [103] "ReefExclusive_ecology"        "DropOffs_ecology"            
    ## [105] "ReefFlats_ecology"            "Lagoons_ecology"             
    ## [107] "Burrows_ecology"              "Tunnels_ecology"             
    ## [109] "Crevices_ecology"             "Vents_ecology"               
    ## [111] "Seamounts_ecology"            "DeepWaterCorals_ecology"     
    ## [113] "Vegetation_ecology"           "Leaves_ecology"              
    ## [115] "Stems_ecology"                "Roots_ecology"               
    ## [117] "Driftwood_ecology"            "OInverterbrates_ecology"     
    ## [119] "OIRemarks_ecology"            "Verterbrates_ecology"        
    ## [121] "VRemarks_ecology"             "Pilings_ecology"             
    ## [123] "BoatHulls_ecology"            "Corals_ecology"              
    ## [125] "SoftCorals_ecology"           "OnPolyp_ecology"             
    ## [127] "BetweenPolyps_ecology"        "HardCorals_ecology"          
    ## [129] "OnExoskeleton_ecology"        "InterstitialSpaces_ecology"  
    ## [131] "Entered_ecology"              "Dateentered_ecology"         
    ## [133] "Modified_ecology"             "Datemodified_ecology"        
    ## [135] "Expert_ecology"               "Datechecked_ecology"         
    ## [137] "TS_ecology"                   "SpecCode_estimate"           
    ## [139] "MaxLengthTL_estimate"         "TLObserved_estimate"         
    ## [141] "Troph_estimate"               "seTroph_estimate"            
    ## [143] "TrophObserved_estimate"       "TrophPredicted_estimate"     
    ## [145] "seTrophPredicted_estimate"    "a_estimate"                  
    ## [147] "sd_log10a_estimate"           "b_estimate"                  
    ## [149] "sd_b_estimate"                "Method_ab_estimate"          
    ## [151] "prior_r_estimate"             "lcl_r_estimate"              
    ## [153] "ucl_r_estimate"               "n_r_estimate"                
    ## [155] "Comment_r_estimate"           "K_estimate"                  
    ## [157] "SD_logK_estimate"             "Linf_estimate"               
    ## [159] "SD_logLinf_estimate"          "Winf_estimate"               
    ## [161] "LengthType_estimate"          "ComDepthMin_estimate"        
    ## [163] "ComDepthMax_estimate"         "ComDepMinObserved_estimate"  
    ## [165] "ComDepMaxObserved_estimate"   "DepthMin_estimate"           
    ## [167] "DepthMax_estimate"            "DepthMinEstimate_estimate"   
    ## [169] "DepthMaxEstimate_estimate"    "PredPreyRatioMin_estimate"   
    ## [171] "PredPreyRatioMax_estimate"    "AgeMin_estimate"             
    ## [173] "AgeMax_estimate"              "TempPrefMin_estimate"        
    ## [175] "TempPrefMean_estimate"        "TempPrefMax_estimate"        
    ## [177] "nCells_estimate"              "LastModified_estimate"       
    ## [179] "MaxLengthSL_estimate"         "KObserved_estimate"          
    ## [181] "introductions_count"          "predator_mammals"            
    ## [183] "predator_count"               "SpecCode_reproduction"       
    ## [185] "autoctr_reproduction"         "StockCode_reproduction"      
    ## [187] "ReproducRefNo_reproduction"   "ReproMode_reproduction"      
    ## [189] "Fertilization_reproduction"   "MatingSystem_reproduction"   
    ## [191] "MonogamyType_reproduction"    "MatingRefNo_reproduction"    
    ## [193] "MatingQuality_reproduction"   "SpawnAgg_reproduction"       
    ## [195] "SpawnAggRef_reproduction"     "Spawning_reproduction"       
    ## [197] "BatchSpawner_reproduction"    "SpawnModRef_reproduction"    
    ## [199] "RepGuild1_reproduction"       "RepGuild2_reproduction"      
    ## [201] "ParentalCare_reproduction"    "ParentalCareQ_reproduction"  
    ## [203] "ParentalCareRef_reproduction" "RepAquarium_reproduction"    
    ## [205] "RepAquaRef_reproduction"      "Entered_reproduction"        
    ## [207] "DateEntered_reproduction"     "Modified_reproduction"       
    ## [209] "DateModified_reproduction"    "Expert_reproduction"         
    ## [211] "DateChecked_reproduction"     "AddInfos_reproduction"       
    ## [213] "TS_reproduction"

``` r
out[1:2,]
```

    ##                       Species haddock_score_mean haddock_score_sd       Order
    ## 1 Acanthochromis polyacanthus          -120.6537         1.826514 Perciformes
    ## 2           Amblyraja radiata          -127.1368         2.583981  Rajiformes
    ##            Class                Species_ACE2 brain_body_ratio SpecCode_ecology
    ## 1 Actinopterygii Acanthochromis polyacanthus               NA             6655
    ## 2 Elasmobranchii           Amblyraja radiata          2.30154             2565
    ##   autoctr_ecology StockCode_ecology EcologyRefNo_ecology HabitatsRef_ecology
    ## 1            3921              6975                 9137                9137
    ## 2            1725              2761                 9023               12223
    ##   Neritic_ecology SupraLittoralZone_ecology Saltmarshes_ecology
    ## 1               0                         0                   0
    ## 2               0                         0                   0
    ##   LittoralZone_ecology TidePools_ecology Intertidal_ecology SubLittoral_ecology
    ## 1                    0                 0                 -1                   0
    ## 2                    0                 0                  0                   0
    ##   Caves_ecology Oceanic_ecology Epipelagic_ecology Mesopelagic_ecology
    ## 1             0              -1                  0                   0
    ## 2             0              -1                  0                   0
    ##   Bathypelagic_ecology Abyssopelagic_ecology Hadopelagic_ecology
    ## 1                    0                     0                   0
    ## 2                    0                     0                   0
    ##   Estuaries_ecology Mangroves_ecology MarshesSwamps_ecology
    ## 1                -1                 0                     0
    ## 2                 0                 0                     0
    ##   CaveAnchialine_ecology Stream_ecology Lakes_ecology Cave_ecology
    ## 1                      0              0             0            0
    ## 2                      0              0             0            0
    ##   Cave2_ecology                 Herbivory2_ecology HerbivoryRef_ecology
    ## 1             0 mainly animals (troph. 2.8 and up)                 9137
    ## 2             0 mainly animals (troph. 2.8 and up)                 9023
    ##             FeedingType_ecology FeedingTypeRef_ecology DietTroph_ecology
    ## 1    selective plankton feeding                   9137                NA
    ## 2 hunting macrofauna (predator)                     NA               4.2
    ##   DietSeTroph_ecology DietTLu_ecology DietseTLu_ecology
    ## 1                  NA              NA                NA
    ## 2               0.268            3.89              0.58
    ##                DietRemark_ecology DietRef_ecology FoodTroph_ecology
    ## 1                            <NA>              NA              2.69
    ## 2 Troph of adults from 5 studies.           37969              3.49
    ##   FoodSeTroph_ecology
    ## 1                0.30
    ## 2                0.56
    ##                                                                           FoodRemark_ecology
    ## 1 Trophic level estimated from a number of food items using a randomized resampling routine.
    ## 2 Trophic level estimated from a number of food items using a randomized resampling routine.
    ##   FoodRef_ecology
    ## 1              NA
    ## 2              NA
    ##                                                                                                                                                                                                                                                                                             AddRems_ecology
    ## 1                                                                                                                                                                                 Inhabits inshore and offshore coral reefs (Ref. 9710).  Also found in harbors, lagoons and outer reef slopes (Ref. 7247).
    ## 2 A boreal to arctic species, living offshore on hard and soft bottoms at temperatures of -1.4-14<b0>C.  Parasites of the species include 3 protozoans, 1 turbellarian, 1 monogenean, 1 trematode, 10 cestodes, 5 nematodes and 4 copepods, found on the skin, digestive tract and body cavity (Ref. 5951).
    ##   AssociationRef_ecology Parasitism_ecology Solitary_ecology Symbiosis_ecology
    ## 1                     NA                  0                0                 0
    ## 2                     NA                  0                0                 0
    ##   Symphorism_ecology Commensalism_ecology Mutualism_ecology Epiphytic_ecology
    ## 1                  0                    0                 0                 0
    ## 2                  0                    0                 0                 0
    ##   Schooling_ecology SchoolingFrequency_ecology SchoolingLifestage_ecology
    ## 1                 0                       <NA>                       <NA>
    ## 2                 0                       <NA>                       <NA>
    ##   Shoaling_ecology ShoalingFrequency_ecology ShoalingLifestage_ecology
    ## 1                0                      <NA>                      <NA>
    ## 2               -1                 sometimes            only juveniles
    ##   SchoolShoalRef_ecology AssociationsWith_ecology
    ## 1                     NA                     <NA>
    ## 2                  49751                     <NA>
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           AssociationsRemarks_ecology
    ## 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <NA>
    ## 2 Seasonal shoaling of juveniles assumed from bulk catch with great concentrations of juveniles found throughout the Gulf of Maine, Massachusetts Bay, the Bay of Fundy, the Scotian Shelf, and the perimeter of Georges Bank during spring and fall seasons; both the spring and fall 1978-2002 Massachusetts inshore trawl surveys show concentrations of juvenile thorny skate around Cape Ann and into Massachusetts Bay, and in Cape Cod Bay (Ref. 49751). Based on tagging experiments, does not appear to make seasonal migrations; known to be rather sedentary (Ref. 86779).
    ##   OutsideHost_ecology OHRemarks_ecology InsideHost_ecology IHRemarks_ecology
    ## 1                   0              <NA>                  0              <NA>
    ## 2                   0              <NA>                  0              <NA>
    ##   SubstrateRef_ecology Benthic_ecology Sessile_ecology Mobile_ecology
    ## 1                   NA               0               0              0
    ## 2                   NA               0               0              0
    ##   Demersal_ecology Endofauna_ecology Pelagic_ecology Megabenthos_ecology
    ## 1                0                 0               0                   0
    ## 2                0                 0               0                   0
    ##   Macrobenthos_ecology Meiobenthos_ecology SoftBottom_ecology Sand_ecology
    ## 1                    0                   0                  0            0
    ## 2                    0                   0                  0            0
    ##   Coarse_ecology Fine_ecology Level_ecology Sloping_ecology Silt_ecology
    ## 1              0            0             0               0            0
    ## 2              0            0             0               0            0
    ##   Mud_ecology Ooze_ecology Detritus_ecology Organic_ecology HardBottom_ecology
    ## 1           0            0                0               0                  0
    ## 2           0            0                0               0                  0
    ##   Rocky_ecology Rubble_ecology Gravel_ecology SpecialHabitatRef_ecology
    ## 1             0              0              0                     58534
    ## 2             0              0              0                        NA
    ##   Macrophyte_ecology BedsBivalve_ecology BedsRock_ecology SeaGrassBeds_ecology
    ## 1                  0                   0                0                    0
    ## 2                  0                   0                0                    0
    ##   BedsOthers_ecology CoralReefs_ecology ReefExclusive_ecology DropOffs_ecology
    ## 1                  0                 -1                     0                0
    ## 2                  0                  0                     0                0
    ##   ReefFlats_ecology Lagoons_ecology Burrows_ecology Tunnels_ecology
    ## 1                 0               0               0               0
    ## 2                 0               0               0               0
    ##   Crevices_ecology Vents_ecology Seamounts_ecology DeepWaterCorals_ecology
    ## 1                0             0                 0                       0
    ## 2                0             0                 0                       0
    ##   Vegetation_ecology Leaves_ecology Stems_ecology Roots_ecology
    ## 1                  0              0             0             0
    ## 2                  0              0             0             0
    ##   Driftwood_ecology OInverterbrates_ecology OIRemarks_ecology
    ## 1                 0                       0              <NA>
    ## 2                 0                       0              <NA>
    ##   Verterbrates_ecology VRemarks_ecology Pilings_ecology BoatHulls_ecology
    ## 1                    0               NA               0                 0
    ## 2                    0               NA               0                 0
    ##   Corals_ecology SoftCorals_ecology OnPolyp_ecology BetweenPolyps_ecology
    ## 1              0                  0               0                     0
    ## 2              0                  0               0                     0
    ##   HardCorals_ecology OnExoskeleton_ecology InterstitialSpaces_ecology
    ## 1                  0                     0                          0
    ## 2                  0                     0                          0
    ##   Entered_ecology Dateentered_ecology Modified_ecology Datemodified_ecology
    ## 1             574          2001-07-07             1472           2008-12-22
    ## 2              34          1995-03-20             2374           2014-02-05
    ##   Expert_ecology Datechecked_ecology TS_ecology SpecCode_estimate
    ## 1             NA                <NA>         NA              6655
    ## 2             NA                <NA>         NA              2565
    ##   MaxLengthTL_estimate TLObserved_estimate Troph_estimate seTroph_estimate
    ## 1                   14                   0           2.69            0.300
    ## 2                  105                   0           4.20            0.268
    ##   TrophObserved_estimate TrophPredicted_estimate seTrophPredicted_estimate
    ## 1                      0                      NA                        NA
    ## 2                      0                      NA                        NA
    ##   a_estimate sd_log10a_estimate b_estimate sd_b_estimate
    ## 1  0.0269153             0.1260       3.04        0.0756
    ## 2  0.0057544             0.0632       3.09        0.0421
    ##                                  Method_ab_estimate prior_r_estimate
    ## 1 LWR estimates for this species & (Sub)family-body               NA
    ## 2                    LWR estimates for this species               NA
    ##   lcl_r_estimate ucl_r_estimate n_r_estimate Comment_r_estimate K_estimate
    ## 1             NA             NA           NA               <NA>       1.05
    ## 2             NA             NA           NA               <NA>       0.11
    ##   SD_logK_estimate Linf_estimate SD_logLinf_estimate Winf_estimate
    ## 1               NA            NA                  NA            NA
    ## 2               NA            NA                  NA            NA
    ##   LengthType_estimate ComDepthMin_estimate ComDepthMax_estimate
    ## 1                  NA                    4                   20
    ## 2                  NA                   25                  440
    ##   ComDepMinObserved_estimate ComDepMaxObserved_estimate DepthMin_estimate
    ## 1                          0                          0                 1
    ## 2                          0                          0                 5
    ##   DepthMax_estimate DepthMinEstimate_estimate DepthMaxEstimate_estimate
    ## 1                65                         0                         0
    ## 2              1540                         0                         0
    ##   PredPreyRatioMin_estimate PredPreyRatioMax_estimate AgeMin_estimate
    ## 1                  19.04680                  798.4350              NA
    ## 2                   3.41168                   87.7814            3.49
    ##   AgeMax_estimate TempPrefMin_estimate TempPrefMean_estimate
    ## 1              NA                 25.1                  27.8
    ## 2              28                 -0.8                   1.0
    ##   TempPrefMax_estimate nCells_estimate LastModified_estimate
    ## 1                 28.9             458            2019-04-24
    ## 2                  5.0             340            2019-04-24
    ##   MaxLengthSL_estimate KObserved_estimate introductions_count predator_mammals
    ## 1                 9.33                  0                   1                0
    ## 2                86.10                  0                   1                0
    ##   predator_count SpecCode_reproduction autoctr_reproduction
    ## 1              1                  6655                 3674
    ## 2              4                  2565                 1425
    ##   StockCode_reproduction ReproducRefNo_reproduction ReproMode_reproduction
    ## 1                   6975                        205               dioecism
    ## 2                   2761                       3167               dioecism
    ##   Fertilization_reproduction MatingSystem_reproduction
    ## 1                   external                  monogamy
    ## 2         internal (oviduct)                      <NA>
    ##   MonogamyType_reproduction MatingRefNo_reproduction MatingQuality_reproduction
    ## 1                  obligate                    52284                          1
    ## 2                      <NA>                       NA                         NA
    ##   SpawnAgg_reproduction SpawnAggRef_reproduction Spawning_reproduction
    ## 1                     0                       NA                  <NA>
    ## 2                     0                       NA                  <NA>
    ##   BatchSpawner_reproduction SpawnModRef_reproduction RepGuild1_reproduction
    ## 1                         0                       NA               guarders
    ## 2                         0                       NA            nonguarders
    ##                 RepGuild2_reproduction ParentalCare_reproduction
    ## 1                              nesters                  paternal
    ## 2 open water/substratum egg scatterers                      none
    ##   ParentalCareQ_reproduction ParentalCareRef_reproduction
    ## 1                          1                          205
    ## 2                          3                           NA
    ##   RepAquarium_reproduction RepAquaRef_reproduction Entered_reproduction
    ## 1                     <NA>                      NA                    2
    ## 2                     <NA>                      NA                  113
    ##   DateEntered_reproduction Modified_reproduction DateModified_reproduction
    ## 1               2005-08-01                     2                2017-07-05
    ## 2               1999-11-16                     2                2017-07-18
    ##   Expert_reproduction DateChecked_reproduction
    ## 1                  NA                     <NA>
    ## 2                  NA                     <NA>
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             AddInfos_reproduction
    ## 1                                                                                                                                                                                                                             Oviparous, distinct pairing during breeding (Ref. 205).   Monogamous mating is observed as both obligate and genetic (Ref. 52884). Eggs are demersal and adhere to the substrate (Ref. 205).  Males guard and aerate the eggs (Ref. 205). Does not have a juvenile bisexual phase and all males have the typical testicular morphology of gonochores (Ref. 103751).
    ## 2 Distinct pairing with embrace. Oviparous, laying 10-45 egg cases each year (Ref. 44869, 41305). Eggs are oblong capsules with stiff pointed horns at the corners deposited in sandy or muddy flats (Ref. 205). Egg capsules are 3.4-8.9 cm long and 2.3-6.8 cm wide (Ref. 41250). Paired eggs are laid. Embryos feed solely on yolk (Ref. 50449). In the North Sea, fully formed individuals hatch after 4 months and pups are about 8-11 cm in length (Ref. 44869, 37969). In the Barents Sea, low water temperature may lengthen embryonic development time to 2.5-3 years (Ref. 44869). \r\n
    ##   TS_reproduction
    ## 1              NA
    ## 2              NA

``` r
DF_reproduction = out
save(DF_reproduction, file = "DF_reproduction.Rdata")
```

\#\#spawning
\#\#<https://www.fishbase.in/manual/fishbasethe_spawning_table.htm>
\#\#multiple rows per species, for different localities

``` r
load("DF_reproduction.Rdata")
DF= DF_reproduction
species = DF$Species
out = NULL
for (a in 1:length(species)){
  tmp = data.frame(spawning(species_list = DF$Species[a]))
  print(dim(tmp)[1])
  out = rbind(out, tmp)
}
```

    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 5
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 6
    ## [1] 14
    ## [1] 61
    ## [1] 61
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 11
    ## [1] 1
    ## [1] 1
    ## [1] 31
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 8
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 6
    ## [1] 6
    ## [1] 6
    ## [1] 6
    ## [1] 6
    ## [1] 6
    ## [1] 1
    ## [1] 3
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 17
    ## [1] 3
    ## [1] 3
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 3
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
names(tmp)
```

    ##  [1] "SpecCode"           "Species"            "autoctr"           
    ##  [4] "StockCode"          "SpawningRefNo"      "SourceRef"         
    ##  [7] "C_Code"             "E_CODE"             "SpawningGround"    
    ## [10] "Spawningarea"       "Jan"                "Feb"               
    ## [13] "Mar"                "Apr"                "May"               
    ## [16] "Jun"                "Jul"                "Aug"               
    ## [19] "Sep"                "Oct"                "Nov"               
    ## [22] "Dec"                "GSI"                "PercentFemales"    
    ## [25] "TempLow"            "TempHigh"           "SexRatiomid"       
    ## [28] "SexRmodRef"         "FecundityMin"       "WeightMin"         
    ## [31] "LengthFecunMin"     "LengthTypeFecMin"   "FecundityRef"      
    ## [34] "FecundityMax"       "WeightMax"          "LengthFecunMax"    
    ## [37] "LengthTypeFecMax"   "FecComment"         "SpawningCycles"    
    ## [40] "SpCycleRef"         "GestationMin"       "GestationMinRef"   
    ## [43] "GestationMax"       "GestationMaxRef"    "LengthOffspringMin"
    ## [46] "LengthOffMinRef"    "LengthOffspringMax" "LengthOffMaxRef"   
    ## [49] "RelFecundityMin"    "FecunMinRef"        "RelFecundityMean"  
    ## [52] "FecunMeanRef"       "RelFecundityMax"    "FecunMaxRef"       
    ## [55] "LengthMin"          "LengthMax"          "LengthType"        
    ## [58] "Number"             "a"                  "b"                 
    ## [61] "CorrCoeff"          "Dailyspawnmin"      "SpawnMinRef"       
    ## [64] "Dailyspawnmean"     "SpawnMeanRef"       "Dailyspawnmax"     
    ## [67] "SpawnMaxRef"        "Entered"            "Dateentered"       
    ## [70] "Modified"           "Datemodified"       "Expert"            
    ## [73] "Datechecked"        "AddInfos"           "TS"

``` r
a = 5#look at one species w multiple rows
  tmp = data.frame(spawning(species_list = DF$Species[a]))
  tmp
```

    ##   SpecCode                 Species autoctr StockCode SpawningRefNo SourceRef
    ## 1     3813 Anarrhichthys ocellatus      NA        NA            NA        NA
    ##   C_Code E_CODE SpawningGround Spawningarea Jan Feb Mar Apr May Jun Jul Aug Sep
    ## 1   <NA>     NA           <NA>         <NA>  NA  NA  NA  NA  NA  NA  NA  NA  NA
    ##   Oct Nov Dec GSI PercentFemales TempLow TempHigh SexRatiomid SexRmodRef
    ## 1  NA  NA  NA  NA             NA      NA       NA          NA         NA
    ##   FecundityMin WeightMin LengthFecunMin LengthTypeFecMin FecundityRef
    ## 1           NA        NA             NA             <NA>           NA
    ##   FecundityMax WeightMax LengthFecunMax LengthTypeFecMax FecComment
    ## 1           NA        NA             NA             <NA>       <NA>
    ##   SpawningCycles SpCycleRef GestationMin GestationMinRef GestationMax
    ## 1             NA         NA           NA              NA           NA
    ##   GestationMaxRef LengthOffspringMin LengthOffMinRef LengthOffspringMax
    ## 1              NA                 NA              NA                 NA
    ##   LengthOffMaxRef RelFecundityMin FecunMinRef RelFecundityMean FecunMeanRef
    ## 1              NA              NA          NA               NA           NA
    ##   RelFecundityMax FecunMaxRef LengthMin LengthMax LengthType Number  a  b
    ## 1              NA          NA        NA        NA       <NA>     NA NA NA
    ##   CorrCoeff Dailyspawnmin SpawnMinRef Dailyspawnmean SpawnMeanRef Dailyspawnmax
    ## 1        NA            NA          NA             NA           NA            NA
    ##   SpawnMaxRef Entered Dateentered Modified Datemodified Expert Datechecked
    ## 1          NA      NA        <NA>       NA         <NA>     NA        <NA>
    ##   AddInfos TS
    ## 1     <NA> NA

\#\#speed
\#\#<https://www.fishbase.se/manual/English/PDF/FB_Book_ATorres_Swimming_Speed_RF_JG.pdf>
\#\#<https://www.fishbase.in/manual/fishbasethe_swimming_and_speed_tables.htm>
\#\#multiple records for some species

``` r
load("DF_reproduction.Rdata")
DF= DF_reproduction
species = DF$Species
out = NULL
for (a in 1:length(species)){
  tmp = data.frame(speed(species_list = DF$Species[a]))
  print(dim(tmp)[1])
  out = rbind(out, tmp)
}
```

    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 23
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 6
    ## [1] 1
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 38
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
a = 13
  tmp = data.frame(speed(species_list = DF$Species[a]))
names(tmp)
```

    ##  [1] "SpecCode"        "Species"         "autoctr"         "StockCode"      
    ##  [5] "SpeedRefNo"      "Length"          "LengthType"      "SpeedLS"        
    ##  [9] "LengthTypeSpeed" "Speedms"         "Mode"            "DataRef"        
    ## [13] "Reliable"        "Comment"         "Entered"         "DateEntered"    
    ## [17] "Modified"        "DateModified"    "Expert"          "DateChecked"    
    ## [21] "SLa"             "SLb"             "TS"

``` r
head(tmp)
```

    ##   SpecCode           Species autoctr StockCode SpeedRefNo Length LengthType
    ## 1      271 Carassius auratus     163       285        308      7         SL
    ## 2      271 Carassius auratus     164       285        308     12         SL
    ## 3      271 Carassius auratus     165       285        308     13         SL
    ## 4      271 Carassius auratus     166       285       3499      4         TL
    ## 5      271 Carassius auratus     167       285       3499      9         TL
    ## 6      271 Carassius auratus     168       285       3499      7         TL
    ##    SpeedLS LengthTypeSpeed Speedms  Mode DataRef Reliable
    ## 1  9.60000              SL   0.672 burst     494     <NA>
    ## 2 12.80000              SL   1.536 burst     684     <NA>
    ## 3 13.00000              SL   1.690 burst     494     <NA>
    ## 4  7.00000              TL   0.280 burst      NA     <NA>
    ## 5  6.66667              TL   0.600 burst      NA     <NA>
    ## 6  9.57143              TL   0.670 burst      NA     <NA>
    ##                                                        Comment Entered
    ## 1                  Lengths were transformed to SL in Ref. 308.       1
    ## 2                  Lengths were transformed to SL in Ref. 308.       1
    ## 3                  Lengths were transformed to SL in Ref. 308.       1
    ## 4 Maximum speed sustained for 3-4 sec. Data read from a graph.       1
    ## 5 Maximum speed sustained for 3-4 sec. Data read from a graph.       1
    ## 6 Maximum speed sustained for 3-4 sec. Data read from a graph.       1
    ##   DateEntered Modified DateModified Expert DateChecked SLa   SLb TS
    ## 1  1992-01-30        1   2000-09-20     NA          NA   0 0.832 NA
    ## 2  1992-01-30        1   2000-09-20     NA          NA   0 0.832 NA
    ## 3  1992-01-30        1   2000-09-20     NA          NA   0 0.832 NA
    ## 4  1992-05-14       NA   1994-09-28     NA          NA   0 0.832 NA
    ## 5  1992-05-14       NA   1994-09-28     NA          NA   0 0.832 NA
    ## 6  1992-05-14       NA   1994-09-28     NA          NA   0 0.832 NA

\#\#stocks
\#\#<https://www.fishbase.in/manual/fishbasethe_stocks_table.htm>
\#\#multiple records for some species, one for each stock

``` r
load("DF_reproduction.Rdata")
DF= DF_reproduction
species = DF$Species
out = NULL
for (a in 1:length(species)){
  tmp = data.frame(stocks(species_list = DF$Species[a]))
  print(dim(tmp)[1])
  out = rbind(out, tmp)
}
```

    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 4
    ## [1] 1
    ## [1] 22
    ## [1] 22
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 26
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 10
    ## [1] 40
    ## [1] 40
    ## [1] 40
    ## [1] 40
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1
    ## [1] 1

``` r
a = 13
  tmp = data.frame(stocks(species_list = DF$Species[a]))
names(tmp)
```

    ##   [1] "SpecCode"          "Species"           "StockCode"        
    ##   [4] "SynOC"             "StockDefs"         "StockDefsGeneral" 
    ##   [7] "Level"             "LocalUnique"       "IUCN_Code"        
    ##  [10] "IUCN_Assessment"   "IUCN_DateAssessed" "Protected"        
    ##  [13] "StocksRefNo"       "CITES_Code"        "CITES_Date"       
    ##  [16] "CITES_Ref"         "CITES_Remarks"     "CMS"              
    ##  [19] "Northernmost"      "NorthSouthN"       "Southermost"      
    ##  [22] "NorthSouthS"       "Westernmost"       "WestEastW"        
    ##  [25] "Easternmost"       "WestEastE"         "BoundingRef"      
    ##  [28] "BoundingMethod"    "TempMin"           "TempMax"          
    ##  [31] "TempRef"           "TempPreferred"     "TempPref25"       
    ##  [34] "TempPref50"        "TempPref75"        "TempPrefRef"      
    ##  [37] "EnvTemp"           "Resilience"        "ResilienceRemark" 
    ##  [40] "pHMin"             "pHMax"             "pHRef"            
    ##  [43] "dHMin"             "dHMax"             "dHRef"            
    ##  [46] "GenBankID"         "RfeID"             "FIGIS_ID"         
    ##  [49] "EcotoxID"          "SCRFA_data"        "GMAD_ID"          
    ##  [52] "SAUP"              "SAUP_ID"           "SAUP_Group"       
    ##  [55] "AusMuseum"         "FishTrace"         "IUCN_ID"          
    ##  [58] "IUCN_IDAssess"     "BOLD_ID"           "IGFAName"         
    ##  [61] "EssayID"           "ICESStockID"       "OsteoBaseID"      
    ##  [64] "DORIS_ID"          "Aquamaps"          "Morphology"       
    ##  [67] "Occurrence"        "Strains"           "Ecology"          
    ##  [70] "Diseases"          "Abnorm"            "Metabolism"       
    ##  [73] "Predators"         "Spawning"          "Fecundity"        
    ##  [76] "Speed"             "Diet"              "Eggs"             
    ##  [79] "EggDevelop"        "Food"              "Larvae"           
    ##  [82] "LarvDyn"           "LarvSpeed"         "PopDyn"           
    ##  [85] "LengthWeight"      "Gillarea"          "Maturity"         
    ##  [88] "MatSizes"          "Processing"        "Reproduction"     
    ##  [91] "Introductions"     "Abundance"         "Vision"           
    ##  [94] "Genetics"          "Aquaculture"       "CountryComp"      
    ##  [97] "Allele"            "GeneticStudies"    "Ration"           
    ## [100] "Foods"             "Ecotoxicology"     "Brains"           
    ## [103] "Catches"           "FAOAqua"           "LengthRelations"  
    ## [106] "LengthFrequency"   "Sounds"            "Broodstock"       
    ## [109] "EggNursery"        "FryNursery"        "LarvalNursery"    
    ## [112] "Entered"           "DateEntered"       "Modified"         
    ## [115] "DateModified"      "Expert"            "DateChecked"      
    ## [118] "TS"

``` r
head(tmp)
```

    ##   SpecCode           Species StockCode  SynOC
    ## 1      271 Carassius auratus       285  52394
    ## 2      271 Carassius auratus     52865 157549
    ## 3      271 Carassius auratus     18768 119336
    ## 4      271 Carassius auratus     18770 119335
    ##                                                                                                                                                                                                             StockDefs
    ## 1 Asia:  central Asia and China (Ref. 7050) and Japan (Ref. 6390).  Introduced throughout the world.  Asian form of the goldfish (Ref. 1739).  Several countries report adverse ecological impact after introduction.
    ## 2                                                                                                                                                     <i>Carassius auratus argenteaphthalmus</i>\t:  Asia:  Viet Nam.
    ## 3                                                                                                                                                                 <i>Carassius auratus buergeri</i>\t:  Asia:  Japan.
    ## 4                                                                                                                                                     <i>Carassius auratus grandoculis</i>:  Asia:  Lake Biwa, Japan.
    ##   StockDefsGeneral              Level
    ## 1             Asia species in general
    ## 2             <NA>         subspecies
    ## 3             <NA>         subspecies
    ## 4             <NA>         subspecies
    ##                                           LocalUnique IUCN_Code IUCN_Assessment
    ## 1  Asia:  central Asia and China (Ref. 7050) and Japa        LC            <NA>
    ## 2 <i>Carassius auratus argenteaphthalmus</i>\t:  Asia      N.E.            <NA>
    ## 3 <i>Carassius auratus buergeri</i>\t:  Asia:  Japan.      N.E.            <NA>
    ## 4  <i>Carassius auratus grandoculis</i>:  Asia:  Lake      N.E.            <NA>
    ##   IUCN_DateAssessed Protected StocksRefNo CITES_Code CITES_Date CITES_Ref
    ## 1        2010-08-04         0        7050       <NA>       <NA>        NA
    ## 2              <NA>         0       84795       <NA>       <NA>        NA
    ## 3              <NA>         0         559       <NA>       <NA>        NA
    ## 4              <NA>         0         559       <NA>       <NA>        NA
    ##   CITES_Remarks  CMS Northernmost NorthSouthN Southermost NorthSouthS
    ## 1          <NA> <NA>           53           N          22           N
    ## 2          <NA> <NA>           NA        <NA>          NA        <NA>
    ## 3          <NA> <NA>           NA        <NA>          NA        <NA>
    ## 4          <NA> <NA>           NA        <NA>          NA        <NA>
    ##   Westernmost WestEastW Easternmost WestEastE BoundingRef BoundingMethod
    ## 1          NA      <NA>          NA      <NA>          NA             NA
    ## 2          NA      <NA>          NA      <NA>          NA             NA
    ## 3          NA      <NA>          NA      <NA>          NA             NA
    ## 4          NA      <NA>          NA      <NA>          NA             NA
    ##   TempMin TempMax TempRef TempPreferred TempPref25 TempPref50 TempPref75
    ## 1       0      41   35682            NA         NA         NA         NA
    ## 2      NA      NA      NA            NA         NA         NA         NA
    ## 3      NA      NA      NA            NA         NA         NA         NA
    ## 4      NA      NA      NA            NA         NA         NA         NA
    ##   TempPrefRef     EnvTemp Resilience      ResilienceRemark pHMin pHMax pHRef
    ## 1          NA subtropical     Medium K=0.17; tm=1; tmax=30     6     8 13371
    ## 2          NA    tropical       <NA>                  <NA>    NA    NA    NA
    ## 3          NA   temperate       <NA>                  <NA>    NA    NA    NA
    ## 4          NA   temperate       <NA>                  <NA>    NA    NA    NA
    ##   dHMin dHMax dHRef GenBankID RfeID FIGIS_ID EcotoxID SCRFA_data GMAD_ID SAUP
    ## 1     5    19 13371      7957  <NA>       NA       NA          0      NA    0
    ## 2    NA    NA    NA        NA  <NA>       NA       NA          0      NA    0
    ## 3    NA    NA    NA    145924  <NA>       NA       NA          0      NA    0
    ## 4    NA    NA    NA    145923  <NA>       NA       NA          0      NA    0
    ##   SAUP_ID SAUP_Group AusMuseum FishTrace IUCN_ID IUCN_IDAssess BOLD_ID IGFAName
    ## 1      NA          1       395         0  166083       1110472   10846     <NA>
    ## 2      NA         NA        NA         0      NA            NA      NA     <NA>
    ## 3      NA          1        NA         0      NA            NA      NA     <NA>
    ## 4      NA          1        NA         0      NA            NA      NA     <NA>
    ##   EssayID ICESStockID OsteoBaseID DORIS_ID Aquamaps Morphology Occurrence
    ## 1      NA        <NA>          NA       NA        0          1          1
    ## 2      NA        <NA>          NA       NA        0          0          0
    ## 3      NA        <NA>          NA       NA        0          0          0
    ## 4      NA        <NA>          NA       NA        0          0          0
    ##   Strains Ecology Diseases Abnorm Metabolism Predators Spawning Fecundity Speed
    ## 1       0       1        1      0          1         1        1         1     1
    ## 2       0       0        0      0          0         0        0         0     0
    ## 3       0       0        0      0          0         0        0         0     0
    ## 4       0       0        0      0          0         0        0         0     0
    ##   Diet Eggs EggDevelop Food Larvae LarvDyn LarvSpeed PopDyn LengthWeight
    ## 1    1    1          0    0      1       0         0      1            1
    ## 2    0    0          0    0      0       0         0      0            0
    ## 3    0    0          0    0      0       0         0      0            1
    ## 4    0    0          0    0      0       0         0      0            0
    ##   Gillarea Maturity MatSizes Processing Reproduction Introductions Abundance
    ## 1        1        1        1          1            1             1         0
    ## 2        0        0        0          0            0             0         0
    ## 3        0        0        0          0            0             0         0
    ## 4        0        0        0          0            0             0         0
    ##   Vision Genetics Aquaculture CountryComp Allele GeneticStudies Ration Foods
    ## 1      0        1           0           1      0              0      0     1
    ## 2      0        0           0           0      0              0      0     0
    ## 3      0        1           0           0      0              0      0     0
    ## 4      0        1           0           0      0              0      0     0
    ##   Ecotoxicology Brains Catches FAOAqua LengthRelations LengthFrequency Sounds
    ## 1             1      1       1       1               1               0      0
    ## 2             0      0       0       0               0               0      0
    ## 3             0      0       0       0               1               0      0
    ## 4             0      0       0       0               1               0      0
    ##   Broodstock EggNursery FryNursery LarvalNursery Entered DateEntered Modified
    ## 1          1          0          0             1       2  1990-10-18       10
    ## 2          0          0          0             0      10  2006-10-03      303
    ## 3          0          0          0             0     113  1996-06-02      303
    ## 4          0          0          0             0     113  1996-06-02      303
    ##   DateModified Expert DateChecked TS
    ## 1   2018-03-06      1  1997-09-16 NA
    ## 2   2017-01-26     NA        <NA> NA
    ## 3   2017-01-26     NA        <NA> NA
    ## 4   2017-01-26     NA        <NA> NA

\#\#swimming
\#\#<https://www.fishbase.in/manual/fishbasethe_swimming_and_speed_tables.htm>
\#\#one record per species

``` r
load("DF_reproduction.Rdata")
DF= DF_reproduction
species = DF$Species
out = NULL
ct = rep(NA, length(species))
for (a in 1:length(species)){
  tmp = data.frame(swimming(species_list = DF$Species[a]))
  ct[a] = dim(tmp)[1]
  ind_species =which(names(tmp) == "Species")
  inds_new = setdiff(seq(1,dim(tmp)[2]), ind_species)
  names(tmp)[inds_new]= paste0(names(tmp)[inds_new], 
                                       "_swimming")
  tmp = merge(DF[a,], tmp)
  out = rbind(out, tmp)
}
names(tmp)
```

    ##   [1] "Species"                      "haddock_score_mean"          
    ##   [3] "haddock_score_sd"             "Order"                       
    ##   [5] "Class"                        "Species_ACE2"                
    ##   [7] "brain_body_ratio"             "SpecCode_ecology"            
    ##   [9] "autoctr_ecology"              "StockCode_ecology"           
    ##  [11] "EcologyRefNo_ecology"         "HabitatsRef_ecology"         
    ##  [13] "Neritic_ecology"              "SupraLittoralZone_ecology"   
    ##  [15] "Saltmarshes_ecology"          "LittoralZone_ecology"        
    ##  [17] "TidePools_ecology"            "Intertidal_ecology"          
    ##  [19] "SubLittoral_ecology"          "Caves_ecology"               
    ##  [21] "Oceanic_ecology"              "Epipelagic_ecology"          
    ##  [23] "Mesopelagic_ecology"          "Bathypelagic_ecology"        
    ##  [25] "Abyssopelagic_ecology"        "Hadopelagic_ecology"         
    ##  [27] "Estuaries_ecology"            "Mangroves_ecology"           
    ##  [29] "MarshesSwamps_ecology"        "CaveAnchialine_ecology"      
    ##  [31] "Stream_ecology"               "Lakes_ecology"               
    ##  [33] "Cave_ecology"                 "Cave2_ecology"               
    ##  [35] "Herbivory2_ecology"           "HerbivoryRef_ecology"        
    ##  [37] "FeedingType_ecology"          "FeedingTypeRef_ecology"      
    ##  [39] "DietTroph_ecology"            "DietSeTroph_ecology"         
    ##  [41] "DietTLu_ecology"              "DietseTLu_ecology"           
    ##  [43] "DietRemark_ecology"           "DietRef_ecology"             
    ##  [45] "FoodTroph_ecology"            "FoodSeTroph_ecology"         
    ##  [47] "FoodRemark_ecology"           "FoodRef_ecology"             
    ##  [49] "AddRems_ecology"              "AssociationRef_ecology"      
    ##  [51] "Parasitism_ecology"           "Solitary_ecology"            
    ##  [53] "Symbiosis_ecology"            "Symphorism_ecology"          
    ##  [55] "Commensalism_ecology"         "Mutualism_ecology"           
    ##  [57] "Epiphytic_ecology"            "Schooling_ecology"           
    ##  [59] "SchoolingFrequency_ecology"   "SchoolingLifestage_ecology"  
    ##  [61] "Shoaling_ecology"             "ShoalingFrequency_ecology"   
    ##  [63] "ShoalingLifestage_ecology"    "SchoolShoalRef_ecology"      
    ##  [65] "AssociationsWith_ecology"     "AssociationsRemarks_ecology" 
    ##  [67] "OutsideHost_ecology"          "OHRemarks_ecology"           
    ##  [69] "InsideHost_ecology"           "IHRemarks_ecology"           
    ##  [71] "SubstrateRef_ecology"         "Benthic_ecology"             
    ##  [73] "Sessile_ecology"              "Mobile_ecology"              
    ##  [75] "Demersal_ecology"             "Endofauna_ecology"           
    ##  [77] "Pelagic_ecology"              "Megabenthos_ecology"         
    ##  [79] "Macrobenthos_ecology"         "Meiobenthos_ecology"         
    ##  [81] "SoftBottom_ecology"           "Sand_ecology"                
    ##  [83] "Coarse_ecology"               "Fine_ecology"                
    ##  [85] "Level_ecology"                "Sloping_ecology"             
    ##  [87] "Silt_ecology"                 "Mud_ecology"                 
    ##  [89] "Ooze_ecology"                 "Detritus_ecology"            
    ##  [91] "Organic_ecology"              "HardBottom_ecology"          
    ##  [93] "Rocky_ecology"                "Rubble_ecology"              
    ##  [95] "Gravel_ecology"               "SpecialHabitatRef_ecology"   
    ##  [97] "Macrophyte_ecology"           "BedsBivalve_ecology"         
    ##  [99] "BedsRock_ecology"             "SeaGrassBeds_ecology"        
    ## [101] "BedsOthers_ecology"           "CoralReefs_ecology"          
    ## [103] "ReefExclusive_ecology"        "DropOffs_ecology"            
    ## [105] "ReefFlats_ecology"            "Lagoons_ecology"             
    ## [107] "Burrows_ecology"              "Tunnels_ecology"             
    ## [109] "Crevices_ecology"             "Vents_ecology"               
    ## [111] "Seamounts_ecology"            "DeepWaterCorals_ecology"     
    ## [113] "Vegetation_ecology"           "Leaves_ecology"              
    ## [115] "Stems_ecology"                "Roots_ecology"               
    ## [117] "Driftwood_ecology"            "OInverterbrates_ecology"     
    ## [119] "OIRemarks_ecology"            "Verterbrates_ecology"        
    ## [121] "VRemarks_ecology"             "Pilings_ecology"             
    ## [123] "BoatHulls_ecology"            "Corals_ecology"              
    ## [125] "SoftCorals_ecology"           "OnPolyp_ecology"             
    ## [127] "BetweenPolyps_ecology"        "HardCorals_ecology"          
    ## [129] "OnExoskeleton_ecology"        "InterstitialSpaces_ecology"  
    ## [131] "Entered_ecology"              "Dateentered_ecology"         
    ## [133] "Modified_ecology"             "Datemodified_ecology"        
    ## [135] "Expert_ecology"               "Datechecked_ecology"         
    ## [137] "TS_ecology"                   "SpecCode_estimate"           
    ## [139] "MaxLengthTL_estimate"         "TLObserved_estimate"         
    ## [141] "Troph_estimate"               "seTroph_estimate"            
    ## [143] "TrophObserved_estimate"       "TrophPredicted_estimate"     
    ## [145] "seTrophPredicted_estimate"    "a_estimate"                  
    ## [147] "sd_log10a_estimate"           "b_estimate"                  
    ## [149] "sd_b_estimate"                "Method_ab_estimate"          
    ## [151] "prior_r_estimate"             "lcl_r_estimate"              
    ## [153] "ucl_r_estimate"               "n_r_estimate"                
    ## [155] "Comment_r_estimate"           "K_estimate"                  
    ## [157] "SD_logK_estimate"             "Linf_estimate"               
    ## [159] "SD_logLinf_estimate"          "Winf_estimate"               
    ## [161] "LengthType_estimate"          "ComDepthMin_estimate"        
    ## [163] "ComDepthMax_estimate"         "ComDepMinObserved_estimate"  
    ## [165] "ComDepMaxObserved_estimate"   "DepthMin_estimate"           
    ## [167] "DepthMax_estimate"            "DepthMinEstimate_estimate"   
    ## [169] "DepthMaxEstimate_estimate"    "PredPreyRatioMin_estimate"   
    ## [171] "PredPreyRatioMax_estimate"    "AgeMin_estimate"             
    ## [173] "AgeMax_estimate"              "TempPrefMin_estimate"        
    ## [175] "TempPrefMean_estimate"        "TempPrefMax_estimate"        
    ## [177] "nCells_estimate"              "LastModified_estimate"       
    ## [179] "MaxLengthSL_estimate"         "KObserved_estimate"          
    ## [181] "introductions_count"          "predator_mammals"            
    ## [183] "predator_count"               "SpecCode_reproduction"       
    ## [185] "autoctr_reproduction"         "StockCode_reproduction"      
    ## [187] "ReproducRefNo_reproduction"   "ReproMode_reproduction"      
    ## [189] "Fertilization_reproduction"   "MatingSystem_reproduction"   
    ## [191] "MonogamyType_reproduction"    "MatingRefNo_reproduction"    
    ## [193] "MatingQuality_reproduction"   "SpawnAgg_reproduction"       
    ## [195] "SpawnAggRef_reproduction"     "Spawning_reproduction"       
    ## [197] "BatchSpawner_reproduction"    "SpawnModRef_reproduction"    
    ## [199] "RepGuild1_reproduction"       "RepGuild2_reproduction"      
    ## [201] "ParentalCare_reproduction"    "ParentalCareQ_reproduction"  
    ## [203] "ParentalCareRef_reproduction" "RepAquarium_reproduction"    
    ## [205] "RepAquaRef_reproduction"      "Entered_reproduction"        
    ## [207] "DateEntered_reproduction"     "Modified_reproduction"       
    ## [209] "DateModified_reproduction"    "Expert_reproduction"         
    ## [211] "DateChecked_reproduction"     "AddInfos_reproduction"       
    ## [213] "TS_reproduction"              "SpecCode_swimming"           
    ## [215] "SwimRefMain_swimming"         "AdultType_swimming"          
    ## [217] "AdultMode_swimming"           "AdultRef_swimming"           
    ## [219] "Comment_swimming"             "Entered_swimming"            
    ## [221] "DateEntered_swimming"         "Modified_swimming"           
    ## [223] "DateModified_swimming"        "Expert_swimming"             
    ## [225] "DateChecked_swimming"         "AspectRatio_swimming"        
    ## [227] "AspectRef_swimming"           "TS_swimming"

``` r
out[1:2,]
```

    ##                       Species haddock_score_mean haddock_score_sd       Order
    ## 1 Acanthochromis polyacanthus          -120.6537         1.826514 Perciformes
    ## 2           Amblyraja radiata          -127.1368         2.583981  Rajiformes
    ##            Class                Species_ACE2 brain_body_ratio SpecCode_ecology
    ## 1 Actinopterygii Acanthochromis polyacanthus               NA             6655
    ## 2 Elasmobranchii           Amblyraja radiata          2.30154             2565
    ##   autoctr_ecology StockCode_ecology EcologyRefNo_ecology HabitatsRef_ecology
    ## 1            3921              6975                 9137                9137
    ## 2            1725              2761                 9023               12223
    ##   Neritic_ecology SupraLittoralZone_ecology Saltmarshes_ecology
    ## 1               0                         0                   0
    ## 2               0                         0                   0
    ##   LittoralZone_ecology TidePools_ecology Intertidal_ecology SubLittoral_ecology
    ## 1                    0                 0                 -1                   0
    ## 2                    0                 0                  0                   0
    ##   Caves_ecology Oceanic_ecology Epipelagic_ecology Mesopelagic_ecology
    ## 1             0              -1                  0                   0
    ## 2             0              -1                  0                   0
    ##   Bathypelagic_ecology Abyssopelagic_ecology Hadopelagic_ecology
    ## 1                    0                     0                   0
    ## 2                    0                     0                   0
    ##   Estuaries_ecology Mangroves_ecology MarshesSwamps_ecology
    ## 1                -1                 0                     0
    ## 2                 0                 0                     0
    ##   CaveAnchialine_ecology Stream_ecology Lakes_ecology Cave_ecology
    ## 1                      0              0             0            0
    ## 2                      0              0             0            0
    ##   Cave2_ecology                 Herbivory2_ecology HerbivoryRef_ecology
    ## 1             0 mainly animals (troph. 2.8 and up)                 9137
    ## 2             0 mainly animals (troph. 2.8 and up)                 9023
    ##             FeedingType_ecology FeedingTypeRef_ecology DietTroph_ecology
    ## 1    selective plankton feeding                   9137                NA
    ## 2 hunting macrofauna (predator)                     NA               4.2
    ##   DietSeTroph_ecology DietTLu_ecology DietseTLu_ecology
    ## 1                  NA              NA                NA
    ## 2               0.268            3.89              0.58
    ##                DietRemark_ecology DietRef_ecology FoodTroph_ecology
    ## 1                            <NA>              NA              2.69
    ## 2 Troph of adults from 5 studies.           37969              3.49
    ##   FoodSeTroph_ecology
    ## 1                0.30
    ## 2                0.56
    ##                                                                           FoodRemark_ecology
    ## 1 Trophic level estimated from a number of food items using a randomized resampling routine.
    ## 2 Trophic level estimated from a number of food items using a randomized resampling routine.
    ##   FoodRef_ecology
    ## 1              NA
    ## 2              NA
    ##                                                                                                                                                                                                                                                                                             AddRems_ecology
    ## 1                                                                                                                                                                                 Inhabits inshore and offshore coral reefs (Ref. 9710).  Also found in harbors, lagoons and outer reef slopes (Ref. 7247).
    ## 2 A boreal to arctic species, living offshore on hard and soft bottoms at temperatures of -1.4-14<b0>C.  Parasites of the species include 3 protozoans, 1 turbellarian, 1 monogenean, 1 trematode, 10 cestodes, 5 nematodes and 4 copepods, found on the skin, digestive tract and body cavity (Ref. 5951).
    ##   AssociationRef_ecology Parasitism_ecology Solitary_ecology Symbiosis_ecology
    ## 1                     NA                  0                0                 0
    ## 2                     NA                  0                0                 0
    ##   Symphorism_ecology Commensalism_ecology Mutualism_ecology Epiphytic_ecology
    ## 1                  0                    0                 0                 0
    ## 2                  0                    0                 0                 0
    ##   Schooling_ecology SchoolingFrequency_ecology SchoolingLifestage_ecology
    ## 1                 0                       <NA>                       <NA>
    ## 2                 0                       <NA>                       <NA>
    ##   Shoaling_ecology ShoalingFrequency_ecology ShoalingLifestage_ecology
    ## 1                0                      <NA>                      <NA>
    ## 2               -1                 sometimes            only juveniles
    ##   SchoolShoalRef_ecology AssociationsWith_ecology
    ## 1                     NA                     <NA>
    ## 2                  49751                     <NA>
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           AssociationsRemarks_ecology
    ## 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <NA>
    ## 2 Seasonal shoaling of juveniles assumed from bulk catch with great concentrations of juveniles found throughout the Gulf of Maine, Massachusetts Bay, the Bay of Fundy, the Scotian Shelf, and the perimeter of Georges Bank during spring and fall seasons; both the spring and fall 1978-2002 Massachusetts inshore trawl surveys show concentrations of juvenile thorny skate around Cape Ann and into Massachusetts Bay, and in Cape Cod Bay (Ref. 49751). Based on tagging experiments, does not appear to make seasonal migrations; known to be rather sedentary (Ref. 86779).
    ##   OutsideHost_ecology OHRemarks_ecology InsideHost_ecology IHRemarks_ecology
    ## 1                   0              <NA>                  0              <NA>
    ## 2                   0              <NA>                  0              <NA>
    ##   SubstrateRef_ecology Benthic_ecology Sessile_ecology Mobile_ecology
    ## 1                   NA               0               0              0
    ## 2                   NA               0               0              0
    ##   Demersal_ecology Endofauna_ecology Pelagic_ecology Megabenthos_ecology
    ## 1                0                 0               0                   0
    ## 2                0                 0               0                   0
    ##   Macrobenthos_ecology Meiobenthos_ecology SoftBottom_ecology Sand_ecology
    ## 1                    0                   0                  0            0
    ## 2                    0                   0                  0            0
    ##   Coarse_ecology Fine_ecology Level_ecology Sloping_ecology Silt_ecology
    ## 1              0            0             0               0            0
    ## 2              0            0             0               0            0
    ##   Mud_ecology Ooze_ecology Detritus_ecology Organic_ecology HardBottom_ecology
    ## 1           0            0                0               0                  0
    ## 2           0            0                0               0                  0
    ##   Rocky_ecology Rubble_ecology Gravel_ecology SpecialHabitatRef_ecology
    ## 1             0              0              0                     58534
    ## 2             0              0              0                        NA
    ##   Macrophyte_ecology BedsBivalve_ecology BedsRock_ecology SeaGrassBeds_ecology
    ## 1                  0                   0                0                    0
    ## 2                  0                   0                0                    0
    ##   BedsOthers_ecology CoralReefs_ecology ReefExclusive_ecology DropOffs_ecology
    ## 1                  0                 -1                     0                0
    ## 2                  0                  0                     0                0
    ##   ReefFlats_ecology Lagoons_ecology Burrows_ecology Tunnels_ecology
    ## 1                 0               0               0               0
    ## 2                 0               0               0               0
    ##   Crevices_ecology Vents_ecology Seamounts_ecology DeepWaterCorals_ecology
    ## 1                0             0                 0                       0
    ## 2                0             0                 0                       0
    ##   Vegetation_ecology Leaves_ecology Stems_ecology Roots_ecology
    ## 1                  0              0             0             0
    ## 2                  0              0             0             0
    ##   Driftwood_ecology OInverterbrates_ecology OIRemarks_ecology
    ## 1                 0                       0              <NA>
    ## 2                 0                       0              <NA>
    ##   Verterbrates_ecology VRemarks_ecology Pilings_ecology BoatHulls_ecology
    ## 1                    0               NA               0                 0
    ## 2                    0               NA               0                 0
    ##   Corals_ecology SoftCorals_ecology OnPolyp_ecology BetweenPolyps_ecology
    ## 1              0                  0               0                     0
    ## 2              0                  0               0                     0
    ##   HardCorals_ecology OnExoskeleton_ecology InterstitialSpaces_ecology
    ## 1                  0                     0                          0
    ## 2                  0                     0                          0
    ##   Entered_ecology Dateentered_ecology Modified_ecology Datemodified_ecology
    ## 1             574          2001-07-07             1472           2008-12-22
    ## 2              34          1995-03-20             2374           2014-02-05
    ##   Expert_ecology Datechecked_ecology TS_ecology SpecCode_estimate
    ## 1             NA                <NA>         NA              6655
    ## 2             NA                <NA>         NA              2565
    ##   MaxLengthTL_estimate TLObserved_estimate Troph_estimate seTroph_estimate
    ## 1                   14                   0           2.69            0.300
    ## 2                  105                   0           4.20            0.268
    ##   TrophObserved_estimate TrophPredicted_estimate seTrophPredicted_estimate
    ## 1                      0                      NA                        NA
    ## 2                      0                      NA                        NA
    ##   a_estimate sd_log10a_estimate b_estimate sd_b_estimate
    ## 1  0.0269153             0.1260       3.04        0.0756
    ## 2  0.0057544             0.0632       3.09        0.0421
    ##                                  Method_ab_estimate prior_r_estimate
    ## 1 LWR estimates for this species & (Sub)family-body               NA
    ## 2                    LWR estimates for this species               NA
    ##   lcl_r_estimate ucl_r_estimate n_r_estimate Comment_r_estimate K_estimate
    ## 1             NA             NA           NA               <NA>       1.05
    ## 2             NA             NA           NA               <NA>       0.11
    ##   SD_logK_estimate Linf_estimate SD_logLinf_estimate Winf_estimate
    ## 1               NA            NA                  NA            NA
    ## 2               NA            NA                  NA            NA
    ##   LengthType_estimate ComDepthMin_estimate ComDepthMax_estimate
    ## 1                  NA                    4                   20
    ## 2                  NA                   25                  440
    ##   ComDepMinObserved_estimate ComDepMaxObserved_estimate DepthMin_estimate
    ## 1                          0                          0                 1
    ## 2                          0                          0                 5
    ##   DepthMax_estimate DepthMinEstimate_estimate DepthMaxEstimate_estimate
    ## 1                65                         0                         0
    ## 2              1540                         0                         0
    ##   PredPreyRatioMin_estimate PredPreyRatioMax_estimate AgeMin_estimate
    ## 1                  19.04680                  798.4350              NA
    ## 2                   3.41168                   87.7814            3.49
    ##   AgeMax_estimate TempPrefMin_estimate TempPrefMean_estimate
    ## 1              NA                 25.1                  27.8
    ## 2              28                 -0.8                   1.0
    ##   TempPrefMax_estimate nCells_estimate LastModified_estimate
    ## 1                 28.9             458            2019-04-24
    ## 2                  5.0             340            2019-04-24
    ##   MaxLengthSL_estimate KObserved_estimate introductions_count predator_mammals
    ## 1                 9.33                  0                   1                0
    ## 2                86.10                  0                   1                0
    ##   predator_count SpecCode_reproduction autoctr_reproduction
    ## 1              1                  6655                 3674
    ## 2              4                  2565                 1425
    ##   StockCode_reproduction ReproducRefNo_reproduction ReproMode_reproduction
    ## 1                   6975                        205               dioecism
    ## 2                   2761                       3167               dioecism
    ##   Fertilization_reproduction MatingSystem_reproduction
    ## 1                   external                  monogamy
    ## 2         internal (oviduct)                      <NA>
    ##   MonogamyType_reproduction MatingRefNo_reproduction MatingQuality_reproduction
    ## 1                  obligate                    52284                          1
    ## 2                      <NA>                       NA                         NA
    ##   SpawnAgg_reproduction SpawnAggRef_reproduction Spawning_reproduction
    ## 1                     0                       NA                  <NA>
    ## 2                     0                       NA                  <NA>
    ##   BatchSpawner_reproduction SpawnModRef_reproduction RepGuild1_reproduction
    ## 1                         0                       NA               guarders
    ## 2                         0                       NA            nonguarders
    ##                 RepGuild2_reproduction ParentalCare_reproduction
    ## 1                              nesters                  paternal
    ## 2 open water/substratum egg scatterers                      none
    ##   ParentalCareQ_reproduction ParentalCareRef_reproduction
    ## 1                          1                          205
    ## 2                          3                           NA
    ##   RepAquarium_reproduction RepAquaRef_reproduction Entered_reproduction
    ## 1                     <NA>                      NA                    2
    ## 2                     <NA>                      NA                  113
    ##   DateEntered_reproduction Modified_reproduction DateModified_reproduction
    ## 1               2005-08-01                     2                2017-07-05
    ## 2               1999-11-16                     2                2017-07-18
    ##   Expert_reproduction DateChecked_reproduction
    ## 1                  NA                     <NA>
    ## 2                  NA                     <NA>
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             AddInfos_reproduction
    ## 1                                                                                                                                                                                                                             Oviparous, distinct pairing during breeding (Ref. 205).   Monogamous mating is observed as both obligate and genetic (Ref. 52884). Eggs are demersal and adhere to the substrate (Ref. 205).  Males guard and aerate the eggs (Ref. 205). Does not have a juvenile bisexual phase and all males have the typical testicular morphology of gonochores (Ref. 103751).
    ## 2 Distinct pairing with embrace. Oviparous, laying 10-45 egg cases each year (Ref. 44869, 41305). Eggs are oblong capsules with stiff pointed horns at the corners deposited in sandy or muddy flats (Ref. 205). Egg capsules are 3.4-8.9 cm long and 2.3-6.8 cm wide (Ref. 41250). Paired eggs are laid. Embryos feed solely on yolk (Ref. 50449). In the North Sea, fully formed individuals hatch after 4 months and pups are about 8-11 cm in length (Ref. 44869, 37969). In the Barents Sea, low water temperature may lengthen embryonic development time to 2.5-3 years (Ref. 44869). \r\n
    ##   TS_reproduction SpecCode_swimming SwimRefMain_swimming
    ## 1              NA              6655                 9574
    ## 2              NA              2565                 9574
    ##                       AdultType_swimming AdultMode_swimming AdultRef_swimming
    ## 1 oscillation of median or pectoral fins          labriform                NA
    ## 2  undulation of median or pectoral fins           rajiform                NA
    ##   Comment_swimming Entered_swimming DateEntered_swimming Modified_swimming
    ## 1             <NA>               32           1995-08-27                 3
    ## 2             <NA>               32           1995-08-27                 3
    ##   DateModified_swimming Expert_swimming DateChecked_swimming
    ## 1            1995-08-28              NA                 <NA>
    ## 2            1995-08-28              NA                 <NA>
    ##   AspectRatio_swimming AspectRef_swimming TS_swimming
    ## 1                   NA                 NA          NA
    ## 2                   NA                 NA          NA

``` r
unique(ct)
```

    ## [1] 1

``` r
DF_swim = DF
save(DF_swim, file = "DF_swim.Rdata")
fishbase_HADDOCK = DF_swim
write.csv(fishbase_HADDOCK, file = "fishbase_HADDOCK.csv")
```

\#\#see what coverage is

``` r
load("DF_swim.Rdata")
df = DF_swim
name_ct = length(names(df))
row_ct = dim(df)[1]
non_na_frac = rep(NA, name_ct)
for (a in 1:name_ct){
  non_na_frac[a]= length(which(!is.na(df[,a])))/ row_ct  
}
  
# non_na_frac = colSums(!is.na(df))/dim(df)[2]

ok_cols = which(non_na_frac > cutoff)
DF_fields = data.frame(field = names(df),
                       non_na_frac = non_na_frac)
i = sort.int(DF_fields$non_na_frac,  index.return = TRUE, decreasing = TRUE)

DF_fields = DF_fields[i$ix,]
DF_fields
```

    ##                            field non_na_frac
    ## 1                        Species  1.00000000
    ## 2             haddock_score_mean  1.00000000
    ## 3               haddock_score_sd  1.00000000
    ## 4                          Order  1.00000000
    ## 5                          Class  1.00000000
    ## 6                   Species_ACE2  1.00000000
    ## 8               SpecCode_ecology  1.00000000
    ## 138            SpecCode_estimate  1.00000000
    ## 139         MaxLengthTL_estimate  1.00000000
    ## 140          TLObserved_estimate  1.00000000
    ## 141               Troph_estimate  1.00000000
    ## 142             seTroph_estimate  1.00000000
    ## 143       TrophObserved_estimate  1.00000000
    ## 164   ComDepMinObserved_estimate  1.00000000
    ## 165   ComDepMaxObserved_estimate  1.00000000
    ## 168    DepthMinEstimate_estimate  1.00000000
    ## 169    DepthMaxEstimate_estimate  1.00000000
    ## 170    PredPreyRatioMin_estimate  1.00000000
    ## 171    PredPreyRatioMax_estimate  1.00000000
    ## 178        LastModified_estimate  1.00000000
    ## 179         MaxLengthSL_estimate  1.00000000
    ## 180           KObserved_estimate  1.00000000
    ## 181          introductions_count  1.00000000
    ## 183               predator_count  1.00000000
    ## 184        SpecCode_reproduction  1.00000000
    ## 146                   a_estimate  0.96052632
    ## 147           sd_log10a_estimate  0.96052632
    ## 148                   b_estimate  0.96052632
    ## 149                sd_b_estimate  0.96052632
    ## 150           Method_ab_estimate  0.96052632
    ## 185         autoctr_reproduction  0.89473684
    ## 186       StockCode_reproduction  0.89473684
    ## 188       ReproMode_reproduction  0.89473684
    ## 189   Fertilization_reproduction  0.89473684
    ## 194        SpawnAgg_reproduction  0.89473684
    ## 197    BatchSpawner_reproduction  0.89473684
    ## 206         Entered_reproduction  0.89473684
    ## 207     DateEntered_reproduction  0.89473684
    ## 209    DateModified_reproduction  0.89473684
    ## 9                autoctr_ecology  0.88157895
    ## 10             StockCode_ecology  0.88157895
    ## 11          EcologyRefNo_ecology  0.88157895
    ## 13               Neritic_ecology  0.88157895
    ## 14     SupraLittoralZone_ecology  0.88157895
    ## 15           Saltmarshes_ecology  0.88157895
    ## 16          LittoralZone_ecology  0.88157895
    ## 17             TidePools_ecology  0.88157895
    ## 18            Intertidal_ecology  0.88157895
    ## 19           SubLittoral_ecology  0.88157895
    ## 20                 Caves_ecology  0.88157895
    ## 21               Oceanic_ecology  0.88157895
    ## 22            Epipelagic_ecology  0.88157895
    ## 23           Mesopelagic_ecology  0.88157895
    ## 24          Bathypelagic_ecology  0.88157895
    ## 25         Abyssopelagic_ecology  0.88157895
    ## 26           Hadopelagic_ecology  0.88157895
    ## 27             Estuaries_ecology  0.88157895
    ## 28             Mangroves_ecology  0.88157895
    ## 29         MarshesSwamps_ecology  0.88157895
    ## 30        CaveAnchialine_ecology  0.88157895
    ## 31                Stream_ecology  0.88157895
    ## 32                 Lakes_ecology  0.88157895
    ## 33                  Cave_ecology  0.88157895
    ## 34                 Cave2_ecology  0.88157895
    ## 51            Parasitism_ecology  0.88157895
    ## 52              Solitary_ecology  0.88157895
    ## 53             Symbiosis_ecology  0.88157895
    ## 54            Symphorism_ecology  0.88157895
    ## 55          Commensalism_ecology  0.88157895
    ## 56             Mutualism_ecology  0.88157895
    ## 57             Epiphytic_ecology  0.88157895
    ## 58             Schooling_ecology  0.88157895
    ## 61              Shoaling_ecology  0.88157895
    ## 67           OutsideHost_ecology  0.88157895
    ## 69            InsideHost_ecology  0.88157895
    ## 72               Benthic_ecology  0.88157895
    ## 73               Sessile_ecology  0.88157895
    ## 74                Mobile_ecology  0.88157895
    ## 75              Demersal_ecology  0.88157895
    ## 76             Endofauna_ecology  0.88157895
    ## 77               Pelagic_ecology  0.88157895
    ## 78           Megabenthos_ecology  0.88157895
    ## 79          Macrobenthos_ecology  0.88157895
    ## 80           Meiobenthos_ecology  0.88157895
    ## 81            SoftBottom_ecology  0.88157895
    ## 82                  Sand_ecology  0.88157895
    ## 83                Coarse_ecology  0.88157895
    ## 84                  Fine_ecology  0.88157895
    ## 85                 Level_ecology  0.88157895
    ## 86               Sloping_ecology  0.88157895
    ## 87                  Silt_ecology  0.88157895
    ## 88                   Mud_ecology  0.88157895
    ## 89                  Ooze_ecology  0.88157895
    ## 90              Detritus_ecology  0.88157895
    ## 91               Organic_ecology  0.88157895
    ## 92            HardBottom_ecology  0.88157895
    ## 93                 Rocky_ecology  0.88157895
    ## 94                Rubble_ecology  0.88157895
    ## 95                Gravel_ecology  0.88157895
    ## 97            Macrophyte_ecology  0.88157895
    ## 98           BedsBivalve_ecology  0.88157895
    ## 99              BedsRock_ecology  0.88157895
    ## 100         SeaGrassBeds_ecology  0.88157895
    ## 101           BedsOthers_ecology  0.88157895
    ## 102           CoralReefs_ecology  0.88157895
    ## 103        ReefExclusive_ecology  0.88157895
    ## 104             DropOffs_ecology  0.88157895
    ## 105            ReefFlats_ecology  0.88157895
    ## 106              Lagoons_ecology  0.88157895
    ## 107              Burrows_ecology  0.88157895
    ## 108              Tunnels_ecology  0.88157895
    ## 109             Crevices_ecology  0.88157895
    ## 110                Vents_ecology  0.88157895
    ## 111            Seamounts_ecology  0.88157895
    ## 112      DeepWaterCorals_ecology  0.88157895
    ## 113           Vegetation_ecology  0.88157895
    ## 114               Leaves_ecology  0.88157895
    ## 115                Stems_ecology  0.88157895
    ## 116                Roots_ecology  0.88157895
    ## 117            Driftwood_ecology  0.88157895
    ## 118      OInverterbrates_ecology  0.88157895
    ## 120         Verterbrates_ecology  0.88157895
    ## 122              Pilings_ecology  0.88157895
    ## 123            BoatHulls_ecology  0.88157895
    ## 124               Corals_ecology  0.88157895
    ## 125           SoftCorals_ecology  0.88157895
    ## 126              OnPolyp_ecology  0.88157895
    ## 127        BetweenPolyps_ecology  0.88157895
    ## 128           HardCorals_ecology  0.88157895
    ## 129        OnExoskeleton_ecology  0.88157895
    ## 130   InterstitialSpaces_ecology  0.88157895
    ## 131              Entered_ecology  0.88157895
    ## 132          Dateentered_ecology  0.88157895
    ## 134         Datemodified_ecology  0.88157895
    ## 187   ReproducRefNo_reproduction  0.88157895
    ## 156                   K_estimate  0.86842105
    ## 199       RepGuild1_reproduction  0.86842105
    ## 200       RepGuild2_reproduction  0.81578947
    ## 35            Herbivory2_ecology  0.80263158
    ## 45             FoodTroph_ecology  0.78947368
    ## 46           FoodSeTroph_ecology  0.78947368
    ## 47            FoodRemark_ecology  0.78947368
    ## 12           HabitatsRef_ecology  0.76315789
    ## 36          HerbivoryRef_ecology  0.76315789
    ## 208        Modified_reproduction  0.73684211
    ## 212        AddInfos_reproduction  0.73684211
    ## 49               AddRems_ecology  0.69736842
    ## 133             Modified_ecology  0.68421053
    ## 37           FeedingType_ecology  0.67105263
    ## 201    ParentalCare_reproduction  0.64473684
    ## 202   ParentalCareQ_reproduction  0.64473684
    ## 166            DepthMin_estimate  0.60526316
    ## 163         ComDepthMax_estimate  0.50000000
    ## 167            DepthMax_estimate  0.50000000
    ## 162         ComDepthMin_estimate  0.48684211
    ## 38        FeedingTypeRef_ecology  0.47368421
    ## 172              AgeMin_estimate  0.47368421
    ## 182             predator_mammals  0.43421053
    ## 173              AgeMax_estimate  0.40789474
    ## 44               DietRef_ecology  0.39473684
    ## 160                Winf_estimate  0.39473684
    ## 39             DietTroph_ecology  0.36842105
    ## 43            DietRemark_ecology  0.36842105
    ## 174         TempPrefMin_estimate  0.36842105
    ## 175        TempPrefMean_estimate  0.36842105
    ## 176         TempPrefMax_estimate  0.36842105
    ## 177              nCells_estimate  0.36842105
    ## 196        Spawning_reproduction  0.36842105
    ## 203 ParentalCareRef_reproduction  0.35526316
    ## 7               brain_body_ratio  0.34210526
    ## 41               DietTLu_ecology  0.31578947
    ## 42             DietseTLu_ecology  0.31578947
    ## 198     SpawnModRef_reproduction  0.28947368
    ## 40           DietSeTroph_ecology  0.27631579
    ## 190    MatingSystem_reproduction  0.23684211
    ## 210          Expert_reproduction  0.23684211
    ## 211     DateChecked_reproduction  0.23684211
    ## 192     MatingRefNo_reproduction  0.17105263
    ## 193   MatingQuality_reproduction  0.17105263
    ## 204     RepAquarium_reproduction  0.17105263
    ## 205      RepAquaRef_reproduction  0.17105263
    ## 96     SpecialHabitatRef_ecology  0.11842105
    ## 151             prior_r_estimate  0.11842105
    ## 152               lcl_r_estimate  0.11842105
    ## 153               ucl_r_estimate  0.11842105
    ## 154                 n_r_estimate  0.11842105
    ## 155           Comment_r_estimate  0.11842105
    ## 135               Expert_ecology  0.10526316
    ## 136          Datechecked_ecology  0.10526316
    ## 66   AssociationsRemarks_ecology  0.07894737
    ## 71          SubstrateRef_ecology  0.06578947
    ## 48               FoodRef_ecology  0.03947368
    ## 64        SchoolShoalRef_ecology  0.03947368
    ## 195     SpawnAggRef_reproduction  0.03947368
    ## 59    SchoolingFrequency_ecology  0.02631579
    ## 60    SchoolingLifestage_ecology  0.02631579
    ## 191    MonogamyType_reproduction  0.02631579
    ## 50        AssociationRef_ecology  0.01315789
    ## 62     ShoalingFrequency_ecology  0.01315789
    ## 63     ShoalingLifestage_ecology  0.01315789
    ## 65      AssociationsWith_ecology  0.01315789
    ## 68             OHRemarks_ecology  0.00000000
    ## 70             IHRemarks_ecology  0.00000000
    ## 119            OIRemarks_ecology  0.00000000
    ## 121             VRemarks_ecology  0.00000000
    ## 137                   TS_ecology  0.00000000
    ## 144      TrophPredicted_estimate  0.00000000
    ## 145    seTrophPredicted_estimate  0.00000000
    ## 157             SD_logK_estimate  0.00000000
    ## 158                Linf_estimate  0.00000000
    ## 159          SD_logLinf_estimate  0.00000000
    ## 161          LengthType_estimate  0.00000000
    ## 213              TS_reproduction  0.00000000
