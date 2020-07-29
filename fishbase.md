fishbase
================
Ilya Fischhoff, Adrian Castellanos
7/27/2020

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

    ## 
    ## Attaching package: 'caret'

    ## The following object is masked from 'package:survival':
    ## 
    ##     cluster

    ## The following object is masked from 'package:seqinr':
    ## 
    ##     dotPlot

    ## 
    ## Attaching package: 'tidyr'

    ## The following object is masked from 'package:S4Vectors':
    ## 
    ##     expand

    ## Loaded gbm 2.1.5

    ## 
    ## Attaching package: 'Matrix'

    ## The following objects are masked from 'package:tidyr':
    ## 
    ##     expand, pack, unpack

    ## The following object is masked from 'package:S4Vectors':
    ## 
    ##     expand

    ## 
    ## Attaching package: 'caTools'

    ## The following object is masked from 'package:IRanges':
    ## 
    ##     runmean

    ## The following object is masked from 'package:S4Vectors':
    ## 
    ##     runmean

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:Hmisc':
    ## 
    ##     src, summarize

    ## The following objects are masked from 'package:data.table':
    ## 
    ##     between, first, last

    ## The following objects are masked from 'package:Biostrings':
    ## 
    ##     collapse, intersect, setdiff, setequal, union

    ## The following object is masked from 'package:XVector':
    ## 
    ##     slice

    ## The following objects are masked from 'package:IRanges':
    ## 
    ##     collapse, desc, intersect, setdiff, slice, union

    ## The following objects are masked from 'package:S4Vectors':
    ## 
    ##     first, intersect, rename, setdiff, setequal, union

    ## The following objects are masked from 'package:BiocGenerics':
    ## 
    ##     combine, intersect, setdiff, union

    ## The following object is masked from 'package:seqinr':
    ## 
    ##     count

    ## The following objects are masked from 'package:plyr':
    ## 
    ##     arrange, count, desc, failwith, id, mutate, rename, summarise,
    ##     summarize

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

    ## Loading required package: raster

    ## Loading required package: sp

    ## 
    ## Attaching package: 'sp'

    ## The following object is masked from 'package:IRanges':
    ## 
    ##     %over%

    ## 
    ## Attaching package: 'raster'

    ## The following object is masked from 'package:dplyr':
    ## 
    ##     select

    ## The following object is masked from 'package:tidyr':
    ## 
    ##     extract

    ## The following objects are masked from 'package:Hmisc':
    ## 
    ##     mask, zoom

    ## The following object is masked from 'package:data.table':
    ## 
    ##     shift

    ## The following objects are masked from 'package:ape':
    ## 
    ##     rotate, zoom

    ## The following object is masked from 'package:Biostrings':
    ## 
    ##     mask

    ## The following objects are masked from 'package:IRanges':
    ## 
    ##     distance, shift, trim, values, values<-

    ## The following objects are masked from 'package:S4Vectors':
    ## 
    ##     metadata, metadata<-, values, values<-

    ## Loading required package: iterators

    ## Loading required package: snow

    ## 
    ## Attaching package: 'snow'

    ## The following objects are masked from 'package:BiocGenerics':
    ## 
    ##     clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
    ##     clusterExport, clusterMap, clusterSplit, parApply, parCapply,
    ##     parLapply, parRapply, parSapply

    ## The following objects are masked from 'package:parallel':
    ## 
    ##     clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
    ##     clusterExport, clusterMap, clusterSplit, makeCluster, parApply,
    ##     parCapply, parLapply, parRapply, parSapply, splitIndices,
    ##     stopCluster

    ## Warning: package 'rsample' was built under R version 4.0.2

    ## 
    ## Attaching package: 'rsample'

    ## The following object is masked from 'package:ape':
    ## 
    ##     complement

    ## The following object is masked from 'package:Biostrings':
    ## 
    ##     complement

    ## Warning: package 'tidyverse' was built under R version 4.0.2

    ## ── Attaching packages ────────────────────────────────────────────────────────────────────── tidyverse 1.3.0 ──

    ## ✓ tibble  3.0.1     ✓ purrr   0.3.4
    ## ✓ readr   1.3.1     ✓ forcats 0.5.0

    ## ── Conflicts ───────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
    ## x purrr::accumulate()      masks foreach::accumulate()
    ## x dplyr::arrange()         masks plyr::arrange()
    ## x dplyr::between()         masks data.table::between()
    ## x dplyr::collapse()        masks Biostrings::collapse(), IRanges::collapse()
    ## x dplyr::combine()         masks BiocGenerics::combine()
    ## x purrr::compact()         masks XVector::compact(), plyr::compact()
    ## x dplyr::count()           masks seqinr::count(), plyr::count()
    ## x dplyr::desc()            masks IRanges::desc(), plyr::desc()
    ## x Matrix::expand()         masks tidyr::expand(), S4Vectors::expand()
    ## x raster::extract()        masks tidyr::extract()
    ## x dplyr::failwith()        masks plyr::failwith()
    ## x dplyr::filter()          masks stats::filter()
    ## x dplyr::first()           masks data.table::first(), S4Vectors::first()
    ## x dplyr::id()              masks plyr::id()
    ## x dplyr::lag()             masks stats::lag()
    ## x dplyr::last()            masks data.table::last()
    ## x purrr::lift()            masks caret::lift()
    ## x dplyr::mutate()          masks plyr::mutate()
    ## x Matrix::pack()           masks tidyr::pack()
    ## x purrr::partial()         masks pdp::partial()
    ## x BiocGenerics::Position() masks ggplot2::Position(), base::Position()
    ## x purrr::reduce()          masks IRanges::reduce()
    ## x dplyr::rename()          masks S4Vectors::rename(), plyr::rename()
    ## x raster::select()         masks dplyr::select()
    ## x dplyr::slice()           masks XVector::slice(), IRanges::slice()
    ## x dplyr::src()             masks Hmisc::src()
    ## x dplyr::summarise()       masks plyr::summarise()
    ## x dplyr::summarize()       masks Hmisc::summarize(), plyr::summarize()
    ## x purrr::transpose()       masks data.table::transpose()
    ## x Matrix::unpack()         masks tidyr::unpack()
    ## x purrr::when()            masks foreach::when()

    ## Warning: package 'sf' was built under R version 4.0.2

    ## Linking to GEOS 3.8.1, GDAL 3.1.1, PROJ 6.3.1

    ## Warning: package 'mapview' was built under R version 4.0.2

    ## Warning: package 'rnaturalearth' was built under R version 4.0.2

    ## 
    ## Attaching package: 'fasterize'

    ## The following object is masked from 'package:graphics':
    ## 
    ##     plot

    ## The following object is masked from 'package:base':
    ## 
    ##     plot

\#\#function to take the same across rows of categorical variables that
have been 1/0 encoded, where a species may have 1 for more than one
condition of a variable

``` r
source("R_function_sum_or_mean.R")
```

\#\#function to replace NAs with real values for binary fields

``` r
source("R_function_keep_real_binary.R")
```

``` r
source("non_biological.R")
```

``` r
source("R_function_process_table.R")
```

\#\#settings

``` r
cutoff = 0.15#cutoff of coverage required for inclusion
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

    ## Warning: `data_frame()` is deprecated as of tibble 1.1.0.
    ## Please use `tibble()` instead.
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_warnings()` to see where this warning was generated.

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
save(DF_distribution, file = "DF_distribution_simple.Rdata")
```

``` r
load("DF_distribution_simple.Rdata")
DATA <- DF_distribution
```

Read in the FAO areas (from
<http://www.fao.org/geonetwork/srv/en/main.home?uuid=ac02a460-da52-11dc-9d70-0017f293bd28>
as described by
<http://www.fishbase.us/manual/English/FishbaseThe_FAOAREAS_Table.htm>).
It looks like our data contain both the inland and marine FAOs, so I
read in both and combined them according to a single column of FAO code.

``` r
load("DF.Rdata")
FAO <- st_read("FAO_AREAS/Marine/FAO_AREAS.shp")
```

    ## Reading layer `FAO_AREAS' from data source `/Users/fischhoff/ilya documents/R/COVID19/fishbase/FAO_AREAS/Marine/FAO_AREAS.shp' using driver `ESRI Shapefile'
    ## Simple feature collection with 324 features and 15 fields
    ## geometry type:  MULTIPOLYGON
    ## dimension:      XY
    ## bbox:           xmin: -180 ymin: -85.4703 xmax: 180 ymax: 89.99
    ## geographic CRS: WGS 84

``` r
FAO$area <- st_area(FAO)

FAO=data.frame(F_CODE = FAO$F_CODE,
               area = FAO$area)

test = FAO[1,]

arctic_tmp = subset(DATA, AreaCode_distribution == test$F_CODE)#this checks out
print(arctic_tmp$FAO_distribution)
```

    ## [1] "Arctic Ocean" "Arctic Ocean" "Arctic Ocean"

``` r
names(DATA)[names(DATA)=="AreaCode_distribution"]="F_CODE"
DATA$F_CODE = as.character(DATA$F_CODE)

#inland waters
IFAO <- st_read("FAO_AREAS/Inland/FAO_AREAS_INLAND.shp")
```

    ## Reading layer `FAO_AREAS_INLAND' from data source `/Users/fischhoff/ilya documents/R/COVID19/fishbase/FAO_AREAS/Inland/FAO_AREAS_INLAND.shp' using driver `ESRI Shapefile'
    ## Simple feature collection with 982 features and 2 fields
    ## geometry type:  POLYGON
    ## dimension:      XY
    ## bbox:           xmin: -180 ymin: -90 xmax: 180 ymax: 83.6325
    ## geographic CRS: WGS 84

``` r
IFAO$F_AREA_INL <- gsub("0", "", IFAO$F_AREA_INL)
names(IFAO)[names(IFAO)=="F_AREA_INL"]="F_CODE"
IFAO$area = st_area(IFAO)

IFAO = data.frame(F_CODE = IFAO$F_CODE,
                  area = IFAO$area)

FAO = rbind(FAO, IFAO)

species = unique(DF$Species)
a = 1
area = rep(NA, length(species))
for (a in 1:length(species)){
  DATA_tmp = subset(DATA, Species == species[a])
  FAO_tmp = subset(FAO, F_CODE %in% as.character(DATA_tmp$F_CODE))
  area[a] = sum(FAO_tmp$area, na.rm = TRUE)
}

area = area * 0.000001#convert to sq km
dist = data.frame(Species = species,
                  range_area = area)
save(dist, file = "dist.Rdata")
#convert to km2
```

\#\#check out some tables in fishbase \#\#brains: one entry for each
individual fish: BrainWeight, BodyWeight
\#\#<https://www.fishbase.in/manual/fishbasethe_brains_table.htm>

``` r
load("DF.Rdata")
load("dist.Rdata")
T = brains()
load("process_table.Rdata")
load("non_biological.Rdata")
part = "part"
brains_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = "brains", part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"     "autoctr"      "StockCode"    "BRAINSRefNo"  "Remarks"     
    ##  [6] "Entered"      "DateEntered"  "Expert"       "Modified"     "DateModified"
    ## [11] "DateChecked"  "SpecCode"     "StockCode"    "Syncode"      "Doubtful"    
    ## [16] "Name"         "Genus"        "Sex"          "Locality"     "Year"        
    ## [21] "TS"           "Locality"     "TS"          
    ## [1] "kept fields"
    ## [1] "Species"     "LifeStage"   "Number"      "BodyWeight"  "BrainWeight"
    ## [6] "EncCoeff"    "EncIndex"    "SL"          "TL"         
    ## # A tibble: 3 x 1
    ##   LifeStage
    ##   <fct>    
    ## 1 adults   
    ## 2 <NA>     
    ## 3 juveniles
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(brains_out)[1]==dim(DF)[1]
```

    ## [1] TRUE

``` r
brains_out = merge(brains_out, dist)
save(brains_out,file =  "brains_out.Rdata")
# T$brain_body_weight = T$BrainWeight/T$BodyWeight#don't need to do this because it already has EncCoeff
# source("brains_scratch.R")=
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

\#\#get ecology data
\#\#<http://fishbase.us/manual/English/FishbaseThe_ECOLOGY_Table.htm>

``` r
T<- ecology()

load("DF.Rdata")
load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")

# save(T, file="T_ecology.Rdata")
# load("T_ecology.Rdata")
load("non_biological.Rdata")
# source("ecology_scratch.R")
#part = part to just do the haddock scored species
ecology = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = "ecology", part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"            "autoctr"             "StockCode"          
    ##  [4] "EcologyRefNo"        "HabitatsRef"         "HerbivoryRef"       
    ##  [7] "FeedingTypeRef"      "DietRef"             "FoodRef"            
    ## [10] "AssociationRef"      "SchoolShoalRef"      "SubstrateRef"       
    ## [13] "SpecialHabitatRef"   "DietRemark"          "FoodRemark"         
    ## [16] "AssociationsRemarks" "OHRemarks"           "IHRemarks"          
    ## [19] "OIRemarks"           "VRemarks"            "AddRems"            
    ## [22] "Entered"             "Dateentered"         "Expert"             
    ## [25] "Datechecked"         "Modified"            "Datemodified"       
    ## [28] "SpecCode"            "StockCode"           "Cave2"              
    ## [31] "Herbivory2"          "Herbivory2"          "Cave2"              
    ## [34] "AssociationRef"      "AssociationsWith"    "AssociationsRemarks"
    ## [37] "TS"                  "FeedingType"         "FeedingTypeRef"     
    ## [40] "TS"                  "Level"              
    ## [1] "kept fields"
    ##  [1] "Species"            "Neritic"            "SupraLittoralZone" 
    ##  [4] "Saltmarshes"        "LittoralZone"       "TidePools"         
    ##  [7] "Intertidal"         "SubLittoral"        "Caves"             
    ## [10] "Oceanic"            "Epipelagic"         "Mesopelagic"       
    ## [13] "Bathypelagic"       "Abyssopelagic"      "Hadopelagic"       
    ## [16] "Estuaries"          "Mangroves"          "MarshesSwamps"     
    ## [19] "CaveAnchialine"     "Stream"             "Lakes"             
    ## [22] "Cave"               "DietTroph"          "DietSeTroph"       
    ## [25] "DietTLu"            "DietseTLu"          "FoodTroph"         
    ## [28] "FoodSeTroph"        "Parasitism"         "Solitary"          
    ## [31] "Symbiosis"          "Symphorism"         "Commensalism"      
    ## [34] "Mutualism"          "Epiphytic"          "Schooling"         
    ## [37] "SchoolingFrequency" "SchoolingLifestage" "Shoaling"          
    ## [40] "ShoalingFrequency"  "ShoalingLifestage"  "OutsideHost"       
    ## [43] "InsideHost"         "Benthic"            "Sessile"           
    ## [46] "Mobile"             "Demersal"           "Endofauna"         
    ## [49] "Pelagic"            "Megabenthos"        "Macrobenthos"      
    ## [52] "Meiobenthos"        "SoftBottom"         "Sand"              
    ## [55] "Coarse"             "Fine"               "Sloping"           
    ## [58] "Silt"               "Mud"                "Ooze"              
    ## [61] "Detritus"           "Organic"            "HardBottom"        
    ## [64] "Rocky"              "Rubble"             "Gravel"            
    ## [67] "Macrophyte"         "BedsBivalve"        "BedsRock"          
    ## [70] "SeaGrassBeds"       "BedsOthers"         "CoralReefs"        
    ## [73] "ReefExclusive"      "DropOffs"           "ReefFlats"         
    ## [76] "Lagoons"            "Burrows"            "Tunnels"           
    ## [79] "Crevices"           "Vents"              "Seamounts"         
    ## [82] "DeepWaterCorals"    "Vegetation"         "Leaves"            
    ## [85] "Stems"              "Roots"              "Driftwood"         
    ## [88] "OInverterbrates"    "Verterbrates"       "Pilings"           
    ## [91] "BoatHulls"          "Corals"             "SoftCorals"        
    ## [94] "OnPolyp"            "BetweenPolyps"      "HardCorals"        
    ## [97] "OnExoskeleton"      "InterstitialSpaces"
    ## [1] "T_b_single_sum, Species field count"
    ## [1] 1
    ## [1] "T_b_multiple_sum, Species field count"
    ## [1] 1
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
str_which(names(ecology),"Species")
```

    ## [1] 1

``` r
dim(ecology)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(ecology, file = "ecology.Rdata")

load("brains_out.Rdata")
out = brains_out
dim(ecology)[1]==dim(brains_out)[1]
```

    ## [1] TRUE

``` r
length(str_which(names(ecology),"Species"))
```

    ## [1] 1

``` r
length(str_which(names(brains_out),"Species"))
```

    ## [1] 1

``` r
table_out = ecology
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])

# out = merge(ecology, brains_out) 
save(out, file = "out.Rdata")

length(str_which(names(out),"Species"))
```

    ## [1] 1

\#\#distribution \#\#currently this is ~ FAO areas table (minus “note”
field) e.g. <http://www.fishbase.us/Country/FaoAreaList.php?ID=5537>
\#\#each species may have multiple bounding boxes

``` r
rm(table_out)
table_name = "distribution"
T<-distribution()

#check out fields
T[sapply(T, is.character)] <- lapply(T[sapply(T, is.character)], 
                                       as.factor)
T_f <- T %>%  select_if(is.factor)
summary(T_f)
```

    ##                   Species               Status     
    ##  Oreochromis niloticus:   42   native      :37546  
    ##  Cyprinus carpio      :   35   endemic     :22459  
    ##  Clupea harengus      :   28   questionable:  808  
    ##  Squalus acanthias    :   24   introduced  :  647  
    ##  Salmo trutta         :   21   stray       :    7  
    ##  Gadus morhua         :   20   (Other)     :    2  
    ##  (Other)              :61371   NA's        :   72  
    ##                              FAO       
    ##  Pacific, Western Central      : 6818  
    ##  Asia - Inland waters          : 6073  
    ##  America, South - Inland waters: 5585  
    ##  Pacific, Northwest            : 5440  
    ##  Indian Ocean, Eastern         : 4858  
    ##  (Other)                       :32695  
    ##  NA's                          :   72  
    ##                                        Note         N_S          E_W       
    ##  77<b0>E - 150<b0>E; 55<b0>S - 24<b0>N   : 4858   N   :37091   E   :35875  
    ##  30<b0> E - 80<b0> E; 45<b0> S - 30<b0> N: 4608   S   :24378   W   :25594  
    ##  Complete                                : 3653   NA's:   72   NA's:   72  
    ##  includes Central America                : 1850                            
    ##  excludes former USSR                    :  718                            
    ##  (Other)                                 :  683                            
    ##  NA's                                    :45171                            
    ##  NorthernLatitudeNS SouthernLatitudeNS WesternLongitudeEW EasternLongitudeEW
    ##  N   :56672         N   :14623         E   :31468         E   :26075        
    ##  S   : 4797         S   :46846         W   :30001         W   :35394        
    ##  NA's:   72         NA's:   72         NA's:   72         NA's:   72        
    ##                                                                             
    ##                                                                             
    ##                                                                             
    ##                                                                             
    ##          ContinentGrp  
    ##  Pacific Ocean :21587  
    ##  Atlantic Ocean:10481  
    ##  Indian Ocean  : 9718  
    ##  Asia          : 6073  
    ##  South America : 5585  
    ##  (Other)       : 7848  
    ##  NA's          :  249

``` r
T_n <- T %>%  select_if(is.numeric)
summary(T_n)
```

    ##     SpecCode        autoctr         AreaCode       StockCode    
    ##  Min.   :    2   Min.   :    1   Min.   : 1.00   Min.   :    1  
    ##  1st Qu.: 5554   1st Qu.:15892   1st Qu.: 4.00   1st Qu.: 5903  
    ##  Median :12342   Median :31860   Median :51.00   Median :12820  
    ##  Mean   :25406   Mean   :33495   Mean   :41.32   Mean   :22212  
    ##  3rd Qu.:52549   3rd Qu.:49038   3rd Qu.:71.00   3rd Qu.:43893  
    ##  Max.   :68984   Max.   :73489   Max.   :88.00   Max.   :60616  
    ##                  NA's   :72      NA's   :72      NA's   :72     
    ##     Entered          Modified.x         Expert         Coastline     
    ##  Min.   :   0.00   Min.   :   1.0   Min.   :   1.0   Min.   : 30663  
    ##  1st Qu.:  10.00   1st Qu.:  10.0   1st Qu.: 113.0   1st Qu.: 30663  
    ##  Median :  14.00   Median : 113.0   Median : 113.0   Median : 61565  
    ##  Mean   :  97.89   Mean   : 215.2   Mean   : 113.6   Mean   : 93333  
    ##  3rd Qu.:  97.00   3rd Qu.: 113.0   3rd Qu.: 113.0   3rd Qu.:163609  
    ##  Max.   :2579.00   Max.   :2579.0   Max.   :2052.0   Max.   :183950  
    ##  NA's   :72        NA's   :52310    NA's   :58509    NA's   :42877   
    ##      Shelf             EEZarea          LatDeg          LatMin  
    ##  Min.   :    1326   Min.   :10125   Min.   : 4.00   Min.   :0   
    ##  1st Qu.:    6769   1st Qu.:10125   1st Qu.:14.00   1st Qu.:0   
    ##  Median :18594000   Median :18759   Median :25.00   Median :0   
    ##  Mean   :18242758   Mean   :15847   Mean   :23.26   Mean   :0   
    ##  3rd Qu.:30198000   3rd Qu.:20258   3rd Qu.:32.00   3rd Qu.:0   
    ##  Max.   :48899000   Max.   :28420   Max.   :77.00   Max.   :0   
    ##  NA's   :80         NA's   :42877   NA's   :72      NA's   :72  
    ##     LongDeg          LongMin     NeighborN      NeighborS       NeighborW    
    ##  Min.   :  1.00   Min.   :0    Min.   : 2.0   Min.   : 1.00   Min.   : 5.00  
    ##  1st Qu.: 55.00   1st Qu.:0    1st Qu.:18.0   1st Qu.:41.00   1st Qu.:34.00  
    ##  Median : 91.00   Median :0    Median :37.0   Median :58.00   Median :51.00  
    ##  Mean   : 89.89   Mean   :0    Mean   :41.4   Mean   :54.73   Mean   :47.49  
    ##  3rd Qu.:140.00   3rd Qu.:0    3rd Qu.:67.0   3rd Qu.:81.00   3rd Qu.:57.00  
    ##  Max.   :190.00   Max.   :0    Max.   :81.0   Max.   :88.00   Max.   :87.00  
    ##  NA's   :72       NA's   :72   NA's   :6470   NA's   :10945   NA's   :21721  
    ##    NeighborE     NorthernLatitude SouthernLatitude WesternLongitude
    ##  Min.   : 4.00   Min.   : 5.00    Min.   : 5.00    Min.   :  7.00  
    ##  1st Qu.:37.00   1st Qu.:20.00    1st Qu.:15.00    1st Qu.: 30.00  
    ##  Median :77.00   Median :35.00    Median :35.00    Median : 98.00  
    ##  Mean   :58.87   Mean   :37.03    Mean   :33.99    Mean   : 83.34  
    ##  3rd Qu.:77.00   3rd Qu.:54.00    3rd Qu.:53.00    3rd Qu.:110.00  
    ##  Max.   :87.00   Max.   :90.00    Max.   :85.00    Max.   :180.00  
    ##  NA's   :15099   NA's   :72       NA's   :72       NA's   :72      
    ##  EasternLongitude FamiliesCount     FamiliesNo     FamiliesRef   
    ##  Min.   : 13.00   Min.   :  2.0   Min.   :221.0   Min.   : 167   
    ##  1st Qu.: 42.00   1st Qu.:134.0   1st Qu.:221.0   1st Qu.: 167   
    ##  Median : 80.00   Median :261.0   Median :236.0   Median : 230   
    ##  Mean   : 99.57   Mean   :237.2   Mean   :244.9   Mean   :2295   
    ##  3rd Qu.:155.00   3rd Qu.:331.0   3rd Qu.:270.0   3rd Qu.:6063   
    ##  Max.   :179.00   Max.   :345.0   Max.   :270.0   Max.   :6063   
    ##  NA's   :72       NA's   :72      NA's   :56730   NA's   :56730  
    ##   SpeciesCount    SpeciesNo       SpeciesRef     FamFisheries SpecFisheries   
    ##  Min.   :   7   Min.   : 110    Min.   :  167   Min.   :  2   Min.   :   7.0  
    ##  1st Qu.:1921   1st Qu.: 924    1st Qu.: 1468   1st Qu.:102   1st Qu.: 468.0  
    ##  Median :4437   Median :2200    Median : 1602   Median :159   Median : 843.0  
    ##  Mean   :3941   Mean   :2181    Mean   : 6004   Mean   :144   Mean   : 918.7  
    ##  3rd Qu.:5307   3rd Qu.:3700    3rd Qu.:12267   3rd Qu.:200   3rd Qu.:1519.0  
    ##  Max.   :6486   Max.   :4000    Max.   :12267   Max.   :209   Max.   :1596.0  
    ##  NA's   :72     NA's   :17102   NA's   :15585   NA's   :72    NA's   :72      
    ##     FamAqua        SpecAqua         FamBait         SpecBait    
    ##  Min.   : 0.0   Min.   :  0.00   Min.   : 0.00   Min.   : 0.00  
    ##  1st Qu.:23.0   1st Qu.: 53.00   1st Qu.:14.00   1st Qu.:20.00  
    ##  Median :29.0   Median : 77.00   Median :19.00   Median :40.00  
    ##  Mean   :29.1   Mean   : 87.98   Mean   :17.49   Mean   :41.15  
    ##  3rd Qu.:39.0   3rd Qu.: 98.00   3rd Qu.:24.00   3rd Qu.:62.00  
    ##  Max.   :48.0   Max.   :245.00   Max.   :25.00   Max.   :68.00  
    ##  NA's   :72     NA's   :72       NA's   :72      NA's   :72     
    ##   FamOrnament     SpecOrnament      FamSport       SpecSport    
    ##  Min.   : 0.00   Min.   :  0.0   Min.   : 0.00   Min.   :  0.0  
    ##  1st Qu.:39.00   1st Qu.:259.0   1st Qu.:50.00   1st Qu.:148.0  
    ##  Median :57.00   Median :531.0   Median :72.00   Median :212.0  
    ##  Mean   :57.29   Mean   :507.8   Mean   :65.15   Mean   :237.9  
    ##  3rd Qu.:73.00   3rd Qu.:769.0   3rd Qu.:86.00   3rd Qu.:342.0  
    ##  Max.   :85.00   Max.   :885.0   Max.   :89.00   Max.   :363.0  
    ##  NA's   :72      NA's   :72      NA's   :72      NA's   :72     
    ##     FamHuman       SpecHuman      FamThreat       SpecThreat   
    ##  Min.   :  2.0   Min.   :   7   Min.   : 0.00   Min.   :  0.0  
    ##  1st Qu.:112.0   1st Qu.: 754   1st Qu.:31.00   1st Qu.: 70.0  
    ##  Median :167.0   Median :1163   Median :36.00   Median : 98.0  
    ##  Mean   :155.4   Mean   :1265   Mean   :35.76   Mean   :170.5  
    ##  3rd Qu.:213.0   3rd Qu.:1924   3rd Qu.:47.00   3rd Qu.:128.0  
    ##  Max.   :225.0   Max.   :2172   Max.   :51.00   Max.   :644.0  
    ##  NA's   :72      NA's   :72     NA's   :72      NA's   :72     
    ##     FamIntro        SpecIntro        FamDanger       SpecDanger   
    ##  Min.   : 0.000   Min.   :  0.00   Min.   : 0.00   Min.   :  0.0  
    ##  1st Qu.: 2.000   1st Qu.:  3.00   1st Qu.:43.00   1st Qu.: 98.0  
    ##  Median : 3.000   Median :  3.00   Median :63.00   Median :216.0  
    ##  Mean   : 7.741   Mean   : 26.77   Mean   :57.71   Mean   :252.8  
    ##  3rd Qu.:11.000   3rd Qu.: 62.00   3rd Qu.:79.00   3rd Qu.:393.0  
    ##  Max.   :62.000   Max.   :105.00   Max.   :82.00   Max.   :463.0  
    ##  NA's   :72       NA's   :72       NA's   :72      NA's   :72     
    ##     Complete       CompleteRef   
    ##  Min.   :-1.000   Min.   : 167   
    ##  1st Qu.:-1.000   1st Qu.: 556   
    ##  Median :-1.000   Median : 556   
    ##  Mean   :-0.889   Mean   :1138   
    ##  3rd Qu.:-1.000   3rd Qu.: 594   
    ##  Max.   : 0.000   Max.   :5152   
    ##  NA's   :72       NA's   :47251

``` r
load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"           "autoctr"            "StockCode"         
    ##  [4] "FamiliesRef"        "SpeciesRef"         "CompleteRef"       
    ##  [7] "Entered"            "DateEntered"        "Expert"            
    ## [10] "Modified.x"         "DateModified"       "Modified.y"        
    ## [13] "DateChecked"        "SpecCode"           "AreaCode"          
    ## [16] "StockCode"          "WesternLongitudeEW" "EasternLongitudeEW"
    ## [19] "NorthernLatitudeNS" "SouthernLatitudeNS" "N_S"               
    ## [22] "E_W"                "Note"               "LatDeg"            
    ## [25] "LatMin"             "NorthernLatitude"   "NorthernLatitudeNS"
    ## [28] "SouthernLatitude"   "SouthernLatitudeNS" "LongDeg"           
    ## [31] "LongMin"            "WesternLongitude"   "WesternLongitudeEW"
    ## [34] "EasternLongitude"   "EasternLongitudeEW" "NeighborN"         
    ## [37] "NeighborS"          "NeighborW"          "NeighborE"         
    ## [40] "NorthernLatitude"   "NorthernLatitudeNS" "SouthernLatitude"  
    ## [43] "SouthernLatitudeNS" "WesternLongitude"   "WesternLongitudeEW"
    ## [46] "EasternLongitude"   "EasternLongitudeEW" "FamiliesCount"     
    ## [49] "FamiliesNo"         "FamiliesRef"        "SpeciesCount"      
    ## [52] "SpeciesNo"          "FamFisheries"       "SpecFisheries"     
    ## [55] "FamiliesCount"      "FamiliesNo"         "FamiliesRef"       
    ## [58] "FamFisheries"       "FamAqua"            "FamBait"           
    ## [61] "FamOrnament"        "FamSport"           "FamHuman"          
    ## [64] "FamThreat"          "FamIntro"           "FamDanger"         
    ## [67] "SpecBait"           "SpecAqua"           "FamOrnament"       
    ## [70] "SpecOrnament"       "SpecHuman"          "SpecThreat"        
    ## [73] "SpecIntro"          "SpecDanger"         "Complete"          
    ## [76] "CompleteRef"        "FAO"                "TS.x"              
    ## [79] "TS.y"               "TS.x"               "TS.y"              
    ## [1] "kept fields"
    ## [1] "Species"      "Status"       "Coastline"    "Shelf"        "EEZarea"     
    ## [6] "SpecSport"    "ContinentGrp"
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "Coastline_distribution"                      
    ##  [2] "Shelf_distribution"                          
    ##  [3] "EEZarea_distribution"                        
    ##  [4] "SpecSport_distribution"                      
    ##  [5] "Statusendemic_distribution"                  
    ##  [6] "Statusintroduced_distribution"               
    ##  [7] "Statusnative_distribution"                   
    ##  [8] "Statusquestionable_distribution"             
    ##  [9] "ContinentGrpafrica_distribution"             
    ## [10] "ContinentGrpasia_distribution"               
    ## [11] "ContinentGrpatlantic.ocean_distribution"     
    ## [12] "ContinentGrpeurope..form.ussr_distribution"  
    ## [13] "ContinentGrpindian.ocean_distribution"       
    ## [14] "ContinentGrpmed.black.sea_distribution"      
    ## [15] "ContinentGrpnorth.centr.america_distribution"
    ## [16] "ContinentGrpoceania_distribution"            
    ## [17] "ContinentGrppacific.ocean_distribution"      
    ## [18] "ContinentGrpsouth.america_distribution"      
    ## [19] "record_count_species_distribution"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  Coastline_distribution Shelf_distribution EEZarea_distribution
    ##  Min.   : 30663         Min.   :    1326   Min.   :10125       
    ##  1st Qu.: 91223         1st Qu.:    4504   1st Qu.:15192       
    ##  Median :113778         Median : 1029208   Median :18759       
    ##  Mean   :115009         Mean   : 8331824   Mean   :17616       
    ##  3rd Qu.:163609         3rd Qu.:16587689   3rd Qu.:20258       
    ##  Max.   :183950         Max.   :32517600   Max.   :24339       
    ##  NA's   :19                                NA's   :19          
    ##  SpecSport_distribution Statusendemic_distribution
    ##  Min.   :  2.667        0:46                      
    ##  1st Qu.:139.000        1:26                      
    ##  Median :162.036                                  
    ##  Mean   :185.192                                  
    ##  3rd Qu.:208.325                                  
    ##  Max.   :350.400                                  
    ##                                                   
    ##  Statusintroduced_distribution Statusnative_distribution
    ##  0:52                          0:25                     
    ##  1:20                          1:47                     
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##  Statusquestionable_distribution ContinentGrpafrica_distribution
    ##  0:69                            0   :48                        
    ##  1: 3                            1   :21                        
    ##                                  NA's: 3                        
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##  ContinentGrpasia_distribution ContinentGrpatlantic.ocean_distribution
    ##  0   :40                       0   :52                                
    ##  1   :29                       1   :17                                
    ##  NA's: 3                       NA's: 3                                
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##  ContinentGrpeurope..form.ussr_distribution
    ##  0   :59                                   
    ##  1   :10                                   
    ##  NA's: 3                                   
    ##                                            
    ##                                            
    ##                                            
    ##                                            
    ##  ContinentGrpindian.ocean_distribution ContinentGrpmed.black.sea_distribution
    ##  0   :56                               0   :62                               
    ##  1   :13                               1   : 7                               
    ##  NA's: 3                               NA's: 3                               
    ##                                                                              
    ##                                                                              
    ##                                                                              
    ##                                                                              
    ##  ContinentGrpnorth.centr.america_distribution ContinentGrpoceania_distribution
    ##  0   :45                                      0   :55                         
    ##  1   :24                                      1   :14                         
    ##  NA's: 3                                      NA's: 3                         
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##  ContinentGrppacific.ocean_distribution ContinentGrpsouth.america_distribution
    ##  0   :48                                0   :55                               
    ##  1   :21                                1   :14                               
    ##  NA's: 3                                NA's: 3                               
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##  record_count_species_distribution
    ##  Min.   : 1.00                    
    ##  1st Qu.: 1.00                    
    ##  Median : 2.00                    
    ##  Mean   : 4.75                    
    ##  3rd Qu.: 5.00                    
    ##  Max.   :42.00                    
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
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

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 18

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 27

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 25

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 24

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 16

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 1

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 5

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 9

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 3

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 1

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 3

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 11

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 7

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 44

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 82

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 28

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 4

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 6

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 9

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 11

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 8

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 77

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 3

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 8

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 110

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 4

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 10

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 24

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 11

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 2

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 3

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 19

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 10

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 22

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 4

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 37

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 4

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 19

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 2

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 11

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 43

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 2

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 1

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 4

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 53

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 15

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 86

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 1

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 5

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 8

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 8

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 13

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 12

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 2

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 7

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 2

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 17

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 5

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 29

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 80

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 2

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 73

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 31

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 2

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 1

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 29

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 6

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 14

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 7

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 2

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 9

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

    ## [1] 5

``` r
summary(out)
```

    ##     SpecCode       Species             autoctr           E_CODE      
    ##  Min.   :    2   Length:1296        Min.   :    26   Min.   :   1.0  
    ##  1st Qu.:  258   Class :character   1st Qu.: 51320   1st Qu.: 134.0  
    ##  Median :  572   Mode  :character   Median : 95851   Median : 289.0  
    ##  Mean   : 3422                      Mean   :102651   Mean   : 434.3  
    ##  3rd Qu.: 3652                      3rd Qu.:125023   3rd Qu.: 578.5  
    ##  Max.   :67194                      Max.   :249865   Max.   :1814.0  
    ##                                                                      
    ##  EcosystemRefno     Stockcode        Status          CurrentPresence   
    ##  Min.   :     2   Min.   :    1   Length:1296        Length:1296       
    ##  1st Qu.:  7247   1st Qu.:  272   Class :character   Class :character  
    ##  Median : 36670   Median : 1021   Mode  :character   Mode  :character  
    ##  Mean   : 40815   Mean   : 3696                                        
    ##  3rd Qu.: 59043   3rd Qu.: 4009                                        
    ##  Max.   :119696   Max.   :58289                                        
    ##  NA's   :6                                                             
    ##   Abundance          LifeStage          Remarks.x           Entered.x     
    ##  Length:1296        Length:1296        Length:1296        Min.   :   1.0  
    ##  Class :character   Class :character   Class :character   1st Qu.:  10.0  
    ##  Mode  :character   Mode  :character   Mode  :character   Median : 113.0  
    ##                                                           Mean   : 495.6  
    ##                                                           3rd Qu.: 949.0  
    ##                                                           Max.   :2542.0  
    ##                                                                           
    ##   Dateentered                    Modified.x      Datemodified                
    ##  Min.   :1990-10-19 00:00:00   Min.   :   1.0   Min.   :1994-02-17 00:00:00  
    ##  1st Qu.:1999-03-02 00:00:00   1st Qu.:   1.0   1st Qu.:2001-11-16 00:00:00  
    ##  Median :2004-01-31 00:00:00   Median :  10.0   Median :2004-02-26 00:00:00  
    ##  Mean   :2004-05-03 07:46:33   Mean   : 402.5   Mean   :2007-03-28 08:21:32  
    ##  3rd Qu.:2011-10-27 00:00:00   3rd Qu.: 675.0   3rd Qu.:2011-10-28 00:00:00  
    ##  Max.   :2019-04-04 00:00:00   Max.   :2542.0   Max.   :2019-04-04 00:00:00  
    ##                                NA's   :809      NA's   :5                    
    ##     Expert.x     Datechecked                     WebURL            TS.x        
    ##  Min.   :   1   Min.   :2001-05-02 00:00:00   Length:1296        Mode:logical  
    ##  1st Qu.: 393   1st Qu.:2001-05-23 00:00:00   Class :character   NA's:1296     
    ##  Median : 393   Median :2001-06-14 00:00:00   Mode  :character                 
    ##  Mean   : 335   Mean   :2001-10-28 02:21:34                                    
    ##  3rd Qu.: 393   3rd Qu.:2001-06-28 00:00:00                                    
    ##  Max.   :1873   Max.   :2006-07-10 00:00:00                                    
    ##  NA's   :1174   NA's   :1197                                                   
    ##  EcosystemName      EcosystemType           MEOW              LME         
    ##  Length:1296        Length:1296        Min.   :-1.0000   Min.   :-1.0000  
    ##  Class :character   Class :character   1st Qu.: 0.0000   1st Qu.: 0.0000  
    ##  Mode  :character   Mode  :character   Median : 0.0000   Median : 0.0000  
    ##                                        Mean   :-0.1207   Mean   :-0.2175  
    ##                                        3rd Qu.: 0.0000   3rd Qu.: 0.0000  
    ##                                        Max.   : 0.0000   Max.   : 0.0000  
    ##                                        NA's   :4         NA's   :4        
    ##   E_CODE_Large  E_CODE_Larger  E_CODE_Largest   E_CODE_Ecoregion
    ##  Min.   :  11   Min.   :   0   Min.   : 7.000   Min.   : 246    
    ##  1st Qu.: 266   1st Qu.:1206   1st Qu.: 8.000   1st Qu.:1393    
    ##  Median :1340   Median :1207   Median : 9.000   Median :1479    
    ##  Mean   :1043   Mean   :1102   Mean   : 8.475   Mean   :1404    
    ##  3rd Qu.:1365   3rd Qu.:1210   3rd Qu.: 9.000   3rd Qu.:1493    
    ##  Max.   :1610   Max.   :1216   Max.   :10.000   Max.   :1533    
    ##  NA's   :920    NA's   :855    NA's   :749      NA's   :1058    
    ##     MEOWCode      MEOWLevel             Ready         OtherNames       
    ##  Min.   :    1   Length:1296        Min.   :-1.000   Length:1296       
    ##  1st Qu.:   33   Class :character   1st Qu.:-1.000   Class :character  
    ##  Median :20024   Mode  :character   Median :-1.000   Mode  :character  
    ##  Mean   :12736                      Mean   :-0.839                     
    ##  3rd Qu.:20052                      3rd Qu.:-1.000                     
    ##  Max.   :25185                      Max.   : 0.000                     
    ##  NA's   :1138                       NA's   :4                          
    ##    Location         LocationMap          Salinity          RiverLength    
    ##  Length:1296        Length:1296        Length:1296        Min.   :  14.0  
    ##  Class :character   Class :character   Class :character   1st Qu.: 530.2  
    ##  Mode  :character   Mode  :character   Mode  :character   Median :1575.0  
    ##                                                           Mean   :2068.7  
    ##                                                           3rd Qu.:3688.0  
    ##                                                           Max.   :6695.0  
    ##                                                           NA's   :1082    
    ##       Area              SizeRef       DrainageArea       NorthernLat   
    ##  Min.   :       45   Min.   : 6232   Min.   :    2346   Min.   : 0.00  
    ##  1st Qu.:   371650   1st Qu.: 6232   1st Qu.:  165760   1st Qu.:14.00  
    ##  Median :   968706   Median : 6232   Median :  980000   Median :30.00  
    ##  Mean   : 14843384   Mean   :18400   Mean   :10014556   Mean   :33.54  
    ##  3rd Qu.:  2266995   3rd Qu.:26883   3rd Qu.: 6212500   3rd Qu.:48.00  
    ##  Max.   :165384000   Max.   :93252   Max.   :69000000   Max.   :90.00  
    ##  NA's   :865         NA's   :972     NA's   :1074       NA's   :302    
    ##    NrangeNS          SouthernLat     SrangeNS           WesternLat    
    ##  Length:1296        Min.   : 0.0   Length:1296        Min.   :  0.00  
    ##  Class :character   1st Qu.:12.0   Class :character   1st Qu.: 33.00  
    ##  Mode  :character   Median :24.0   Mode  :character   Median : 95.50  
    ##                     Mean   :28.4                      Mean   : 83.99  
    ##                     3rd Qu.:43.0                      3rd Qu.:121.00  
    ##                     Max.   :86.0                      Max.   :180.00  
    ##                     NA's   :308                       NA's   :304     
    ##    WrangeEW           EasternLat       ErangeEW           Climate         
    ##  Length:1296        Min.   :  0.00   Length:1296        Length:1296       
    ##  Class :character   1st Qu.: 43.00   Class :character   Class :character  
    ##  Mode  :character   Median : 92.00   Mode  :character   Mode  :character  
    ##                     Mean   : 88.84                                        
    ##                     3rd Qu.:127.00                                        
    ##                     Max.   :180.00                                        
    ##                     NA's   :310                                           
    ##      Polar              Boreal           Temperate        Subtropical     
    ##  Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000  
    ##  1st Qu.: 0.00000   1st Qu.: 0.00000   1st Qu.: 0.0000   1st Qu.:-1.0000  
    ##  Median : 0.00000   Median : 0.00000   Median : 0.0000   Median : 0.0000  
    ##  Mean   :-0.02709   Mean   :-0.08669   Mean   :-0.2399   Mean   :-0.2632  
    ##  3rd Qu.: 0.00000   3rd Qu.: 0.00000   3rd Qu.: 0.0000   3rd Qu.: 0.0000  
    ##  Max.   : 0.00000   Max.   : 0.00000   Max.   : 0.0000   Max.   : 0.0000  
    ##  NA's   :4          NA's   :4          NA's   :4         NA's   :4        
    ##     Tropical        AverageDepth     MaxDepth        DepthRef    
    ##  Min.   :-1.0000   Min.   :   2   Min.   :    3   Min.   : 6232  
    ##  1st Qu.:-1.0000   1st Qu.:  55   1st Qu.:  108   1st Qu.: 6232  
    ##  Median : 0.0000   Median :3600   Median :  700   Median : 6316  
    ##  Mean   :-0.4296   Mean   :2133   Mean   : 4133   Mean   :15887  
    ##  3rd Qu.: 0.0000   3rd Qu.:4000   3rd Qu.: 9220   3rd Qu.:27768  
    ##  Max.   : 0.0000   Max.   :4200   Max.   :11524   Max.   :86351  
    ##  NA's   :4         NA's   :1196   NA's   :1149    NA's   :1164   
    ##   TempSurface    TempSurfaceMap       TempDepth     TempDepthMap      
    ##  Min.   :-1.00   Length:1296        Min.   :-1.20   Length:1296       
    ##  1st Qu.:12.50   Class :character   1st Qu.:12.00   Class :character  
    ##  Median :22.00   Mode  :character   Median :18.00   Mode  :character  
    ##  Mean   :19.33                      Mean   :15.85                     
    ##  3rd Qu.:26.52                      3rd Qu.:22.00                     
    ##  Max.   :28.80                      Max.   :27.50                     
    ##  NA's   :908                        NA's   :908                       
    ##  Description          TotalCount     TotalFamCount    TotalComplete   
    ##  Length:1296        Min.   :   1.0   Min.   :  0.00   Min.   :-1.000  
    ##  Class :character   1st Qu.:  58.0   1st Qu.: 18.00   1st Qu.:-1.000  
    ##  Mode  :character   Median : 253.0   Median : 63.00   Median : 0.000  
    ##                     Mean   : 944.1   Mean   : 89.05   Mean   :-0.267  
    ##                     3rd Qu.: 929.0   3rd Qu.:135.25   3rd Qu.: 0.000  
    ##                     Max.   :8674.0   Max.   :403.00   Max.   : 0.000  
    ##                     NA's   :11       NA's   :4        NA's   :4       
    ##     TotalLit       TotalFamLit        TotalRef        UseFlag       
    ##  Min.   :  15.0   Min.   : 10.00   Min.   : 5152   Min.   :-1.0000  
    ##  1st Qu.:  61.0   1st Qu.: 14.00   1st Qu.:30553   1st Qu.:-1.0000  
    ##  Median : 149.0   Median : 29.00   Median :30553   Median :-1.0000  
    ##  Mean   : 321.6   Mean   : 46.16   Mean   :32155   Mean   :-0.5797  
    ##  3rd Qu.: 350.0   3rd Qu.: 49.00   3rd Qu.:35388   3rd Qu.: 0.0000  
    ##  Max.   :2500.0   Max.   :198.00   Max.   :96325   Max.   : 0.0000  
    ##  NA's   :1122     NA's   :1143     NA's   :1004    NA's   :4        
    ##    Comments          Remarks.y           LastUpdate                 
    ##  Length:1296        Length:1296        Min.   :2018-02-22 00:00:00  
    ##  Class :character   Class :character   1st Qu.:2018-02-22 00:00:00  
    ##  Mode  :character   Mode  :character   Median :2018-02-22 00:00:00  
    ##                                        Mean   :2018-02-25 11:27:40  
    ##                                        3rd Qu.:2018-02-22 00:00:00  
    ##                                        Max.   :2019-03-27 00:00:00  
    ##                                        NA's   :4                    
    ##    LatDegFill      LatMinFill     NorthSouthFill      LongDegFill    
    ##  Min.   : 0.00   Min.   :  0.00   Length:1296        Min.   :  0.00  
    ##  1st Qu.:12.00   1st Qu.:  0.00   Class :character   1st Qu.: 29.00  
    ##  Median :23.50   Median : 17.00   Mode  :character   Median : 84.00  
    ##  Mean   :27.29   Mean   : 22.96                      Mean   : 79.23  
    ##  3rd Qu.:40.00   3rd Qu.: 40.00                      3rd Qu.:121.00  
    ##  Max.   :84.00   Max.   :587.00                      Max.   :179.00  
    ##  NA's   :216     NA's   :216                         NA's   :216     
    ##   LongMinFill    EastWestFill       EcosystemURL1      EcosystemURL2     
    ##  Min.   : 0.00   Length:1296        Length:1296        Length:1296       
    ##  1st Qu.: 0.00   Class :character   Class :character   Class :character  
    ##  Median :14.00   Mode  :character   Mode  :character   Mode  :character  
    ##  Mean   :18.29                                                           
    ##  3rd Qu.:33.25                                                           
    ##  Max.   :59.00                                                           
    ##  NA's   :216                                                             
    ##  EcosystemURL3        Entered.y       DateEntered                 
    ##  Length:1296        Min.   :   1.0   Min.   :1993-11-24 00:00:00  
    ##  Class :character   1st Qu.:   1.0   1st Qu.:1994-02-18 00:00:00  
    ##  Mode  :character   Median :  34.0   Median :2002-08-23 12:00:00  
    ##                     Mean   : 276.1   Mean   :2002-11-06 12:28:58  
    ##                     3rd Qu.: 393.0   3rd Qu.:2009-09-17 00:00:00  
    ##                     Max.   :1560.0   Max.   :2018-02-15 00:00:00  
    ##                     NA's   :4        NA's   :4                    
    ##    Modified.y      DateModified                    Expert.y    
    ##  Min.   :   1.0   Min.   :2018-02-22 00:00:00   Min.   :  2.0  
    ##  1st Qu.: 303.0   1st Qu.:2018-02-22 00:00:00   1st Qu.:949.0  
    ##  Median : 949.0   Median :2018-02-22 00:00:00   Median :949.0  
    ##  Mean   : 696.4   Mean   :2018-02-25 18:41:14   Mean   :881.2  
    ##  3rd Qu.: 949.0   3rd Qu.:2018-02-22 00:00:00   3rd Qu.:949.0  
    ##  Max.   :1868.0   Max.   :2019-03-27 00:00:00   Max.   :949.0  
    ##  NA's   :302      NA's   :4                     NA's   :1157   
    ##   DateChecked                  EcosystemName_German
    ##  Min.   :2002-09-12 00:00:00   Length:1296         
    ##  1st Qu.:2012-06-06 00:00:00   Class :character    
    ##  Median :2012-06-06 00:00:00   Mode  :character    
    ##  Mean   :2012-03-04 08:06:54                       
    ##  3rd Qu.:2012-06-07 00:00:00                       
    ##  Max.   :2015-11-28 00:00:00                       
    ##  NA's   :1157                                      
    ##  EcosystemName_Russian_original EcosystemName_Russian EcosystemName_French
    ##  Length:1296                    Length:1296           Length:1296         
    ##  Class :character               Class :character      Class :character    
    ##  Mode  :character               Mode  :character      Mode  :character    
    ##                                                                           
    ##                                                                           
    ##                                                                           
    ##                                                                           
    ##  EcosystemName_Chinese EcosystemName_Dutch EcosystemName_Italian
    ##  Mode:logical          Length:1296         Length:1296          
    ##  NA's:1296             Class :character    Class :character     
    ##                        Mode  :character    Mode  :character     
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##  EcosystemName_Swedish EcosystemName_Greek_original EcosystemName_Greek
    ##  Length:1296           Length:1296                  Length:1296        
    ##  Class :character      Class :character             Class :character   
    ##  Mode  :character      Mode  :character             Mode  :character   
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##  EcosystemName_Portuguese EcosystemName_Spanish EcosystemName_Chinese_u
    ##  Length:1296              Length:1296           Mode:logical           
    ##  Class :character         Class :character      NA's:1296              
    ##  Mode  :character         Mode  :character                             
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##    TS.y        
    ##  Mode:logical  
    ##  NA's:1296     
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
rm(table_out)
table_name = "estimate"
T<- estimate()

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
# source("ecology_scratch.R")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "LastModified" "SpecCode"     "Comment_r"    "LastModified" "SpecCode"    
    ##  [6] "MaxLengthTL"  "LengthType"   "MaxLengthSL"  "Method_ab"    "nCells"      
    ## [11] "LengthType"   "MaxLengthTL"  "LengthType"   "MaxLengthSL"  "MaxLengthTL" 
    ## [16] "LengthType"   "MaxLengthSL" 
    ## [1] "kept fields"
    ##  [1] "Species"           "TLObserved"        "Troph"            
    ##  [4] "seTroph"           "TrophObserved"     "TrophPredicted"   
    ##  [7] "seTrophPredicted"  "a"                 "sd_log10a"        
    ## [10] "b"                 "sd_b"              "prior_r"          
    ## [13] "lcl_r"             "ucl_r"             "n_r"              
    ## [16] "K"                 "SD_logK"           "Linf"             
    ## [19] "SD_logLinf"        "Winf"              "ComDepthMin"      
    ## [22] "ComDepthMax"       "ComDepMinObserved" "ComDepMaxObserved"
    ## [25] "DepthMin"          "DepthMax"          "DepthMinEstimate" 
    ## [28] "DepthMaxEstimate"  "PredPreyRatioMin"  "PredPreyRatioMax" 
    ## [31] "AgeMin"            "AgeMax"            "TempPrefMin"      
    ## [34] "TempPrefMean"      "TempPrefMax"       "KObserved"        
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])

# out = merge(table_out, out) 
save(out, file = "out.Rdata")
save(out, file = paste0("out", "_", table_name, ".Rdata"))
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
summary(out)
```

    ##                         Species   Number_brains    BodyWeight_brains 
    ##  Acanthochromis polyacanthus: 1   Min.   : 1.000   Min.   :   0.167  
    ##  Amblyraja radiata          : 1   1st Qu.: 1.000   1st Qu.:   8.719  
    ##  Amphiprion ocellaris       : 1   Median : 1.900   Median :  95.750  
    ##  Anabas testudineus         : 1   Mean   : 7.557   Mean   : 662.366  
    ##  Anarrhichthys ocellatus    : 1   3rd Qu.: 2.750   3rd Qu.: 601.768  
    ##  Archocentrus centrarchus   : 1   Max.   :75.500   Max.   :4353.598  
    ##  (Other)                    :66   NA's   :58       NA's   :50        
    ##  BrainWeight_brains EncCoeff_brains  EncIndex_brains    SL_brains     
    ##  Min.   :   4.183   Min.   : 0.771   Min.   : 18.50   Min.   : 3.212  
    ##  1st Qu.:  56.875   1st Qu.: 1.734   1st Qu.: 30.75   1st Qu.: 7.796  
    ##  Median : 280.400   Median : 2.447   Median : 40.50   Median :17.568  
    ##  Mean   : 532.398   Mean   : 6.650   Mean   : 56.26   Mean   :20.233  
    ##  3rd Qu.: 459.081   3rd Qu.: 7.425   3rd Qu.: 73.66   3rd Qu.:21.208  
    ##  Max.   :3120.000   Max.   :27.139   Max.   :126.00   Max.   :63.500  
    ##  NA's   :50         NA's   :50       NA's   :65       NA's   :64      
    ##    TL_brains     record_count_species_brains   range_area       
    ##  Min.   : 9.70   Min.   :  1.000             Min.   :  2995431  
    ##  1st Qu.:18.68   1st Qu.:  1.000             1st Qu.: 29715144  
    ##  Median :22.60   Median :  1.000             Median : 53640249  
    ##  Mean   :28.20   Mean   :  7.569             Mean   : 81545386  
    ##  3rd Qu.:27.13   3rd Qu.:  2.000             3rd Qu.:117983522  
    ##  Max.   :73.50   Max.   :323.000             Max.   :379087532  
    ##  NA's   :65                                                     
    ##  SupraLittoralZone_ecology Saltmarshes_ecology LittoralZone_ecology
    ##  Min.   :0.00000           Min.   :0.00000     Min.   :0.00000     
    ##  1st Qu.:0.00000           1st Qu.:0.00000     1st Qu.:0.00000     
    ##  Median :0.00000           Median :0.00000     Median :0.00000     
    ##  Mean   :0.01639           Mean   :0.01639     Mean   :0.01639     
    ##  3rd Qu.:0.00000           3rd Qu.:0.00000     3rd Qu.:0.00000     
    ##  Max.   :1.00000           Max.   :1.00000     Max.   :1.00000     
    ##  NA's   :11                NA's   :11          NA's   :11          
    ##  Caves_ecology     Oceanic_ecology  Epipelagic_ecology Mesopelagic_ecology
    ##  Min.   :0.00000   Min.   :0.0000   Min.   :0.00000    Min.   :0.00000    
    ##  1st Qu.:0.00000   1st Qu.:0.0000   1st Qu.:0.00000    1st Qu.:0.00000    
    ##  Median :0.00000   Median :0.0000   Median :0.00000    Median :0.00000    
    ##  Mean   :0.01639   Mean   :0.3443   Mean   :0.09836    Mean   :0.01639    
    ##  3rd Qu.:0.00000   3rd Qu.:1.0000   3rd Qu.:0.00000    3rd Qu.:0.00000    
    ##  Max.   :1.00000   Max.   :1.0000   Max.   :1.00000    Max.   :1.00000    
    ##  NA's   :11        NA's   :11       NA's   :11         NA's   :11         
    ##  Mangroves_ecology MarshesSwamps_ecology  Cave_ecology     Solitary_ecology 
    ##  Min.   :0.00000   Min.   :0.00000       Min.   :0.00000   Min.   :0.00000  
    ##  1st Qu.:0.00000   1st Qu.:0.00000       1st Qu.:0.00000   1st Qu.:0.00000  
    ##  Median :0.00000   Median :0.00000       Median :0.00000   Median :0.00000  
    ##  Mean   :0.08197   Mean   :0.08197       Mean   :0.03279   Mean   :0.01639  
    ##  3rd Qu.:0.00000   3rd Qu.:0.00000       3rd Qu.:0.00000   3rd Qu.:0.00000  
    ##  Max.   :1.00000   Max.   :1.00000       Max.   :1.00000   Max.   :1.00000  
    ##  NA's   :11        NA's   :11            NA's   :11        NA's   :11       
    ##  Shoaling_ecology  Benthic_ecology   Mobile_ecology    SoftBottom_ecology
    ##  Min.   :0.00000   Min.   :0.00000   Min.   :0.00000   Min.   :0.0000    
    ##  1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.0000    
    ##  Median :0.00000   Median :0.00000   Median :0.00000   Median :0.0000    
    ##  Mean   :0.01639   Mean   :0.01639   Mean   :0.01639   Mean   :0.1803    
    ##  3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.0000    
    ##  Max.   :1.00000   Max.   :1.00000   Max.   :1.00000   Max.   :1.0000    
    ##  NA's   :11        NA's   :11        NA's   :11        NA's   :11        
    ##   Sand_ecology      Mud_ecology      HardBottom_ecology Rocky_ecology   
    ##  Min.   :0.00000   Min.   :0.00000   Min.   :0.00000    Min.   :0.0000  
    ##  1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000    1st Qu.:0.0000  
    ##  Median :0.00000   Median :0.00000   Median :0.00000    Median :0.0000  
    ##  Mean   :0.06557   Mean   :0.06557   Mean   :0.09836    Mean   :0.1311  
    ##  3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000    3rd Qu.:0.0000  
    ##  Max.   :1.00000   Max.   :1.00000   Max.   :1.00000    Max.   :1.0000  
    ##  NA's   :11        NA's   :11        NA's   :11         NA's   :11      
    ##  Rubble_ecology    Macrophyte_ecology SeaGrassBeds_ecology CoralReefs_ecology
    ##  Min.   :0.00000   Min.   :0.00000    Min.   :0.00000      Min.   :0.0000    
    ##  1st Qu.:0.00000   1st Qu.:0.00000    1st Qu.:0.00000      1st Qu.:0.0000    
    ##  Median :0.00000   Median :0.00000    Median :0.00000      Median :0.0000    
    ##  Mean   :0.01639   Mean   :0.01639    Mean   :0.09836      Mean   :0.1967    
    ##  3rd Qu.:0.00000   3rd Qu.:0.00000    3rd Qu.:0.00000      3rd Qu.:0.0000    
    ##  Max.   :1.00000   Max.   :1.00000    Max.   :1.00000      Max.   :1.0000    
    ##  NA's   :11        NA's   :11         NA's   :11           NA's   :11        
    ##  ReefFlats_ecology Lagoons_ecology   Burrows_ecology   Vegetation_ecology
    ##  Min.   :0.00000   Min.   :0.00000   Min.   :0.00000   Min.   :0.00000   
    ##  1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000   
    ##  Median :0.00000   Median :0.00000   Median :0.00000   Median :0.00000   
    ##  Mean   :0.01639   Mean   :0.01639   Mean   :0.03279   Mean   :0.04918   
    ##  3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000   
    ##  Max.   :1.00000   Max.   :1.00000   Max.   :1.00000   Max.   :1.00000   
    ##  NA's   :11        NA's   :11        NA's   :11        NA's   :11        
    ##  Stems_ecology     Neritic_ecology  Intertidal_ecology Hadopelagic_ecology
    ##  Min.   :0.00000   Min.   :0.0000   Min.   :0.0000     Min.   :0.00000    
    ##  1st Qu.:0.00000   1st Qu.:0.0000   1st Qu.:0.0000     1st Qu.:0.00000    
    ##  Median :0.00000   Median :0.0000   Median :0.0000     Median :0.00000    
    ##  Mean   :0.01639   Mean   :0.1905   Mean   :0.1587     Mean   :0.01587    
    ##  3rd Qu.:0.00000   3rd Qu.:0.0000   3rd Qu.:0.0000     3rd Qu.:0.00000    
    ##  Max.   :1.00000   Max.   :1.0000   Max.   :1.0000     Max.   :1.00000    
    ##  NA's   :11        NA's   :9        NA's   :9          NA's   :9          
    ##  Estuaries_ecology Stream_ecology   Lakes_ecology   Schooling_ecology
    ##  Min.   :0.0000    Min.   :0.0000   Min.   :0.000   Min.   :0.00000  
    ##  1st Qu.:0.0000    1st Qu.:0.0000   1st Qu.:0.000   1st Qu.:0.00000  
    ##  Median :0.0000    Median :0.0000   Median :0.000   Median :0.00000  
    ##  Mean   :0.3968    Mean   :0.4921   Mean   :0.381   Mean   :0.04762  
    ##  3rd Qu.:1.0000    3rd Qu.:1.0000   3rd Qu.:1.000   3rd Qu.:0.00000  
    ##  Max.   :1.0000    Max.   :1.0000   Max.   :1.000   Max.   :1.00000  
    ##  NA's   :9         NA's   :9        NA's   :9       NA's   :9        
    ##  TidePools_ecology SubLittoral_ecology Bathypelagic_ecology
    ##  Min.   :0         Min.   :0           Min.   :0           
    ##  1st Qu.:0         1st Qu.:0           1st Qu.:0           
    ##  Median :0         Median :0           Median :0           
    ##  Mean   :0         Mean   :0           Mean   :0           
    ##  3rd Qu.:0         3rd Qu.:0           3rd Qu.:0           
    ##  Max.   :0         Max.   :0           Max.   :0           
    ##  NA's   :9         NA's   :9           NA's   :9           
    ##  Abyssopelagic_ecology CaveAnchialine_ecology DietTroph_ecology
    ##  Min.   :0             Min.   :0              Min.   :2.000    
    ##  1st Qu.:0             1st Qu.:0              1st Qu.:2.882    
    ##  Median :0             Median :0              Median :3.585    
    ##  Mean   :0             Mean   :0              Mean   :3.376    
    ##  3rd Qu.:0             3rd Qu.:0              3rd Qu.:4.082    
    ##  Max.   :0             Max.   :0              Max.   :4.500    
    ##  NA's   :9             NA's   :9              NA's   :48       
    ##  DietSeTroph_ecology DietTLu_ecology DietseTLu_ecology FoodTroph_ecology
    ##  Min.   :0.00000     Min.   :2.000   Min.   :0.0000    Min.   :2.000    
    ##  1st Qu.:0.09575     1st Qu.:2.840   1st Qu.:0.1350    1st Qu.:2.870    
    ##  Median :0.18100     Median :3.310   Median :0.4500    Median :3.270    
    ##  Mean   :0.22220     Mean   :3.346   Mean   :0.4091    Mean   :3.231    
    ##  3rd Qu.:0.27800     3rd Qu.:4.065   3rd Qu.:0.6500    3rd Qu.:3.615    
    ##  Max.   :0.76000     Max.   :4.450   Max.   :0.7700    Max.   :4.400    
    ##  NA's   :52          NA's   :49      NA's   :49        NA's   :13       
    ##  FoodSeTroph_ecology Parasitism_ecology Symbiosis_ecology Symphorism_ecology
    ##  Min.   :0.0000      Min.   :0          Min.   :0         Min.   :0         
    ##  1st Qu.:0.3050      1st Qu.:0          1st Qu.:0         1st Qu.:0         
    ##  Median :0.4400      Median :0          Median :0         Median :0         
    ##  Mean   :0.4275      Mean   :0          Mean   :0         Mean   :0         
    ##  3rd Qu.:0.5506      3rd Qu.:0          3rd Qu.:0         3rd Qu.:0         
    ##  Max.   :1.0500      Max.   :0          Max.   :0         Max.   :0         
    ##  NA's   :13          NA's   :9          NA's   :9         NA's   :9         
    ##  Commensalism_ecology Mutualism_ecology Epiphytic_ecology OutsideHost_ecology
    ##  Min.   :0            Min.   :0         Min.   :0         Min.   :0          
    ##  1st Qu.:0            1st Qu.:0         1st Qu.:0         1st Qu.:0          
    ##  Median :0            Median :0         Median :0         Median :0          
    ##  Mean   :0            Mean   :0         Mean   :0         Mean   :0          
    ##  3rd Qu.:0            3rd Qu.:0         3rd Qu.:0         3rd Qu.:0          
    ##  Max.   :0            Max.   :0         Max.   :0         Max.   :0          
    ##  NA's   :9            NA's   :9         NA's   :9         NA's   :9          
    ##  InsideHost_ecology Sessile_ecology Demersal_ecology Endofauna_ecology
    ##  Min.   :0          Min.   :0       Min.   :0        Min.   :0        
    ##  1st Qu.:0          1st Qu.:0       1st Qu.:0        1st Qu.:0        
    ##  Median :0          Median :0       Median :0        Median :0        
    ##  Mean   :0          Mean   :0       Mean   :0        Mean   :0        
    ##  3rd Qu.:0          3rd Qu.:0       3rd Qu.:0        3rd Qu.:0        
    ##  Max.   :0          Max.   :0       Max.   :0        Max.   :0        
    ##  NA's   :9          NA's   :9       NA's   :9        NA's   :9        
    ##  Pelagic_ecology Megabenthos_ecology Macrobenthos_ecology Meiobenthos_ecology
    ##  Min.   :0       Min.   :0           Min.   :0            Min.   :0          
    ##  1st Qu.:0       1st Qu.:0           1st Qu.:0            1st Qu.:0          
    ##  Median :0       Median :0           Median :0            Median :0          
    ##  Mean   :0       Mean   :0           Mean   :0            Mean   :0          
    ##  3rd Qu.:0       3rd Qu.:0           3rd Qu.:0            3rd Qu.:0          
    ##  Max.   :0       Max.   :0           Max.   :0            Max.   :0          
    ##  NA's   :9       NA's   :9           NA's   :9            NA's   :9          
    ##  Coarse_ecology  Fine_ecology Sloping_ecology  Silt_ecology  Ooze_ecology
    ##  Min.   :0      Min.   :0     Min.   :0       Min.   :0     Min.   :0    
    ##  1st Qu.:0      1st Qu.:0     1st Qu.:0       1st Qu.:0     1st Qu.:0    
    ##  Median :0      Median :0     Median :0       Median :0     Median :0    
    ##  Mean   :0      Mean   :0     Mean   :0       Mean   :0     Mean   :0    
    ##  3rd Qu.:0      3rd Qu.:0     3rd Qu.:0       3rd Qu.:0     3rd Qu.:0    
    ##  Max.   :0      Max.   :0     Max.   :0       Max.   :0     Max.   :0    
    ##  NA's   :9      NA's   :9     NA's   :9       NA's   :9     NA's   :9    
    ##  Detritus_ecology Organic_ecology Gravel_ecology BedsBivalve_ecology
    ##  Min.   :0        Min.   :0       Min.   :0      Min.   :0          
    ##  1st Qu.:0        1st Qu.:0       1st Qu.:0      1st Qu.:0          
    ##  Median :0        Median :0       Median :0      Median :0          
    ##  Mean   :0        Mean   :0       Mean   :0      Mean   :0          
    ##  3rd Qu.:0        3rd Qu.:0       3rd Qu.:0      3rd Qu.:0          
    ##  Max.   :0        Max.   :0       Max.   :0      Max.   :0          
    ##  NA's   :9        NA's   :9       NA's   :9      NA's   :9          
    ##  BedsRock_ecology BedsOthers_ecology ReefExclusive_ecology DropOffs_ecology
    ##  Min.   :0        Min.   :0          Min.   :0             Min.   :0       
    ##  1st Qu.:0        1st Qu.:0          1st Qu.:0             1st Qu.:0       
    ##  Median :0        Median :0          Median :0             Median :0       
    ##  Mean   :0        Mean   :0          Mean   :0             Mean   :0       
    ##  3rd Qu.:0        3rd Qu.:0          3rd Qu.:0             3rd Qu.:0       
    ##  Max.   :0        Max.   :0          Max.   :0             Max.   :0       
    ##  NA's   :9        NA's   :9          NA's   :9             NA's   :9       
    ##  Tunnels_ecology Crevices_ecology Vents_ecology Seamounts_ecology
    ##  Min.   :0       Min.   :0        Min.   :0     Min.   :0        
    ##  1st Qu.:0       1st Qu.:0        1st Qu.:0     1st Qu.:0        
    ##  Median :0       Median :0        Median :0     Median :0        
    ##  Mean   :0       Mean   :0        Mean   :0     Mean   :0        
    ##  3rd Qu.:0       3rd Qu.:0        3rd Qu.:0     3rd Qu.:0        
    ##  Max.   :0       Max.   :0        Max.   :0     Max.   :0        
    ##  NA's   :9       NA's   :9        NA's   :9     NA's   :9        
    ##  DeepWaterCorals_ecology Leaves_ecology Roots_ecology Driftwood_ecology
    ##  Min.   :0               Min.   :0      Min.   :0     Min.   :0        
    ##  1st Qu.:0               1st Qu.:0      1st Qu.:0     1st Qu.:0        
    ##  Median :0               Median :0      Median :0     Median :0        
    ##  Mean   :0               Mean   :0      Mean   :0     Mean   :0        
    ##  3rd Qu.:0               3rd Qu.:0      3rd Qu.:0     3rd Qu.:0        
    ##  Max.   :0               Max.   :0      Max.   :0     Max.   :0        
    ##  NA's   :9               NA's   :9      NA's   :9     NA's   :9        
    ##  OInverterbrates_ecology Verterbrates_ecology Pilings_ecology BoatHulls_ecology
    ##  Min.   :0               Min.   :0            Min.   :0       Min.   :0        
    ##  1st Qu.:0               1st Qu.:0            1st Qu.:0       1st Qu.:0        
    ##  Median :0               Median :0            Median :0       Median :0        
    ##  Mean   :0               Mean   :0            Mean   :0       Mean   :0        
    ##  3rd Qu.:0               3rd Qu.:0            3rd Qu.:0       3rd Qu.:0        
    ##  Max.   :0               Max.   :0            Max.   :0       Max.   :0        
    ##  NA's   :9               NA's   :9            NA's   :9       NA's   :9        
    ##  Corals_ecology SoftCorals_ecology OnPolyp_ecology BetweenPolyps_ecology
    ##  Min.   :0      Min.   :0          Min.   :0       Min.   :0            
    ##  1st Qu.:0      1st Qu.:0          1st Qu.:0       1st Qu.:0            
    ##  Median :0      Median :0          Median :0       Median :0            
    ##  Mean   :0      Mean   :0          Mean   :0       Mean   :0            
    ##  3rd Qu.:0      3rd Qu.:0          3rd Qu.:0       3rd Qu.:0            
    ##  Max.   :0      Max.   :0          Max.   :0       Max.   :0            
    ##  NA's   :9      NA's   :9          NA's   :9       NA's   :9            
    ##  HardCorals_ecology OnExoskeleton_ecology InterstitialSpaces_ecology
    ##  Min.   :0          Min.   :0             Min.   :0                 
    ##  1st Qu.:0          1st Qu.:0             1st Qu.:0                 
    ##  Median :0          Median :0             Median :0                 
    ##  Mean   :0          Mean   :0             Mean   :0                 
    ##  3rd Qu.:0          3rd Qu.:0             3rd Qu.:0                 
    ##  Max.   :0          Max.   :0             Max.   :0                 
    ##  NA's   :9          NA's   :9             NA's   :9                 
    ##  SchoolingFrequencyalways_ecology SchoolingFrequencysometimes_ecology
    ##  0   : 1                          1   : 1                            
    ##  NA's:71                          NA's:71                            
    ##                                                                      
    ##                                                                      
    ##                                                                      
    ##                                                                      
    ##                                                                      
    ##  record_count_species_ecology Coastline_distribution Shelf_distribution
    ##  Min.   :1.000                Min.   : 30663         Min.   :    1326  
    ##  1st Qu.:1.000                1st Qu.: 91223         1st Qu.:    4504  
    ##  Median :1.000                Median :113778         Median : 1029208  
    ##  Mean   :1.056                Mean   :115009         Mean   : 8331824  
    ##  3rd Qu.:1.000                3rd Qu.:163609         3rd Qu.:16587689  
    ##  Max.   :4.000                Max.   :183950         Max.   :32517600  
    ##                               NA's   :19                               
    ##  EEZarea_distribution SpecSport_distribution Statusendemic_distribution
    ##  Min.   :10125        Min.   :  2.667        0:46                      
    ##  1st Qu.:15192        1st Qu.:139.000        1:26                      
    ##  Median :18759        Median :162.036                                  
    ##  Mean   :17616        Mean   :185.192                                  
    ##  3rd Qu.:20258        3rd Qu.:208.325                                  
    ##  Max.   :24339        Max.   :350.400                                  
    ##  NA's   :19                                                            
    ##  Statusintroduced_distribution Statusnative_distribution
    ##  0:52                          0:25                     
    ##  1:20                          1:47                     
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##  Statusquestionable_distribution ContinentGrpafrica_distribution
    ##  0:69                            0   :48                        
    ##  1: 3                            1   :21                        
    ##                                  NA's: 3                        
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##  ContinentGrpasia_distribution ContinentGrpatlantic.ocean_distribution
    ##  0   :40                       0   :52                                
    ##  1   :29                       1   :17                                
    ##  NA's: 3                       NA's: 3                                
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##  ContinentGrpeurope..form.ussr_distribution
    ##  0   :59                                   
    ##  1   :10                                   
    ##  NA's: 3                                   
    ##                                            
    ##                                            
    ##                                            
    ##                                            
    ##  ContinentGrpindian.ocean_distribution ContinentGrpmed.black.sea_distribution
    ##  0   :56                               0   :62                               
    ##  1   :13                               1   : 7                               
    ##  NA's: 3                               NA's: 3                               
    ##                                                                              
    ##                                                                              
    ##                                                                              
    ##                                                                              
    ##  ContinentGrpnorth.centr.america_distribution ContinentGrpoceania_distribution
    ##  0   :45                                      0   :55                         
    ##  1   :24                                      1   :14                         
    ##  NA's: 3                                      NA's: 3                         
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##  ContinentGrppacific.ocean_distribution ContinentGrpsouth.america_distribution
    ##  0   :48                                0   :55                               
    ##  1   :21                                1   :14                               
    ##  NA's: 3                                NA's: 3                               
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##  record_count_species_distribution TLObserved_estimate Troph_estimate 
    ##  Min.   : 1.00                     Min.   :0           Min.   :2.000  
    ##  1st Qu.: 1.00                     1st Qu.:0           1st Qu.:2.890  
    ##  Median : 2.00                     Median :0           Median :3.240  
    ##  Mean   : 4.75                     Mean   :0           Mean   :3.255  
    ##  3rd Qu.: 5.00                     3rd Qu.:0           3rd Qu.:3.705  
    ##  Max.   :42.00                     Max.   :0           Max.   :4.660  
    ##                                                                       
    ##  seTroph_estimate TrophObserved_estimate   a_estimate        sd_log10a_estimate
    ##  Min.   :0.0000   Min.   :0              Min.   :0.0006457   Min.   :0.0247    
    ##  1st Qu.:0.2097   1st Qu.:0              1st Qu.:0.0057544   1st Qu.:0.0929    
    ##  Median :0.3550   Median :0              Median :0.0093325   Median :0.1260    
    ##  Mean   :0.3413   Mean   :0              Mean   :0.0104698   Mean   :0.1280    
    ##  3rd Qu.:0.4500   3rd Qu.:0              3rd Qu.:0.0144544   3rd Qu.:0.1730    
    ##  Max.   :0.7800   Max.   :0              Max.   :0.0275423   Max.   :0.2160    
    ##                                          NA's   :3           NA's   :3         
    ##    b_estimate    sd_b_estimate     prior_r_estimate lcl_r_estimate  
    ##  Min.   :2.830   Min.   :0.01530   Min.   :0.2822   Min.   :0.1635  
    ##  1st Qu.:2.990   1st Qu.:0.06270   1st Qu.:0.2937   1st Qu.:0.1881  
    ##  Median :3.040   Median :0.08140   Median :0.4869   Median :0.3213  
    ##  Mean   :3.043   Mean   :0.07364   Mean   :0.4467   Mean   :0.2891  
    ##  3rd Qu.:3.100   3rd Qu.:0.09310   3rd Qu.:0.5695   3rd Qu.:0.3759  
    ##  Max.   :3.210   Max.   :0.11800   Max.   :0.5914   Max.   :0.3903  
    ##  NA's   :3       NA's   :3         NA's   :64       NA's   :64      
    ##  ucl_r_estimate    n_r_estimate     K_estimate     Winf_estimate    
    ##  Min.   :0.4462   Min.   : 1.00   Min.   :0.0600   Min.   :    0.7  
    ##  1st Qu.:0.4874   1st Qu.: 3.75   1st Qu.:0.1850   1st Qu.:  609.0  
    ##  Median :0.7303   Median : 6.00   Median :0.4450   Median : 2242.5  
    ##  Mean   :0.6861   Mean   :15.12   Mean   :0.6026   Mean   :10136.1  
    ##  3rd Qu.:0.8542   3rd Qu.:19.75   3rd Qu.:0.7400   3rd Qu.: 8416.5  
    ##  Max.   :0.8871   Max.   :48.00   Max.   :2.5700   Max.   :60447.4  
    ##  NA's   :64       NA's   :64      NA's   :10       NA's   :46       
    ##  ComDepthMin_estimate ComDepthMax_estimate ComDepMinObserved_estimate
    ##  Min.   :  0.00       Min.   :  3.00       Min.   :0                 
    ##  1st Qu.:  2.00       1st Qu.: 15.00       1st Qu.:0                 
    ##  Median :  6.00       Median : 26.00       Median :0                 
    ##  Mean   : 17.52       Mean   : 70.97       Mean   :0                 
    ##  3rd Qu.: 18.00       3rd Qu.: 89.25       3rd Qu.:0                 
    ##  Max.   :150.00       Max.   :440.00       Max.   :0                 
    ##  NA's   :39           NA's   :38                                     
    ##  ComDepMaxObserved_estimate DepthMin_estimate DepthMax_estimate
    ##  Min.   :0                  Min.   : 0.000    Min.   :   4     
    ##  1st Qu.:0                  1st Qu.: 0.000    1st Qu.:  30     
    ##  Median :0                  Median : 1.000    Median :  50     
    ##  Mean   :0                  Mean   : 2.048    Mean   : 181     
    ##  3rd Qu.:0                  3rd Qu.: 1.000    3rd Qu.: 200     
    ##  Max.   :0                  Max.   :15.000    Max.   :1540     
    ##                             NA's   :30        NA's   :38       
    ##  DepthMinEstimate_estimate DepthMaxEstimate_estimate PredPreyRatioMin_estimate
    ##  Min.   :0                 Min.   :0                 Min.   :  1.920          
    ##  1st Qu.:0                 1st Qu.:0                 1st Qu.:  4.602          
    ##  Median :0                 Median :0                 Median :  7.065          
    ##  Mean   :0                 Mean   :0                 Mean   : 18.581          
    ##  3rd Qu.:0                 3rd Qu.:0                 3rd Qu.: 11.004          
    ##  Max.   :0                 Max.   :0                 Max.   :143.670          
    ##                                                                               
    ##  PredPreyRatioMax_estimate AgeMin_estimate   AgeMax_estimate 
    ##  Min.   :   3.819          Min.   :0.01751   Min.   : 0.220  
    ##  1st Qu.: 106.813          1st Qu.:0.46518   1st Qu.: 4.985  
    ##  Median : 430.254          Median :1.03007   Median :12.400  
    ##  Mean   :1210.586          Mean   :1.08635   Mean   :14.534  
    ##  3rd Qu.:1000.514          3rd Qu.:1.39662   3rd Qu.:25.000  
    ##  Max.   :7174.060          Max.   :3.49000   Max.   :41.000  
    ##                            NA's   :40        NA's   :45      
    ##  TempPrefMin_estimate TempPrefMean_estimate TempPrefMax_estimate
    ##  Min.   :-1.70        Min.   :-0.60         Min.   : 2.40       
    ##  1st Qu.: 6.45        1st Qu.: 9.15         1st Qu.:13.50       
    ##  Median :13.50        Median :19.00         Median :23.70       
    ##  Mean   :13.58        Mean   :18.02         Mean   :21.27       
    ##  3rd Qu.:22.50        3rd Qu.:27.50         3rd Qu.:28.95       
    ##  Max.   :28.30        Max.   :28.80         Max.   :29.30       
    ##  NA's   :45           NA's   :45            NA's   :45          
    ##  KObserved_estimate record_count_species_estimate
    ##  Min.   :0          Min.   :1                    
    ##  1st Qu.:0          1st Qu.:1                    
    ##  Median :0          Median :1                    
    ##  Mean   :0          Mean   :1                    
    ##  3rd Qu.:0          3rd Qu.:1                    
    ##  Max.   :0          Max.   :1                    
    ## 

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "TLObserved_estimate"           "Troph_estimate"               
    ##  [3] "seTroph_estimate"              "TrophObserved_estimate"       
    ##  [5] "a_estimate"                    "sd_log10a_estimate"           
    ##  [7] "b_estimate"                    "sd_b_estimate"                
    ##  [9] "prior_r_estimate"              "lcl_r_estimate"               
    ## [11] "ucl_r_estimate"                "n_r_estimate"                 
    ## [13] "K_estimate"                    "Winf_estimate"                
    ## [15] "ComDepthMin_estimate"          "ComDepthMax_estimate"         
    ## [17] "ComDepMinObserved_estimate"    "ComDepMaxObserved_estimate"   
    ## [19] "DepthMin_estimate"             "DepthMax_estimate"            
    ## [21] "DepthMinEstimate_estimate"     "DepthMaxEstimate_estimate"    
    ## [23] "PredPreyRatioMin_estimate"     "PredPreyRatioMax_estimate"    
    ## [25] "AgeMin_estimate"               "AgeMax_estimate"              
    ## [27] "TempPrefMin_estimate"          "TempPrefMean_estimate"        
    ## [29] "TempPrefMax_estimate"          "KObserved_estimate"           
    ## [31] "record_count_species_estimate"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  TLObserved_estimate Troph_estimate  seTroph_estimate TrophObserved_estimate
    ##  Min.   :0           Min.   :2.000   Min.   :0.0000   Min.   :0             
    ##  1st Qu.:0           1st Qu.:2.890   1st Qu.:0.2097   1st Qu.:0             
    ##  Median :0           Median :3.240   Median :0.3550   Median :0             
    ##  Mean   :0           Mean   :3.255   Mean   :0.3413   Mean   :0             
    ##  3rd Qu.:0           3rd Qu.:3.705   3rd Qu.:0.4500   3rd Qu.:0             
    ##  Max.   :0           Max.   :4.660   Max.   :0.7800   Max.   :0             
    ##                                                                             
    ##    a_estimate        sd_log10a_estimate   b_estimate    sd_b_estimate    
    ##  Min.   :0.0006457   Min.   :0.0247     Min.   :2.830   Min.   :0.01530  
    ##  1st Qu.:0.0057544   1st Qu.:0.0929     1st Qu.:2.990   1st Qu.:0.06270  
    ##  Median :0.0093325   Median :0.1260     Median :3.040   Median :0.08140  
    ##  Mean   :0.0104698   Mean   :0.1280     Mean   :3.043   Mean   :0.07364  
    ##  3rd Qu.:0.0144544   3rd Qu.:0.1730     3rd Qu.:3.100   3rd Qu.:0.09310  
    ##  Max.   :0.0275423   Max.   :0.2160     Max.   :3.210   Max.   :0.11800  
    ##  NA's   :3           NA's   :3          NA's   :3       NA's   :3        
    ##  prior_r_estimate lcl_r_estimate   ucl_r_estimate    n_r_estimate  
    ##  Min.   :0.2822   Min.   :0.1635   Min.   :0.4462   Min.   : 1.00  
    ##  1st Qu.:0.2937   1st Qu.:0.1881   1st Qu.:0.4874   1st Qu.: 3.75  
    ##  Median :0.4869   Median :0.3213   Median :0.7303   Median : 6.00  
    ##  Mean   :0.4467   Mean   :0.2891   Mean   :0.6861   Mean   :15.12  
    ##  3rd Qu.:0.5695   3rd Qu.:0.3759   3rd Qu.:0.8542   3rd Qu.:19.75  
    ##  Max.   :0.5914   Max.   :0.3903   Max.   :0.8871   Max.   :48.00  
    ##  NA's   :64       NA's   :64       NA's   :64       NA's   :64     
    ##    K_estimate     Winf_estimate     ComDepthMin_estimate ComDepthMax_estimate
    ##  Min.   :0.0600   Min.   :    0.7   Min.   :  0.00       Min.   :  3.00      
    ##  1st Qu.:0.1850   1st Qu.:  609.0   1st Qu.:  2.00       1st Qu.: 15.00      
    ##  Median :0.4450   Median : 2242.5   Median :  6.00       Median : 26.00      
    ##  Mean   :0.6026   Mean   :10136.1   Mean   : 17.52       Mean   : 70.97      
    ##  3rd Qu.:0.7400   3rd Qu.: 8416.5   3rd Qu.: 18.00       3rd Qu.: 89.25      
    ##  Max.   :2.5700   Max.   :60447.4   Max.   :150.00       Max.   :440.00      
    ##  NA's   :10       NA's   :46        NA's   :39           NA's   :38          
    ##  ComDepMinObserved_estimate ComDepMaxObserved_estimate DepthMin_estimate
    ##  Min.   :0                  Min.   :0                  Min.   : 0.000   
    ##  1st Qu.:0                  1st Qu.:0                  1st Qu.: 0.000   
    ##  Median :0                  Median :0                  Median : 1.000   
    ##  Mean   :0                  Mean   :0                  Mean   : 2.048   
    ##  3rd Qu.:0                  3rd Qu.:0                  3rd Qu.: 1.000   
    ##  Max.   :0                  Max.   :0                  Max.   :15.000   
    ##                                                        NA's   :30       
    ##  DepthMax_estimate DepthMinEstimate_estimate DepthMaxEstimate_estimate
    ##  Min.   :   4      Min.   :0                 Min.   :0                
    ##  1st Qu.:  30      1st Qu.:0                 1st Qu.:0                
    ##  Median :  50      Median :0                 Median :0                
    ##  Mean   : 181      Mean   :0                 Mean   :0                
    ##  3rd Qu.: 200      3rd Qu.:0                 3rd Qu.:0                
    ##  Max.   :1540      Max.   :0                 Max.   :0                
    ##  NA's   :38                                                           
    ##  PredPreyRatioMin_estimate PredPreyRatioMax_estimate AgeMin_estimate  
    ##  Min.   :  1.920           Min.   :   3.819          Min.   :0.01751  
    ##  1st Qu.:  4.602           1st Qu.: 106.813          1st Qu.:0.46518  
    ##  Median :  7.065           Median : 430.254          Median :1.03007  
    ##  Mean   : 18.581           Mean   :1210.586          Mean   :1.08635  
    ##  3rd Qu.: 11.004           3rd Qu.:1000.514          3rd Qu.:1.39662  
    ##  Max.   :143.670           Max.   :7174.060          Max.   :3.49000  
    ##                                                      NA's   :40       
    ##  AgeMax_estimate  TempPrefMin_estimate TempPrefMean_estimate
    ##  Min.   : 0.220   Min.   :-1.70        Min.   :-0.60        
    ##  1st Qu.: 4.985   1st Qu.: 6.45        1st Qu.: 9.15        
    ##  Median :12.400   Median :13.50        Median :19.00        
    ##  Mean   :14.534   Mean   :13.58        Mean   :18.02        
    ##  3rd Qu.:25.000   3rd Qu.:22.50        3rd Qu.:27.50        
    ##  Max.   :41.000   Max.   :28.30        Max.   :28.80        
    ##  NA's   :45       NA's   :45           NA's   :45           
    ##  TempPrefMax_estimate KObserved_estimate record_count_species_estimate
    ##  Min.   : 2.40        Min.   :0          Min.   :1                    
    ##  1st Qu.:13.50        1st Qu.:0          1st Qu.:1                    
    ##  Median :23.70        Median :0          Median :1                    
    ##  Mean   :21.27        Mean   :0          Mean   :1                    
    ##  3rd Qu.:28.95        3rd Qu.:0          3rd Qu.:1                    
    ##  Max.   :29.30        Max.   :0          Max.   :1                    
    ##  NA's   :45

\#\#faoareas, seems to be redundant to
    countrysub?

``` r
test = faoareas(species_list = species[a])
```

    ## Warning: Column `Species` joining factor and character vector, coercing into
    ## character vector

``` r
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
rm(table_out)
table_name = "fecundity"
T<- fecundity()

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
# source("ecology_scratch.R")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"          "autoctr"           "autoctr_spawn"    
    ##  [4] "StockCode"         "MainRefNo"         "SourceRef"        
    ##  [7] "FecundityRef"      "FecunMinRef"       "FecunMeanRef"     
    ## [10] "FecunMaxRef"       "SpCycleRef"        "Entered"          
    ## [13] "Dateentered"       "Expert"            "Datechecked"      
    ## [16] "FecComment"        "Modified"          "AddInfos"         
    ## [19] "Datemodified"      "SpecCode"          "StockCode"        
    ## [22] "C_Code"            "E_CODE"            "Locality"         
    ## [25] "r2"                "Locality"          "FecundityType"    
    ## [28] "LengthFecunMin"    "LengthTypeFecMin"  "LengthFecunMax"   
    ## [31] "LengthTypeFecMax"  "LengthFecunMean"   "LengthTypeFecMean"
    ## [34] "LengthMin"         "LengthMax"         "LengthType"       
    ## [37] "LengthTypeFecMin"  "LengthTypeFecMax"  "LengthTypeFecMean"
    ## [40] "FecundityType"     "LengthType"        "LengthFecunMin"   
    ## [43] "LengthTypeFecMin"  "LengthFecunMax"    "LengthTypeFecMax" 
    ## [46] "LengthFecunMean"   "LengthTypeFecMean" "LengthMin"        
    ## [49] "LengthMax"         "LengthType"        "LengthFecunMin"   
    ## [52] "LengthTypeFecMin"  "LengthFecunMax"    "LengthTypeFecMax" 
    ## [55] "LengthFecunMean"   "LengthTypeFecMean" "LengthMin"        
    ## [58] "LengthMax"         "LengthType"       
    ## [1] "kept fields"
    ##  [1] "Species"          "FecundityMin"     "WeightMin"        "FecundityMax"    
    ##  [5] "WeightMax"        "FecundityMean"    "WeightMean"       "RelFecundityMin" 
    ##  [9] "RelFecundityMean" "RelFecundityMax"  "Number"           "a"               
    ## [13] "b"                "SEa"              "SEb"              "SDa"             
    ## [17] "SDb"              "LCLa"             "UCLa"             "LCLb"            
    ## [21] "UCLb"             "SpawningCycles"  
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])

# out = merge(table_out, out) 
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "FecundityMin_fecundity"         "WeightMin_fecundity"           
    ##  [3] "FecundityMax_fecundity"         "WeightMax_fecundity"           
    ##  [5] "FecundityMean_fecundity"        "RelFecundityMin_fecundity"     
    ##  [7] "RelFecundityMean_fecundity"     "RelFecundityMax_fecundity"     
    ##  [9] "Number_fecundity"               "a_fecundity"                   
    ## [11] "b_fecundity"                    "SEa_fecundity"                 
    ## [13] "SEb_fecundity"                  "LCLa_fecundity"                
    ## [15] "UCLa_fecundity"                 "LCLb_fecundity"                
    ## [17] "UCLb_fecundity"                 "SpawningCycles_fecundity"      
    ## [19] "record_count_species_fecundity"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  FecundityMin_fecundity WeightMin_fecundity FecundityMax_fecundity
    ##  Min.   :       7       Min.   :    42.38   Min.   :      20      
    ##  1st Qu.:     200       1st Qu.:   575.46   1st Qu.:     360      
    ##  Median :     600       Median :  2350.91   Median :    2673      
    ##  Mean   :  842575       Mean   : 18320.44   Mean   : 3134143      
    ##  3rd Qu.:   17000       3rd Qu.:  3933.85   3rd Qu.:   81251      
    ##  Max.   :15300000       Max.   :100733.33   Max.   :47700000      
    ##  NA's   :39             NA's   :66          NA's   :42            
    ##  WeightMax_fecundity FecundityMean_fecundity RelFecundityMin_fecundity
    ##  Min.   :  165       Min.   :458             Min.   :   2.00          
    ##  1st Qu.:  500       1st Qu.:458             1st Qu.:  17.75          
    ##  Median : 3548       Median :458             Median : 229.68          
    ##  Mean   : 4720       Mean   :458             Mean   : 454.12          
    ##  3rd Qu.: 4383       3rd Qu.:458             3rd Qu.: 591.81          
    ##  Max.   :15003       Max.   :458             Max.   :1690.89          
    ##  NA's   :67          NA's   :71              NA's   :64               
    ##  RelFecundityMean_fecundity RelFecundityMax_fecundity Number_fecundity
    ##  Min.   : 23.0              Min.   :  13.0            Min.   : 27.67  
    ##  1st Qu.:193.1              1st Qu.: 412.2            1st Qu.: 30.75  
    ##  Median :415.9              Median : 793.7            Median : 42.50  
    ##  Mean   :388.4              Mean   :1424.5            Mean   : 64.55  
    ##  3rd Qu.:611.2              3rd Qu.:1408.1            3rd Qu.: 72.77  
    ##  Max.   :699.0              Max.   :5048.7            Max.   :158.38  
    ##  NA's   :68                 NA's   :66                NA's   :62      
    ##   a_fecundity      b_fecundity    SEa_fecundity    SEb_fecundity   
    ##  Min.   :0.2767   Min.   :2.010   Min.   :0.0021   Min.   :0.3550  
    ##  1st Qu.:1.1056   1st Qu.:3.143   1st Qu.:0.1346   1st Qu.:0.7057  
    ##  Median :2.0602   Median :3.298   Median :0.2671   Median :1.0565  
    ##  Mean   :2.4159   Mean   :3.744   Mean   :0.2671   Mean   :1.0565  
    ##  3rd Qu.:3.3784   3rd Qu.:3.938   3rd Qu.:0.3995   3rd Qu.:1.4072  
    ##  Max.   :5.6064   Max.   :6.734   Max.   :0.5320   Max.   :1.7580  
    ##  NA's   :65       NA's   :65      NA's   :70       NA's   :70      
    ##  LCLa_fecundity  UCLa_fecundity  LCLb_fecundity UCLb_fecundity
    ##  Min.   :0.041   Min.   :0.225   Min.   :3.76   Min.   :4.16  
    ##  1st Qu.:0.041   1st Qu.:0.225   1st Qu.:3.76   1st Qu.:4.16  
    ##  Median :0.041   Median :0.225   Median :3.76   Median :4.16  
    ##  Mean   :0.041   Mean   :0.225   Mean   :3.76   Mean   :4.16  
    ##  3rd Qu.:0.041   3rd Qu.:0.225   3rd Qu.:3.76   3rd Qu.:4.16  
    ##  Max.   :0.041   Max.   :0.225   Max.   :3.76   Max.   :4.16  
    ##  NA's   :71      NA's   :71      NA's   :71     NA's   :71    
    ##  SpawningCycles_fecundity record_count_species_fecundity
    ##  Min.   :1.000            Min.   : 1.000                
    ##  1st Qu.:1.000            1st Qu.: 1.000                
    ##  Median :1.000            Median : 1.000                
    ##  Mean   :1.267            Mean   : 3.181                
    ##  3rd Qu.:1.000            3rd Qu.: 1.000                
    ##  Max.   :4.000            Max.   :50.000                
    ##  NA's   :57

``` r
save(out, file = "out.Rdata")
save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#fooditems – including this one
\#\#<http://www.fishbase.org/manual/english/fishbasethe_food_items_table.htm>
\#\#multiple rows per species, for different food types, life stages of
predator, locality, etc.

``` r
rm(table_out)
table_name = "fooditems"
T<- fooditems()

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
# source("ecology_scratch.R")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"        "PreySpecCode"    "PreySpecCodeSLB" "autoctr"        
    ##  [5] "StockCode"       "FoodsRefNo"      "TrophRefNo"      "Entered"        
    ##  [9] "Dateentered"     "Expert"          "Datechecked"     "Modified"       
    ## [13] "Datemodified"    "SpecCode"        "StockCode"       "C_Code"         
    ## [17] "PreySpecCode"    "PreySpecCodeSLB" "AlphaCode"       "Locality"       
    ## [21] "Locality2"       "Locality2"       "FoodII"          "FoodIII"        
    ## [25] "CommonessII"     "FoodIII"         "TS"              "Locality"       
    ## [29] "Locality2"       "Commoness"       "CommonessII"     "Foodgroup"      
    ## [33] "Foodname"        "TS"             
    ## [1] "kept fields"
    ## [1] "Species"       "FoodI"         "PreyStage"     "PreyTroph"    
    ## [5] "PreySeTroph"   "PredatorStage"
    ## # A tibble: 4 x 1
    ##   PredatorStage
    ##   <fct>        
    ## 1 juv./adults  
    ## 2 recruits/juv.
    ## 3 adults       
    ## 4 <NA>         
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "FoodIdetritus_fooditems"          "FoodInekton_fooditems"           
    ##  [3] "FoodIothers_fooditems"            "FoodIplants_fooditems"           
    ##  [5] "FoodIzoobenthos_fooditems"        "FoodIzooplankton_fooditems"      
    ##  [7] "PreyStageadults_fooditems"        "PreyStageeggs_fooditems"         
    ##  [9] "PreyStagefruits.seeds_fooditems"  "PreyStagejuv..adults_fooditems"  
    ## [11] "PreyStagelarvae_fooditems"        "PreyStageleaves.blades_fooditems"
    ## [13] "PreyStagen.a..others_fooditems"   "PreyStagenymphs_fooditems"       
    ## [15] "PreyStagepupae_fooditems"         "PreyStagerecruits.juv._fooditems"
    ## [17] "PreyStageroots_fooditems"         "record_count_species_fooditems"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  FoodIdetritus_fooditems FoodInekton_fooditems FoodIothers_fooditems
    ##  0   :40                 0   :24               0   :44              
    ##  1   :11                 1   :27               1   : 7              
    ##  NA's:21                 NA's:21               NA's:21              
    ##                                                                     
    ##                                                                     
    ##                                                                     
    ##  FoodIplants_fooditems FoodIzoobenthos_fooditems FoodIzooplankton_fooditems
    ##  0   :28               0   :10                   0   :21                   
    ##  1   :23               1   :41                   1   :30                   
    ##  NA's:21               NA's:21                   NA's:21                   
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##  PreyStageadults_fooditems PreyStageeggs_fooditems
    ##  0   :29                   0   :42                
    ##  1   :22                   1   : 9                
    ##  NA's:21                   NA's:21                
    ##                                                   
    ##                                                   
    ##                                                   
    ##  PreyStagefruits.seeds_fooditems PreyStagejuv..adults_fooditems
    ##  0   :49                         0   : 9                       
    ##  1   : 2                         1   :42                       
    ##  NA's:21                         NA's:21                       
    ##                                                                
    ##                                                                
    ##                                                                
    ##  PreyStagelarvae_fooditems PreyStageleaves.blades_fooditems
    ##  0   :35                   0   :43                         
    ##  1   :16                   1   : 8                         
    ##  NA's:21                   NA's:21                         
    ##                                                            
    ##                                                            
    ##                                                            
    ##  PreyStagen.a..others_fooditems PreyStagenymphs_fooditems
    ##  0   :27                        0   :50                  
    ##  1   :24                        1   : 1                  
    ##  NA's:21                        NA's:21                  
    ##                                                          
    ##                                                          
    ##                                                          
    ##  PreyStagepupae_fooditems PreyStagerecruits.juv._fooditems
    ##  0   :47                  0   :46                         
    ##  1   : 4                  1   : 5                         
    ##  NA's:21                  NA's:21                         
    ##                                                           
    ##                                                           
    ##                                                           
    ##  PreyStageroots_fooditems record_count_species_fooditems
    ##  0   :50                  Min.   :  1.00                
    ##  1   : 1                  1st Qu.:  1.00                
    ##  NA's:21                  Median :  5.50                
    ##                           Mean   : 24.19                
    ##                           3rd Qu.: 16.50                
    ##                           Max.   :549.00

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))

load("out_fooditems.Rdata")
```

\#\#genetic – don’t think we want to use this, but including just to see
what it shows

``` r
# load("DF_fooditems.Rdata")
# DF= DF_estimate
# 
# test = data.frame(genetics(DF$Species[1]))
# names(test)
```

\#\#introductions – species introductions data. for now making one new
feature: the number of records about introductions; it seems that each
row is a different place
\#\#<https://www.fishbase.in/manual/fishbasethe_introduction_table.htm>

``` r
rm(table_out)
table_name = "introductions"
T<- introductions()

# T$Estabwild = tolower(T$Estabwild)#added tolower to function

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"      "autoctr"       "StockCode"     "IntrCaseRefNo"
    ##  [5] "IntrSourceRef" "InvasiveRef"   "Remarks"       "Entered"      
    ##  [9] "DateEntered"   "Expert"        "Comments"      "Modified"     
    ## [13] "DateModified"  "DateChecked"   "SpecCode"      "StockCode"    
    ## [17] "C_Code_To"     "C_Code_From"   "Year"          "OtherReason2" 
    ## [21] "TS"            "RecordSource"  "From"          "C_Code_From"  
    ## [25] "Area_From"     "PeriodOrder"   "TO"            "Area_To"      
    ## [29] "ReasonOrder"   "Introducer"    "EstabType"     "EcolEffType"  
    ## [33] "SocioEffType"  "TS"           
    ## [1] "kept fields"
    ##  [1] "Species"     "RangeMin"    "RangeMax"    "Period"      "Reason"     
    ##  [6] "OtherReason" "Estabwild"   "EstabAqua"   "ComAqua"     "ReproMode"  
    ## [11] "EcolEff"     "Impacts"     "SocioEff"    "Invasive"   
    ## [1] "T_b_multiple_sum, Species field count"
    ## [1] 1
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "EstabAqua_introductions"                                
    ##  [2] "Invasive_introductions"                                 
    ##  [3] "RangeMin_introductions"                                 
    ##  [4] "RangeMax_introductions"                                 
    ##  [5] "Period18th.century_introductions"                       
    ##  [6] "Period1900.1924_introductions"                          
    ##  [7] "Period1925.1949_introductions"                          
    ##  [8] "Period1950.1974_introductions"                          
    ##  [9] "Period1975.1999_introductions"                          
    ## [10] "Period19th.century_introductions"                       
    ## [11] "Period2000.present_introductions"                       
    ## [12] "Periodpre.18th.century_introductions"                   
    ## [13] "Periodunknown_introductions"                            
    ## [14] "Reasonaccidental_introductions"                         
    ## [15] "Reasonaccidental.with.ships_introductions"              
    ## [16] "Reasonangling.sport_introductions"                      
    ## [17] "Reasonaquaculture_introductions"                        
    ## [18] "Reasondiffused.from.other.countries_introductions"      
    ## [19] "Reasonfill.ecological.niche_introductions"              
    ## [20] "Reasonfisheries_introductions"                          
    ## [21] "Reasonforage_introductions"                             
    ## [22] "Reasonlessepsian.migration_introductions"               
    ## [23] "Reasonmosquito.control_introductions"                   
    ## [24] "Reasonno.data_introductions"                            
    ## [25] "Reasonornamental_introductions"                         
    ## [26] "Reasonremoval.of.natural.barrier_introductions"         
    ## [27] "Reasonresearch_introductions"                           
    ## [28] "Reasonunknown_introductions"                            
    ## [29] "OtherReasonaccidental_introductions"                    
    ## [30] "OtherReasonaccidental.with.ships_introductions"         
    ## [31] "OtherReasonangling.sport_introductions"                 
    ## [32] "OtherReasonaquaculture_introductions"                   
    ## [33] "OtherReasondiffused.from.other.countries_introductions" 
    ## [34] "OtherReasonfill.ecological.niche_introductions"         
    ## [35] "OtherReasonfisheries_introductions"                     
    ## [36] "OtherReasonforage_introductions"                        
    ## [37] "OtherReasonmosquito.control_introductions"              
    ## [38] "OtherReasonno.data_introductions"                       
    ## [39] "OtherReasonornamental_introductions"                    
    ## [40] "OtherReasonother.reasons_introductions"                 
    ## [41] "OtherReasonresearch_introductions"                      
    ## [42] "OtherReasonunknown_introductions"                       
    ## [43] "OtherReasonweed.control_introductions"                  
    ## [44] "Estabwildestablished_introductions"                     
    ## [45] "Estabwildno_introductions"                              
    ## [46] "Estabwildno.data_introductions"                         
    ## [47] "Estabwildnot.established_introductions"                 
    ## [48] "Estabwildprobably.established_introductions"            
    ## [49] "Estabwildprobably.no_introductions"                     
    ## [50] "Estabwildprobably.not.established_introductions"        
    ## [51] "Estabwildprobably.yes_introductions"                    
    ## [52] "Estabwildunknown_introductions"                         
    ## [53] "Estabwildyes_introductions"                             
    ## [54] "ComAquanever.used_introductions"                        
    ## [55] "ComAquano.data_introductions"                           
    ## [56] "ComAquararely.used_introductions"                       
    ## [57] "ComAquaunknown_introductions"                           
    ## [58] "ComAquawidely.used_introductions"                       
    ## [59] "ReproModeassisted.artificial.reproduction_introductions"
    ## [60] "ReproModecontinuous.imports_introductions"              
    ## [61] "ReproModenatural.reproduction_introductions"            
    ## [62] "ReproModeno.data_introductions"                         
    ## [63] "ReproModeunassisted.reproduction_introductions"         
    ## [64] "ReproModeunknown_introductions"                         
    ## [65] "EcolEffno.data_introductions"                           
    ## [66] "EcolEffnone_introductions"                              
    ## [67] "EcolEffprobably.none_introductions"                     
    ## [68] "EcolEffprobably.some_introductions"                     
    ## [69] "EcolEffsome_introductions"                              
    ## [70] "EcolEffunknown_introductions"                           
    ## [71] "EcolEffyes_introductions"                               
    ## [72] "SocioEffno.data_introductions"                          
    ## [73] "SocioEffnone_introductions"                             
    ## [74] "SocioEffprobably.none_introductions"                    
    ## [75] "SocioEffprobably.some_introductions"                    
    ## [76] "SocioEffsome_introductions"                             
    ## [77] "SocioEffunknown_introductions"                          
    ## [78] "record_count_species_introductions"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  EstabAqua_introductions Invasive_introductions RangeMin_introductions
    ##  Min.   :0.0000          Min.   :0.0000         Min.   :1584          
    ##  1st Qu.:0.0000          1st Qu.:0.0000         1st Qu.:1950          
    ##  Median :1.0000          Median :0.0000         Median :1960          
    ##  Mean   :0.5454          Mean   :0.2121         Mean   :1933          
    ##  3rd Qu.:1.0000          3rd Qu.:0.0000         3rd Qu.:1974          
    ##  Max.   :1.0000          Max.   :1.0000         Max.   :1990          
    ##  NA's   :39              NA's   :39             NA's   :53            
    ##  RangeMax_introductions Period18th.century_introductions
    ##  Min.   :1702           0   :32                         
    ##  1st Qu.:1960           1   : 1                         
    ##  Median :1971           NA's:39                         
    ##  Mean   :1953                                           
    ##  3rd Qu.:1981                                           
    ##  Max.   :1999                                           
    ##  NA's   :52                                             
    ##  Period1900.1924_introductions Period1925.1949_introductions
    ##  0   :22                       0   :23                      
    ##  1   :11                       1   :10                      
    ##  NA's:39                       NA's:39                      
    ##                                                             
    ##                                                             
    ##                                                             
    ##                                                             
    ##  Period1950.1974_introductions Period1975.1999_introductions
    ##  0   :13                       0   :13                      
    ##  1   :20                       1   :20                      
    ##  NA's:39                       NA's:39                      
    ##                                                             
    ##                                                             
    ##                                                             
    ##                                                             
    ##  Period19th.century_introductions Period2000.present_introductions
    ##  0   :30                          0   :27                         
    ##  1   : 3                          1   : 6                         
    ##  NA's:39                          NA's:39                         
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##  Periodpre.18th.century_introductions Periodunknown_introductions
    ##  0   :31                              0   : 4                    
    ##  1   : 2                              1   :29                    
    ##  NA's:39                              NA's:39                    
    ##                                                                  
    ##                                                                  
    ##                                                                  
    ##                                                                  
    ##  Reasonaccidental_introductions Reasonaccidental.with.ships_introductions
    ##  0   :26                        0   :31                                  
    ##  1   : 6                        1   : 1                                  
    ##  NA's:40                        NA's:40                                  
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##  Reasonangling.sport_introductions Reasonaquaculture_introductions
    ##  0   :25                           0   :15                        
    ##  1   : 7                           1   :17                        
    ##  NA's:40                           NA's:40                        
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##  Reasondiffused.from.other.countries_introductions
    ##  0   :26                                          
    ##  1   : 6                                          
    ##  NA's:40                                          
    ##                                                   
    ##                                                   
    ##                                                   
    ##                                                   
    ##  Reasonfill.ecological.niche_introductions Reasonfisheries_introductions
    ##  0   :29                                   0   :25                      
    ##  1   : 3                                   1   : 7                      
    ##  NA's:40                                   NA's:40                      
    ##                                                                         
    ##                                                                         
    ##                                                                         
    ##                                                                         
    ##  Reasonforage_introductions Reasonlessepsian.migration_introductions
    ##  0   :31                    0   :31                                 
    ##  1   : 1                    1   : 1                                 
    ##  NA's:40                    NA's:40                                 
    ##                                                                     
    ##                                                                     
    ##                                                                     
    ##                                                                     
    ##  Reasonmosquito.control_introductions Reasonno.data_introductions
    ##  0   :28                              0   :22                    
    ##  1   : 4                              1   :10                    
    ##  NA's:40                              NA's:40                    
    ##                                                                  
    ##                                                                  
    ##                                                                  
    ##                                                                  
    ##  Reasonornamental_introductions Reasonremoval.of.natural.barrier_introductions
    ##  0   :17                        0   :31                                       
    ##  1   :15                        1   : 1                                       
    ##  NA's:40                        NA's:40                                       
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##  Reasonresearch_introductions Reasonunknown_introductions
    ##  0   :28                      0   :12                    
    ##  1   : 4                      1   :20                    
    ##  NA's:40                      NA's:40                    
    ##                                                          
    ##                                                          
    ##                                                          
    ##                                                          
    ##  OtherReasonaccidental_introductions
    ##  0   : 1                            
    ##  NA's:71                            
    ##                                     
    ##                                     
    ##                                     
    ##                                     
    ##                                     
    ##  OtherReasonaccidental.with.ships_introductions
    ##  0   : 1                                       
    ##  NA's:71                                       
    ##                                                
    ##                                                
    ##                                                
    ##                                                
    ##                                                
    ##  OtherReasonangling.sport_introductions OtherReasonaquaculture_introductions
    ##  0   : 1                                0   : 1                             
    ##  NA's:71                                NA's:71                             
    ##                                                                             
    ##                                                                             
    ##                                                                             
    ##                                                                             
    ##                                                                             
    ##  OtherReasondiffused.from.other.countries_introductions
    ##  0   : 1                                               
    ##  NA's:71                                               
    ##                                                        
    ##                                                        
    ##                                                        
    ##                                                        
    ##                                                        
    ##  OtherReasonfill.ecological.niche_introductions
    ##  0   : 1                                       
    ##  NA's:71                                       
    ##                                                
    ##                                                
    ##                                                
    ##                                                
    ##                                                
    ##  OtherReasonfisheries_introductions OtherReasonforage_introductions
    ##  0   : 1                            0   : 1                        
    ##  NA's:71                            NA's:71                        
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##  OtherReasonmosquito.control_introductions OtherReasonno.data_introductions
    ##  0   : 1                                   1   : 1                         
    ##  NA's:71                                   NA's:71                         
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##  OtherReasonornamental_introductions OtherReasonother.reasons_introductions
    ##  0   : 1                             0   : 1                               
    ##  NA's:71                             NA's:71                               
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##  OtherReasonresearch_introductions OtherReasonunknown_introductions
    ##  0   : 1                           0   : 1                         
    ##  NA's:71                           NA's:71                         
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##  OtherReasonweed.control_introductions Estabwildestablished_introductions
    ##  0   : 1                               0   : 8                           
    ##  NA's:71                               1   :24                           
    ##                                        NA's:40                           
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##  Estabwildno_introductions Estabwildno.data_introductions
    ##  0   :32                   0   :28                       
    ##  NA's:40                   1   : 4                       
    ##                            NA's:40                       
    ##                                                          
    ##                                                          
    ##                                                          
    ##                                                          
    ##  Estabwildnot.established_introductions
    ##  0   :18                               
    ##  1   :14                               
    ##  NA's:40                               
    ##                                        
    ##                                        
    ##                                        
    ##                                        
    ##  Estabwildprobably.established_introductions Estabwildprobably.no_introductions
    ##  0   :17                                     0   :32                           
    ##  1   :15                                     NA's:40                           
    ##  NA's:40                                                                       
    ##                                                                                
    ##                                                                                
    ##                                                                                
    ##                                                                                
    ##  Estabwildprobably.not.established_introductions
    ##  0   :21                                        
    ##  1   :11                                        
    ##  NA's:40                                        
    ##                                                 
    ##                                                 
    ##                                                 
    ##                                                 
    ##  Estabwildprobably.yes_introductions Estabwildunknown_introductions
    ##  0   :32                             0   : 9                       
    ##  NA's:40                             1   :23                       
    ##                                      NA's:40                       
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##  Estabwildyes_introductions ComAquanever.used_introductions
    ##  0   :30                    0   : 2                        
    ##  1   : 2                    NA's:70                        
    ##  NA's:40                                                   
    ##                                                            
    ##                                                            
    ##                                                            
    ##                                                            
    ##  ComAquano.data_introductions ComAquararely.used_introductions
    ##  1   : 2                      0   : 2                         
    ##  NA's:70                      NA's:70                         
    ##                                                               
    ##                                                               
    ##                                                               
    ##                                                               
    ##                                                               
    ##  ComAquaunknown_introductions ComAquawidely.used_introductions
    ##  0   : 2                      0   : 2                         
    ##  NA's:70                      NA's:70                         
    ##                                                               
    ##                                                               
    ##                                                               
    ##                                                               
    ##                                                               
    ##  ReproModeassisted.artificial.reproduction_introductions
    ##  0   : 2                                                
    ##  NA's:70                                                
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##  ReproModecontinuous.imports_introductions
    ##  0   : 2                                  
    ##  NA's:70                                  
    ##                                           
    ##                                           
    ##                                           
    ##                                           
    ##                                           
    ##  ReproModenatural.reproduction_introductions ReproModeno.data_introductions
    ##  0   : 2                                     1   : 2                       
    ##  NA's:70                                     NA's:70                       
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##  ReproModeunassisted.reproduction_introductions ReproModeunknown_introductions
    ##  0   : 2                                        0   : 2                       
    ##  NA's:70                                        NA's:70                       
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##  EcolEffno.data_introductions EcolEffnone_introductions
    ##  0   : 2                      0   : 2                  
    ##  1   : 1                      1   : 1                  
    ##  NA's:69                      NA's:69                  
    ##                                                        
    ##                                                        
    ##                                                        
    ##                                                        
    ##  EcolEffprobably.none_introductions EcolEffprobably.some_introductions
    ##  0   : 3                            0   : 3                           
    ##  NA's:69                            NA's:69                           
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##  EcolEffsome_introductions EcolEffunknown_introductions
    ##  0   : 3                   1   : 3                     
    ##  NA's:69                   NA's:69                     
    ##                                                        
    ##                                                        
    ##                                                        
    ##                                                        
    ##                                                        
    ##  EcolEffyes_introductions SocioEffno.data_introductions
    ##  0   : 3                  0   : 1                      
    ##  NA's:69                  1   : 2                      
    ##                           NA's:69                      
    ##                                                        
    ##                                                        
    ##                                                        
    ##                                                        
    ##  SocioEffnone_introductions SocioEffprobably.none_introductions
    ##  0   : 3                    0   : 3                            
    ##  NA's:69                    NA's:69                            
    ##                                                                
    ##                                                                
    ##                                                                
    ##                                                                
    ##                                                                
    ##  SocioEffprobably.some_introductions SocioEffsome_introductions
    ##  0   : 2                             0   : 2                   
    ##  1   : 1                             1   : 1                   
    ##  NA's:69                             NA's:69                   
    ##                                                                
    ##                                                                
    ##                                                                
    ##                                                                
    ##  SocioEffunknown_introductions record_count_species_introductions
    ##  0   : 1                       Min.   :  1.00                    
    ##  1   : 2                       1st Qu.:  1.00                    
    ##  NA's:69                       Median :  1.00                    
    ##                                Mean   : 10.78                    
    ##                                3rd Qu.:  7.00                    
    ##                                Max.   :130.00                    
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))


# #simplify into two categories: yes or no
# no = c("not established", "probably not established", "probably no", "probably no", "no")
# yes = c("established", "probably established", "yes", "probably yes")
# 
# Estabwild_binary=rep(NA, dim(F_f1)[1])
# 
# inds = which(F_f1$Estabwild %in% no)
# Estabwild_binary[inds] = 0
# 
# inds = which(F_f1$Estabwild %in% yes)
# Estabwild_binary[inds] = 1
# 
# F_f1$Estabwild_binary = Estabwild_binary

# F_f1$Estabwild_binary = factor(F_f1$Estabwild_binary)

# F_f1 = F_f1[, c("Species", "Estabwild_binary")]
# # F_f1 = subset(F_f1, Species == "Cyprinus carpio")
# F_sum <- F_f1 %>% 
#   drop_na(Estabwild_binary) %>% 
#   # na.omit() %>%#didn't work 
# 
#   group_by(Species) %>%
#   summarize(Estabwild_binary_mean = mean(Estabwild_binary))
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

    ##   SpecCode       Species autoctr StockCode LarvaeRefNo OtherRef1 OtherRef2
    ## 1       80 Chanos chanos     107        95          49       140      9902
    ##                             LarvalArea PlaceofDevelopment LhMax LBirthmaxRef
    ## 1 Western Pacific (Philippines, Japan)         planktonic   3.4          140
    ##   LhMin LBirthminRef LhMid LBirthmodRef PreanalLengthMaxY PreAnmaxRef
    ## 1   3.2          139     4        26505                NA          NA
    ##   PreanalLengthMinY PreAnminRef PreanalLengthModY PreAnmodRef FlexLengthMin
    ## 1               2.6         139                NA          NA           4.5
    ##   FlexLengthMod FlexLengthMax FlexLengthType FlexLengthMinRef FlexLengthModRef
    ## 1            NA             7             TL            43010               NA
    ##   FlexLengthMaxRef TransLengthMin TransLengthMod TransLengthMax TransLengthType
    ## 1              140             NA             NA             NA              TL
    ##   TransLengthMinRef TransLengthModRef TransLengthMaxRef LarvalDurationMin
    ## 1                NA                NA                NA                NA
    ##   LarvalDurationMinRef LarvalDurationMax LarvalDurationMaxRef LarvalDurationMod
    ## 1                   NA                NA                   NA                10
    ##   LarvalDurationModRef Shapeofyolksac YolksacPigm YolksacSegm YolkRef
    ## 1                   49      elongated   pigmented   segmented      NA
    ##      OilGlobules OilGlobuleposH OilGlobuleposV OilGlobulePigm RowsonTailY
    ## 1 no oil globule           <NA>           <NA>           <NA>     no rows
    ##         OtherMelOnTailY              MelonHeadTrunkY LyaMax L1FeedmaxRef LyaMin
    ## 1 no other melanophores melanophores on head + trunk    5.6        26505    3.4
    ##   L1FeedminRef LyaMod L1FeedmodRef JanLarv FebLarv MarLarv AprLarv MayLarv
    ## 1        26505    4.5        26505       0       0       0       0       0
    ##   JunLarv JulLarv AugLarv SepLarv OctLarv NovLarv DecLarv PresenceRef
    ## 1       0       0       0       0       0       0       0          NA
    ##   WaterDepthMax WaterTempMax SalinityMax pH OxygenMax WatermaxRef WaterDepthMin
    ## 1            NA           32          34 NA        NA          NA            NA
    ##   WaterTempMin SalinityMin pHMin OxygenMin WaterminRef WaterDepthMod
    ## 1           23          10    NA        NA          NA            NA
    ##   WaterTempMod SalinityMod pHMod OxygenMod WatermodRef StrikingFeature LarvaPic
    ## 1           30          32    NA        NA          NA            none     <NA>
    ##        StrikingShapeLat StrikingShapeDors  BodyForm ShapeofGut GasBladderEarly
    ## 1 normal (not striking)        compressed elongated  tube-like         visible
    ##   GasBladderLate SpinalArmatureEarl SpinalArmatureLate          RowsonTailE
    ## 1        visible          no spines          no spines dorsal + ventral row
    ##         OtherMelonTailE       MelonHeadTrunkE                    RowsonTaill
    ## 1 no other melanophores melanophores on trunk dorsal + ventral + lateral row
    ##                         OtherMelonTaill              MelonHeadTrunkl
    ## 1 tail partly covered with melanophores melanophores on head + trunk
    ##   UrostyleRegion UrostyleRegionLate                Peritoneum PectoralsI
    ## 1    unpigmented        unpigmented covered with melanophores     normal
    ##            PectoralsII                      PelvicsI            PelvicsII
    ## 1 without melanophores normal (i.e. small or absent) without melanophores
    ##   MyomeresMax MyomeresMin MyomeresMod MyomVert TotMyomRef MyomeresMaxPrean
    ## 1          47          44          NA myomeres      43010               NA
    ##   MyomeresMinPrean MyomeresModPrean MyomVert2 PreAnMyoRef RLLatePre RLLateFlex
    ## 1               NA               32  myomeres         139        NA         NA
    ##   RLLatePost RLEarlyPre RLEarlyFlex RLEarlyPost RLFlexPre RLFlexFlex RLFlexPost
    ## 1         NA         NA          NA          NA        NA         NA         NA
    ##   MeasurementsPreRef MeasurementsFlexRef MeasurementsPostRef TypePre TypeFlex
    ## 1                 NA                  NA                  NA    <NA>       NA
    ##   TypePost comment PreanalLengthMaxPre PreanalLengthMaxFlex
    ## 1     <NA>    <NA>                  NA                   NA
    ##   PreanalLengthMaxPost PreanalLengthMinPre PreanalLengthMinFlex
    ## 1                   NA                  NA                   NA
    ##   PreanalLengthMinPost PreanalLengthLitPre PreanalLengthLitFlex
    ## 1                   NA                  NA                   NA
    ##   PreanalLengthLitPost PrepecLengthMaxPre PrepecLengthMaxFlex
    ## 1                   NA                 NA                  NA
    ##   PrepecLengthMaxPost PrepecLengthMinPre PrepecLengthMinFlex
    ## 1                  NA                 NA                  NA
    ##   PrepecLengthMinPost PrepecLengthLitPre PrepecLengthLitFlex
    ## 1                  NA                 NA                  NA
    ##   PrepecLengthLitPost PreorbitalMaxPre PreorbitalMaxFlex PreorbitalMaxPost
    ## 1                  NA               NA                NA                NA
    ##   PreorbitalMinPre PreorbitalMinFlex PreorbitalMinPost PreorbitalLitPre
    ## 1               NA                NA                NA               NA
    ##   PreorbitalLitFlex PreorbitalLitPost DiameterofEyeMaxPre DiameterofEyeMaxFlex
    ## 1                NA                NA                  NA                   NA
    ##   DiameterofEyeMaxPost DiameterofEyeMinPre DiameterofEyeMinFlex
    ## 1                   NA                  NA                   NA
    ##   DiameterofEyeMinPost DiameterofEyeLitPre DiameterofEyeLitFlex
    ## 1                   NA                  NA                   NA
    ##   DiameterofEyeLitPost DepthEyeMaxPre DepthEyeMaxFlex DepthEyeMaxPost
    ## 1                   NA             NA              NA              NA
    ##   DepthEyeMinPre DepthEyeMinFlex DepthEyeMinPost DepthEyeLitPre DepthEyeLitFlex
    ## 1             NA              NA              NA             NA              NA
    ##   DepthEyeLitPost DepthPectoralMaxPre DepthPectoralMaxFlex DepthPectoralMaxPost
    ## 1              NA                  NA                   NA                   NA
    ##   DepthPectoralMinPre DepthPectoralMinFlex DepthPectoralMinPost
    ## 1                  NA                   NA                   NA
    ##   DepthPectoralLitPre DepthPectoralLitFlex DepthPectoralLitPost DepthAnusMaxPre
    ## 1                  NA                   NA                   NA              NA
    ##   DepthAnusMaxFlex DepthAnusMaxPost DepthAnusMinPre DepthAnusMinFlex
    ## 1               NA               NA              NA               NA
    ##   DepthAnusMinPost DepthAnusLitPre DepthAnusLitFlex DepthAnusLitPost
    ## 1               NA              NA               NA               NA
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              AddCharYolks
    ## 1 At hatching, no eye pigmentation and no fin buds are present. Eye pigmentation start to appear 36 hours after hatching and completed at 54 hours. The mouth opened at 54 hours and soon became movable (mouth width was 500 <b5>m). Long and straight gut reaches to about 80% of BL.\r\nPigmentation: Black pigment cells are present in the finfold except the tip of the caudal region. Pigment is also scattered in the yolk mass and on the head and body of the larva (Ref. 139).\r\nThe arrangement of muscle fibers in the myotomes of <i>Chanos</i> larvae is parallel to the longitudinal axis of the body. Characteristic swimming behaviour: the larvae  remains suspended head down in the water column near the surface, then sinks slowly, upon reaching a depth of about 5-8 cm, the larvae makes a sudden upward turn of 360<b0> before swimming rapidly to the surface. This behaviour lasts mainly for two days. At this stage, larvae are slightly negatively bouyant (Ref. 43081).
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       AddCharPosts
    ## 1 Yolk is completely absorbed on the 3rd day.\r\nEyes well pigmented. Functional mouth with an opening present. At flexion, body becomes transparent and stomach contents visible. Larvae (and adults) lack teeth. \r\nPigmentation: Pigments scattered over the upper half of the body and on peritoneal wall. Mediolateral pigment on the caudal region proceeding anteriorly. Pigmentation on head region increases.\r\nSequence of fin development: pectoral, caudal, dorsal and anal, pelvic.
    ##                                              EaseofID SimilarSpecies1
    ## 1 likely to be confused with closely related species.              NA
    ##   SimilarSpec1Remarks SimilarSpecies2 SimilarSpec2Remarks Entered DateEntered
    ## 1                <NA>              NA                <NA>       2  1990-10-19
    ##   Modified        DateModified Expert DateChecked TS
    ## 1      405 2003-07-01 15:58:31     NA        <NA> NA

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
    ## [1] 1
    ## [1] 2
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
    ## [1] 1
    ## [1] 2
    ## [1] 1
    ## [1] 1
    ## [1] 4
    ## [1] 1
    ## [1] 20
    ## [1] 19
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

F <- maturity()

F[sapply(F, is.character)] <- lapply(F[sapply(F, is.character)], 
                                       as.factor)
F_f <- F %>%  select_if(is.factor) 

names(F_f)#none relevant
```

    ## [1] "Species"  "Sex"      "Type1"    "Locality" "C_Code"   "Comment"

``` r
F_n <- F %>%  select_if(is.numeric) 

names(F_n)
```

    ##  [1] "SpecCode"      "autoctr"       "StockCode"     "MaturityRefNo"
    ##  [5] "AgeMatMin"     "AgeMatMin2"    "AgeMatRef"     "tm"           
    ##  [9] "Number"        "r2"            "SE_tm"         "SD_tm"        
    ## [13] "LCL_tm"        "UCL_tm"        "LengthMatMin"  "LengthMatMin2"
    ## [17] "LengthMatRef"  "Lm"            "SE_Lm"         "SD_Lm"        
    ## [21] "LCL_Lm"        "UCL_Lm"        "E_CODE"        "Entered"      
    ## [25] "Modified"      "Expert"

``` r
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
    ## [1] 1
    ## [1] 5
    ## [1] 3
    ## [1] 16
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
\#\#there are multiple records for some species.

``` r
rm(table_out)
table_name = "morphology"
T<-morphology()


load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##   [1] "SpecCode"            "autoctr"             "StockCode"          
    ##   [4] "MorphDatRefNo"       "OtherRef1"           "OtherRef2"          
    ##   [7] "RemarkSex"           "SimilarSpec1Remarks" "SimilarSpec2Remarks"
    ##  [10] "Entered"             "DateEntered"         "Expert"             
    ##  [13] "CommentonTeeth"      "Modified"            "DateModified"       
    ##  [16] "DateChecked"         "SpecCode"            "StockCode"          
    ##  [19] "SexualAttributes"    "SexMorphology"       "SexColors"          
    ##  [22] "RemarkSex"           "MandibleTeethT2"     "MaxillaTeethT2"     
    ##  [25] "VomerineTeethT2"     "PalatineTeethT2"     "PharyngealTeethT2"  
    ##  [28] "Pspines2"            "VPosition2"          "SimilarSpecies2"    
    ##  [31] "SimilarSpec2Remarks" "OtherRef2"           "BodyShapeII"        
    ##  [34] "HorStripesTTII"      "VerStripesTTII"      "VerStripesTTIII"    
    ##  [37] "DiaStripesTTII"      "DiaStripesTTIII"     "CurStripesTTII"     
    ##  [40] "CurStripesTTIII"     "SpotsTTII"           "SpotsTTIII"         
    ##  [43] "DorsalFinII"         "CaudalFinII"         "AnalFinII"          
    ##  [46] "VerStripesTTIII"     "DiaStripesTTIII"     "CurStripesTTIII"    
    ##  [49] "SpotsTTIII"          "LateralLinesNo"      "ScalesLateralmin"   
    ##  [52] "ScalesLateralmax"    "LatSeriesMin"        "LatSeriesMax"       
    ##  [55] "TS"                  "StandardLengthCm"    "HeadLength"         
    ##  [58] "PreDorsalLength"     "PrePelvicsLength"    "PreAnalLength"      
    ##  [61] "PeduncleLength"      "PreorbitalLength"    "EyeLength"          
    ##  [64] "AppearancePic"       "VomerineTeethT1"     "VomerineTeethT2"    
    ##  [67] "PalatineTeethT1"     "PharyngealTeethT2"   "PalatineTeethT2"    
    ##  [70] "HorStripesTTII"      "VerStripesTTII"      "VerStripesTTIII"    
    ##  [73] "VerStripesTTIII"     "DiaStripesTTII"      "DiaStripesTTIII"    
    ##  [76] "DiaStripesTTIII"     "CurStripesTTII"      "CurStripesTTIII"    
    ##  [79] "CurStripesTTIII"     "SpotsTTII"           "SpotsTTIII"         
    ##  [82] "SpotsTTIII"          "DorsalFinII"         "CaudalFinII"        
    ##  [85] "AnalFinII"           "EaseofID"            "AddChars"           
    ##  [88] "TypeofMouth"         "PharyngealTeethT1"   "Lipsteeth"          
    ##  [91] "DermalTeeth"         "MandibleTeethT2"     "MaxillaTeethT2"     
    ##  [94] "DermalTeeth"         "BarbelsType"         "Vertebrae"          
    ##  [97] "VertebraePreanMin"   "VertebraePreanMax"   "VertebraeTotalMin"  
    ## [100] "VertebraeTotalMax"   "SimilarSpecies1"     "SimilarSpecies2"    
    ## [103] "TypeofEyes"          "TypeofMouth"         "TypeofScales"       
    ## [106] "BarbelsType"         "StandardLengthCm"    "HeadLength"         
    ## [109] "PreDorsalLength"     "PrePelvicsLength"    "PreAnalLength"      
    ## [112] "PeduncleLength"      "PreorbitalLength"    "EyeLength"          
    ## [115] "StandardLengthCm"    "HeadLength"          "PreDorsalLength"    
    ## [118] "PrePelvicsLength"    "PreAnalLength"       "PeduncleLength"     
    ## [121] "PreorbitalLength"    "EyeLength"           "TS"                 
    ## [1] "kept fields"
    ##  [1] "Species"            "Females"            "Males"             
    ##  [4] "StrikingFeatures"   "BodyShapeI"         "Forehead"          
    ##  [7] "OperculumPresent"   "PosofMouth"         "MandibleTeeth"     
    ## [10] "MandibleTeethT1"    "MandibleRowsMin"    "MandibleRowsMax"   
    ## [13] "MaxillaTeeth"       "MaxillaTeethT1"     "MaxillaRowsMin"    
    ## [16] "MaxillaRowsMax"     "VomerineTeeth"      "VomerineRowsMin"   
    ## [19] "VomerineRowsMax"    "Palatine"           "PalatineRowsMin"   
    ## [22] "PalatineRowsMax"    "PharyngealTeeth"    "PharyngealRowsMin" 
    ## [25] "PharyngealRowsMax"  "TeethonTongue"      "Scutes"            
    ## [28] "Keels"              "HorStripesTTI"      "VerStripesTTI"     
    ## [31] "DiaStripesTTI"      "CurStripesTTI"      "SpotsTTI"          
    ## [34] "DorsalFinI"         "CaudalFinI"         "AnalFinI"          
    ## [37] "LLinterrupted"      "PoredScalesMin"     "PoredScalesMax"    
    ## [40] "ScaleRowsAboveMin"  "ScaleRowsAboveMax"  "ScaleRowsBelowMin" 
    ## [43] "ScaleRowsBelowMax"  "ScalesPeduncMin"    "ScalesPeduncMax"   
    ## [46] "BarbelsNo"          "GillCleftsNo"       "Spiracle"          
    ## [49] "GillRakersLowMin"   "GillRakersLowMax"   "GillRakersUpMin"   
    ## [52] "GillRakersUpMax"    "GillRakersTotalMin" "GillRakersTotalMax"
    ## [55] "DorsalAttributes"   "Dfinno"             "DorsalSpinesMin"   
    ## [58] "DorsalSpinesMax"    "Notched"            "DorsalSoftRaysMin" 
    ## [61] "DorsalSoftRaysMax"  "Adifin"             "DFinletsmin"       
    ## [64] "DFinletsmax"        "VFinletsmin"        "VFinletsmax"       
    ## [67] "CShape"             "Attributes"         "Afinno"            
    ## [70] "AnalFinSpinesMin"   "AnalFinSpinesMax"   "Araymin"           
    ## [73] "Araymax"            "PectoralAttributes" "Praymin"           
    ## [76] "Praymax"            "PelvicsAttributes"  "VPosition"         
    ## [79] "Vspines"            "Vraymin"            "Vraymax"           
    ## [82] "Forklength"         "Totallength"        "PostHeadDepth"     
    ## [85] "PostTrunkDepth"     "MaximumDepth"       "PeduncleDepth"     
    ## [88] "CaudalHeight"      
    ## [1] "T_b_single_sum, Species field count"
    ## [1] 1
    ## [1] "T_b_multiple_sum, Species field count"
    ## [1] 1
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##   [1] "Notched_morphology"                                               
    ##   [2] "Females_morphology"                                               
    ##   [3] "Males_morphology"                                                 
    ##   [4] "OperculumPresent_morphology"                                      
    ##   [5] "LLinterrupted_morphology"                                         
    ##   [6] "MandibleRowsMin_morphology"                                       
    ##   [7] "MandibleRowsMax_morphology"                                       
    ##   [8] "MaxillaRowsMin_morphology"                                        
    ##   [9] "MaxillaRowsMax_morphology"                                        
    ##  [10] "Keels_morphology"                                                 
    ##  [11] "PoredScalesMin_morphology"                                        
    ##  [12] "PoredScalesMax_morphology"                                        
    ##  [13] "ScaleRowsAboveMin_morphology"                                     
    ##  [14] "ScaleRowsAboveMax_morphology"                                     
    ##  [15] "ScaleRowsBelowMin_morphology"                                     
    ##  [16] "ScaleRowsBelowMax_morphology"                                     
    ##  [17] "ScalesPeduncMin_morphology"                                       
    ##  [18] "ScalesPeduncMax_morphology"                                       
    ##  [19] "BarbelsNo_morphology"                                             
    ##  [20] "GillCleftsNo_morphology"                                          
    ##  [21] "GillRakersLowMin_morphology"                                      
    ##  [22] "GillRakersLowMax_morphology"                                      
    ##  [23] "GillRakersUpMin_morphology"                                       
    ##  [24] "GillRakersUpMax_morphology"                                       
    ##  [25] "GillRakersTotalMin_morphology"                                    
    ##  [26] "GillRakersTotalMax_morphology"                                    
    ##  [27] "Dfinno_morphology"                                                
    ##  [28] "DorsalSpinesMin_morphology"                                       
    ##  [29] "DorsalSpinesMax_morphology"                                       
    ##  [30] "DorsalSoftRaysMin_morphology"                                     
    ##  [31] "DorsalSoftRaysMax_morphology"                                     
    ##  [32] "DFinletsmin_morphology"                                           
    ##  [33] "DFinletsmax_morphology"                                           
    ##  [34] "VFinletsmin_morphology"                                           
    ##  [35] "VFinletsmax_morphology"                                           
    ##  [36] "Afinno_morphology"                                                
    ##  [37] "AnalFinSpinesMin_morphology"                                      
    ##  [38] "AnalFinSpinesMax_morphology"                                      
    ##  [39] "Araymin_morphology"                                               
    ##  [40] "Araymax_morphology"                                               
    ##  [41] "Praymin_morphology"                                               
    ##  [42] "Praymax_morphology"                                               
    ##  [43] "Vspines_morphology"                                               
    ##  [44] "Vraymin_morphology"                                               
    ##  [45] "Vraymax_morphology"                                               
    ##  [46] "Forklength_morphology"                                            
    ##  [47] "Totallength_morphology"                                           
    ##  [48] "PostHeadDepth_morphology"                                         
    ##  [49] "PostTrunkDepth_morphology"                                        
    ##  [50] "MaximumDepth_morphology"                                          
    ##  [51] "PeduncleDepth_morphology"                                         
    ##  [52] "CaudalHeight_morphology"                                          
    ##  [53] "StrikingFeaturesnone_morphology"                                  
    ##  [54] "StrikingFeaturesother..see.diagnosis._morphology"                 
    ##  [55] "StrikingFeaturesstriking.eyes_morphology"                         
    ##  [56] "StrikingFeaturesstriking.fins_morphology"                         
    ##  [57] "StrikingFeaturesstriking.shape.of.body_morphology"                
    ##  [58] "BodyShapeIeel.like_morphology"                                    
    ##  [59] "BodyShapeIelongated_morphology"                                   
    ##  [60] "BodyShapeIfusiform...normal_morphology"                           
    ##  [61] "BodyShapeIother_morphology"                                       
    ##  [62] "BodyShapeIshort.and...or.deep_morphology"                         
    ##  [63] "Foreheadclearly.concave_morphology"                               
    ##  [64] "Foreheadclearly.convex_morphology"                                
    ##  [65] "Foreheadmore.or.less.straight_morphology"                         
    ##  [66] "PosofMouthsub.terminal.inferior_morphology"                       
    ##  [67] "PosofMouthsuperior_morphology"                                    
    ##  [68] "PosofMouthterminal_morphology"                                    
    ##  [69] "MandibleTeethabsent_morphology"                                   
    ##  [70] "MandibleTeethpresent_morphology"                                  
    ##  [71] "MandibleTeethT1bicuspidate_morphology"                            
    ##  [72] "MandibleTeethT1canine.like_morphology"                            
    ##  [73] "MandibleTeethT1conical_morphology"                                
    ##  [74] "MandibleTeethT1tricuspidate_morphology"                           
    ##  [75] "MaxillaTeethabsent_morphology"                                    
    ##  [76] "MaxillaTeethpresent_morphology"                                   
    ##  [77] "MaxillaTeethT1canine.like_morphology"                             
    ##  [78] "MaxillaTeethT1conical_morphology"                                 
    ##  [79] "MaxillaTeethT1tricuspidate_morphology"                            
    ##  [80] "VomerineTeeth_morphology"                                         
    ##  [81] "Palatine_morphology"                                              
    ##  [82] "PharyngealTeethabsent_morphology"                                 
    ##  [83] "PharyngealTeethpresent_morphology"                                
    ##  [84] "TeethonTongue_morphology"                                         
    ##  [85] "Scutesabsent_morphology"                                          
    ##  [86] "Scutesalong.belly_morphology"                                     
    ##  [87] "HorStripesTTI_morphology"                                         
    ##  [88] "VerStripesTTIabsent_morphology"                                   
    ##  [89] "VerStripesTTIpresent_morphology"                                  
    ##  [90] "DiaStripesTTI_morphology"                                         
    ##  [91] "CurStripesTTI_morphology"                                         
    ##  [92] "SpotsTTImore.than.one.spot_morphology"                            
    ##  [93] "SpotsTTIno.spots_morphology"                                      
    ##  [94] "SpotsTTIone.spot.only_morphology"                                 
    ##  [95] "DorsalFinImore.than.one.spot.or.stripe_morphology"                
    ##  [96] "DorsalFinIno.spots.or.stripes_morphology"                         
    ##  [97] "DorsalFinIone.spot.or.stripe_morphology"                          
    ##  [98] "CaudalFinImore.than.one.spot.or.stripe_morphology"                
    ##  [99] "CaudalFinIno.spots.or.stripes_morphology"                         
    ## [100] "CaudalFinIone.spot.or.stripe_morphology"                          
    ## [101] "AnalFinImore.than.one.spot.or.stripe_morphology"                  
    ## [102] "AnalFinIno.spots.or.stripes_morphology"                           
    ## [103] "AnalFinIone.spot.or.stripe_morphology"                            
    ## [104] "Spiracle_morphology"                                              
    ## [105] "DorsalAttributescontinuous.with.caudal.fin_morphology"            
    ## [106] "DorsalAttributesextending.over.most.of.the.back.length_morphology"
    ## [107] "DorsalAttributesgreatly.reduced.or.absent_morphology"             
    ## [108] "DorsalAttributesmodified.to.suction.disc_morphology"              
    ## [109] "DorsalAttributesno.striking.attributes_morphology"                
    ## [110] "DorsalAttributesother_morphology"                                 
    ## [111] "Adifin_morphology"                                                
    ## [112] "CShapeforked_morphology"                                          
    ## [113] "CShapemore.or.less.truncate_morphology"                           
    ## [114] "CShapeother..see.remark._morphology"                              
    ## [115] "CShapepointed_morphology"                                         
    ## [116] "Attributesconfluent_morphology"                                   
    ## [117] "Attributesmore.or.less.normal_morphology"                         
    ## [118] "PectoralAttributesabsent_morphology"                              
    ## [119] "PectoralAttributesmore.or.less.normal_morphology"                 
    ## [120] "PectoralAttributestransformed.to..aerofoils._morphology"          
    ## [121] "PectoralAttributesused.for.locomotion_morphology"                 
    ## [122] "PectoralAttributesvery.large...lobe.like_morphology"              
    ## [123] "PelvicsAttributesmore.or.less.normal_morphology"                  
    ## [124] "PelvicsAttributessuppressed.absent_morphology"                    
    ## [125] "VPositionabdominal_morphology"                                    
    ## [126] "VPositionabsent_morphology"                                       
    ## [127] "VPositionjugular_morphology"                                      
    ## [128] "VPositionthoracic_morphology"                                     
    ## [129] "record_count_species_morphology"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  Notched_morphology Females_morphology Males_morphology
    ##  Min.   :0.0000     Min.   :0.0000     Min.   :0.0000  
    ##  1st Qu.:0.0000     1st Qu.:0.0000     1st Qu.:0.0000  
    ##  Median :0.0000     Median :0.0000     Median :0.0000  
    ##  Mean   :0.0339     Mean   :0.2131     Mean   :0.1967  
    ##  3rd Qu.:0.0000     3rd Qu.:0.0000     3rd Qu.:0.0000  
    ##  Max.   :1.0000     Max.   :1.0000     Max.   :1.0000  
    ##  NA's   :13         NA's   :11         NA's   :11      
    ##  OperculumPresent_morphology LLinterrupted_morphology
    ##  Min.   :0.0000              Min.   :0.00000         
    ##  1st Qu.:0.0000              1st Qu.:0.00000         
    ##  Median :0.0000              Median :0.00000         
    ##  Mean   :0.3443              Mean   :0.09836         
    ##  3rd Qu.:1.0000              3rd Qu.:0.00000         
    ##  Max.   :1.0000              Max.   :1.00000         
    ##  NA's   :11                  NA's   :11              
    ##  MandibleRowsMin_morphology MandibleRowsMax_morphology
    ##  Min.   :3.000              Min.   :5.000             
    ##  1st Qu.:3.179              1st Qu.:5.286             
    ##  Median :3.357              Median :5.571             
    ##  Mean   :3.357              Mean   :5.571             
    ##  3rd Qu.:3.536              3rd Qu.:5.857             
    ##  Max.   :3.714              Max.   :6.143             
    ##  NA's   :70                 NA's   :70                
    ##  MaxillaRowsMin_morphology MaxillaRowsMax_morphology Keels_morphology
    ##  Min.   :3.000             Min.   :5.000             Min.   :0       
    ##  1st Qu.:3.179             1st Qu.:5.286             1st Qu.:0       
    ##  Median :3.357             Median :5.571             Median :0       
    ##  Mean   :3.357             Mean   :5.571             Mean   :0       
    ##  3rd Qu.:3.536             3rd Qu.:5.857             3rd Qu.:0       
    ##  Max.   :3.714             Max.   :6.143             Max.   :0       
    ##  NA's   :70                NA's   :70                NA's   :60      
    ##  PoredScalesMin_morphology PoredScalesMax_morphology
    ##  Min.   : 20               Min.   : 22.0            
    ##  1st Qu.: 25               1st Qu.: 29.0            
    ##  Median : 55               Median : 65.0            
    ##  Mean   : 55               Mean   : 71.4            
    ##  3rd Qu.: 75               3rd Qu.: 91.0            
    ##  Max.   :100               Max.   :150.0            
    ##  NA's   :67                NA's   :67               
    ##  ScaleRowsAboveMin_morphology ScaleRowsAboveMax_morphology
    ##  Min.   : 1.500               Min.   : 3.0                
    ##  1st Qu.: 3.906               1st Qu.: 5.0                
    ##  Median : 4.250               Median : 5.5                
    ##  Mean   : 7.588               Mean   : 9.4                
    ##  3rd Qu.:11.000               3rd Qu.:13.0                
    ##  Max.   :22.000               Max.   :26.0                
    ##  NA's   :62                   NA's   :62                  
    ##  ScaleRowsBelowMin_morphology ScaleRowsBelowMax_morphology
    ##  Min.   : 5.500               Min.   : 6.500              
    ##  1st Qu.: 7.500               1st Qu.: 9.438              
    ##  Median : 9.125               Median :11.500              
    ##  Mean   :11.344               Mean   :14.719              
    ##  3rd Qu.:14.500               3rd Qu.:18.750              
    ##  Max.   :23.000               Max.   :30.000              
    ##  NA's   :64                   NA's   :64                  
    ##  ScalesPeduncMin_morphology ScalesPeduncMax_morphology BarbelsNo_morphology
    ##  Min.   : 5.00              Min.   : 7.00              Min.   :0.00000     
    ##  1st Qu.:10.25              1st Qu.:10.75              1st Qu.:0.00000     
    ##  Median :13.50              Median :14.50              Median :0.00000     
    ##  Mean   :12.38              Mean   :14.00              Mean   :0.05556     
    ##  3rd Qu.:15.62              3rd Qu.:17.75              3rd Qu.:0.00000     
    ##  Max.   :17.50              Max.   :20.00              Max.   :1.00000     
    ##  NA's   :68                 NA's   :68                 NA's   :54          
    ##  GillCleftsNo_morphology GillRakersLowMin_morphology
    ##  Min.   :0               Min.   :  9.00             
    ##  1st Qu.:0               1st Qu.: 10.00             
    ##  Median :0               Median : 15.00             
    ##  Mean   :0               Mean   : 21.62             
    ##  3rd Qu.:0               3rd Qu.: 19.00             
    ##  Max.   :0               Max.   :107.00             
    ##  NA's   :69              NA's   :59                 
    ##  GillRakersLowMax_morphology GillRakersUpMin_morphology
    ##  Min.   : 10.00              Min.   :  1.00            
    ##  1st Qu.: 16.00              1st Qu.:  4.00            
    ##  Median : 17.00              Median :  5.00            
    ##  Mean   : 30.03              Mean   : 19.40            
    ##  3rd Qu.: 25.43              3rd Qu.:  8.25            
    ##  Max.   :165.00              Max.   :147.00            
    ##  NA's   :59                  NA's   :62                
    ##  GillRakersUpMax_morphology GillRakersTotalMin_morphology
    ##  Min.   :  3.00             Min.   : 10.0                
    ##  1st Qu.:  5.00             1st Qu.: 16.5                
    ##  Median :  6.50             Median : 20.5                
    ##  Mean   : 22.20             Mean   : 43.0                
    ##  3rd Qu.:  8.75             3rd Qu.: 36.0                
    ##  Max.   :160.00             Max.   :254.0                
    ##  NA's   :62                 NA's   :60                   
    ##  GillRakersTotalMax_morphology Dfinno_morphology DorsalSpinesMin_morphology
    ##  Min.   : 13.00                Min.   :0.000     Min.   : 0.000            
    ##  1st Qu.: 21.50                1st Qu.:1.000     1st Qu.: 0.000            
    ##  Median : 25.00                Median :1.000     Median : 4.500            
    ##  Mean   : 52.58                Mean   :1.163     Mean   : 6.575            
    ##  3rd Qu.: 41.00                3rd Qu.:1.000     3rd Qu.:12.000            
    ##  Max.   :325.00                Max.   :3.000     Max.   :33.000            
    ##  NA's   :60                    NA's   :23        NA's   :32                
    ##  DorsalSpinesMax_morphology DorsalSoftRaysMin_morphology
    ##  Min.   : 0.00              Min.   : 0.00               
    ##  1st Qu.: 0.00              1st Qu.:10.00               
    ##  Median : 6.00              Median :13.50               
    ##  Mean   : 7.70              Mean   :18.31               
    ##  3rd Qu.:12.25              3rd Qu.:18.75               
    ##  Max.   :40.00              Max.   :77.00               
    ##  NA's   :32                 NA's   :32                  
    ##  DorsalSoftRaysMax_morphology DFinletsmin_morphology DFinletsmax_morphology
    ##  Min.   : 0.00                Min.   :0              Min.   :0             
    ##  1st Qu.:11.75                1st Qu.:0              1st Qu.:0             
    ##  Median :17.00                Median :0              Median :0             
    ##  Mean   :21.94                Mean   :0              Mean   :0             
    ##  3rd Qu.:24.25                3rd Qu.:0              3rd Qu.:0             
    ##  Max.   :82.00                Max.   :0              Max.   :0             
    ##  NA's   :32                   NA's   :46             NA's   :44            
    ##  VFinletsmin_morphology VFinletsmax_morphology Afinno_morphology
    ##  Min.   :0              Min.   :0              Min.   :0.000    
    ##  1st Qu.:0              1st Qu.:0              1st Qu.:1.000    
    ##  Median :0              Median :0              Median :1.000    
    ##  Mean   :0              Mean   :0              Mean   :1.049    
    ##  3rd Qu.:0              3rd Qu.:0              3rd Qu.:1.000    
    ##  Max.   :0              Max.   :0              Max.   :2.000    
    ##  NA's   :46             NA's   :44             NA's   :31       
    ##  AnalFinSpinesMin_morphology AnalFinSpinesMax_morphology Araymin_morphology
    ##  Min.   :0.000               Min.   : 0                  Min.   :  0.00    
    ##  1st Qu.:0.000               1st Qu.: 0                  1st Qu.:  8.00    
    ##  Median :2.000               Median : 2                  Median : 11.50    
    ##  Mean   :1.758               Mean   : 2                  Mean   : 21.29    
    ##  3rd Qu.:3.000               3rd Qu.: 3                  3rd Qu.: 21.75    
    ##  Max.   :9.000               Max.   :11                  Max.   :200.00    
    ##  NA's   :39                  NA's   :39                  NA's   :34        
    ##  Araymax_morphology Praymin_morphology Praymax_morphology Vspines_morphology
    ##  Min.   : 0.0       Min.   : 7.00      Min.   : 7.00      Min.   :0.0000    
    ##  1st Qu.:10.8       1st Qu.:13.00      1st Qu.:15.50      1st Qu.:0.0000    
    ##  Median :15.0       Median :15.00      Median :17.00      Median :1.0000    
    ##  Mean   :20.4       Mean   :15.25      Mean   :17.26      Mean   :0.6522    
    ##  3rd Qu.:23.0       3rd Qu.:17.00      3rd Qu.:18.50      3rd Qu.:1.0000    
    ##  Max.   :83.0       Max.   :24.00      Max.   :26.00      Max.   :2.0000    
    ##  NA's   :35         NA's   :40         NA's   :41         NA's   :49        
    ##  Vraymin_morphology Vraymax_morphology Forklength_morphology
    ##  Min.   : 0.000     Min.   : 0.00      Min.   :105.3        
    ##  1st Qu.: 5.000     1st Qu.: 5.00      1st Qu.:105.9        
    ##  Median : 5.000     Median : 5.00      Median :106.5        
    ##  Mean   : 5.333     Mean   : 5.75      Mean   :106.5        
    ##  3rd Qu.: 7.000     3rd Qu.: 7.25      3rd Qu.:107.1        
    ##  Max.   :10.000     Max.   :12.00      Max.   :107.7        
    ##  NA's   :48         NA's   :48         NA's   :70           
    ##  Totallength_morphology PostHeadDepth_morphology PostTrunkDepth_morphology
    ##  Min.   :108.5          Min.   :19.70            Min.   :15.20            
    ##  1st Qu.:109.8          1st Qu.:20.57            1st Qu.:17.02            
    ##  Median :111.0          Median :21.45            Median :18.85            
    ##  Mean   :111.0          Mean   :21.45            Mean   :18.85            
    ##  3rd Qu.:112.3          3rd Qu.:22.32            3rd Qu.:20.68            
    ##  Max.   :113.6          Max.   :23.20            Max.   :22.50            
    ##  NA's   :70             NA's   :70               NA's   :70               
    ##  MaximumDepth_morphology PeduncleDepth_morphology CaudalHeight_morphology
    ##  Min.   :24.20           Min.   :5.60             Min.   :16.20          
    ##  1st Qu.:26.15           1st Qu.:6.05             1st Qu.:17.07          
    ##  Median :37.60           Median :6.50             Median :17.95          
    ##  Mean   :38.07           Mean   :6.50             Mean   :17.95          
    ##  3rd Qu.:47.70           3rd Qu.:6.95             3rd Qu.:18.82          
    ##  Max.   :55.60           Max.   :7.40             Max.   :19.70          
    ##  NA's   :66              NA's   :70               NA's   :70             
    ##  StrikingFeaturesnone_morphology
    ##  0   : 4                        
    ##  1   :20                        
    ##  NA's:48                        
    ##                                 
    ##                                 
    ##                                 
    ##                                 
    ##  StrikingFeaturesother..see.diagnosis._morphology
    ##  0   :23                                         
    ##  1   : 1                                         
    ##  NA's:48                                         
    ##                                                  
    ##                                                  
    ##                                                  
    ##                                                  
    ##  StrikingFeaturesstriking.eyes_morphology
    ##  0   :23                                 
    ##  1   : 1                                 
    ##  NA's:48                                 
    ##                                          
    ##                                          
    ##                                          
    ##                                          
    ##  StrikingFeaturesstriking.fins_morphology
    ##  0   :23                                 
    ##  1   : 1                                 
    ##  NA's:48                                 
    ##                                          
    ##                                          
    ##                                          
    ##                                          
    ##  StrikingFeaturesstriking.shape.of.body_morphology
    ##  0   :23                                          
    ##  1   : 1                                          
    ##  NA's:48                                          
    ##                                                   
    ##                                                   
    ##                                                   
    ##                                                   
    ##  BodyShapeIeel.like_morphology BodyShapeIelongated_morphology
    ##  0   :55                       0   :44                       
    ##  1   : 3                       1   :14                       
    ##  NA's:14                       NA's:14                       
    ##                                                              
    ##                                                              
    ##                                                              
    ##                                                              
    ##  BodyShapeIfusiform...normal_morphology BodyShapeIother_morphology
    ##  0   :22                                0   :56                   
    ##  1   :36                                1   : 2                   
    ##  NA's:14                                NA's:14                   
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##  BodyShapeIshort.and...or.deep_morphology Foreheadclearly.concave_morphology
    ##  0   :55                                  0   :21                           
    ##  1   : 3                                  1   : 1                           
    ##  NA's:14                                  NA's:50                           
    ##                                                                             
    ##                                                                             
    ##                                                                             
    ##                                                                             
    ##  Foreheadclearly.convex_morphology Foreheadmore.or.less.straight_morphology
    ##  0   :16                           0   : 7                                 
    ##  1   : 6                           1   :15                                 
    ##  NA's:50                           NA's:50                                 
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##  PosofMouthsub.terminal.inferior_morphology PosofMouthsuperior_morphology
    ##  0   :23                                    0   :18                      
    ##  1   : 2                                    1   : 7                      
    ##  NA's:47                                    NA's:47                      
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##  PosofMouthterminal_morphology MandibleTeethabsent_morphology
    ##  0   : 8                       0   :10                       
    ##  1   :17                       1   : 1                       
    ##  NA's:47                       NA's:61                       
    ##                                                              
    ##                                                              
    ##                                                              
    ##                                                              
    ##  MandibleTeethpresent_morphology MandibleTeethT1bicuspidate_morphology
    ##  0   : 1                         0   : 3                              
    ##  1   :10                         1   : 1                              
    ##  NA's:61                         NA's:68                              
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##  MandibleTeethT1canine.like_morphology MandibleTeethT1conical_morphology
    ##  0   : 3                               0   : 3                          
    ##  1   : 1                               1   : 1                          
    ##  NA's:68                               NA's:68                          
    ##                                                                         
    ##                                                                         
    ##                                                                         
    ##                                                                         
    ##  MandibleTeethT1tricuspidate_morphology MaxillaTeethabsent_morphology
    ##  0   : 3                                0   : 9                      
    ##  1   : 1                                1   : 2                      
    ##  NA's:68                                NA's:61                      
    ##                                                                      
    ##                                                                      
    ##                                                                      
    ##                                                                      
    ##  MaxillaTeethpresent_morphology MaxillaTeethT1canine.like_morphology
    ##  0   : 2                        0   : 2                             
    ##  1   : 9                        1   : 1                             
    ##  NA's:61                        NA's:69                             
    ##                                                                     
    ##                                                                     
    ##                                                                     
    ##                                                                     
    ##  MaxillaTeethT1conical_morphology MaxillaTeethT1tricuspidate_morphology
    ##  0   : 2                          0   : 2                              
    ##  1   : 1                          1   : 1                              
    ##  NA's:69                          NA's:69                              
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##  VomerineTeeth_morphology Palatine_morphology PharyngealTeethabsent_morphology
    ##  0   : 3                  0   : 4             0   : 3                         
    ##  1   : 4                  1   : 1             1   : 2                         
    ##  NA's:65                  NA's:67             NA's:67                         
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##  PharyngealTeethpresent_morphology TeethonTongue_morphology
    ##  0   : 2                           0   : 1                 
    ##  1   : 3                           1   : 1                 
    ##  NA's:67                           NA's:70                 
    ##                                                            
    ##                                                            
    ##                                                            
    ##                                                            
    ##  Scutesabsent_morphology Scutesalong.belly_morphology HorStripesTTI_morphology
    ##  0   : 2                 0   :12                      0   :17                 
    ##  1   :12                 1   : 2                      1   : 2                 
    ##  NA's:58                 NA's:58                      NA's:53                 
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##                                                                               
    ##  VerStripesTTIabsent_morphology VerStripesTTIpresent_morphology
    ##  0   : 2                        0   :17                        
    ##  1   :17                        1   : 2                        
    ##  NA's:53                        NA's:53                        
    ##                                                                
    ##                                                                
    ##                                                                
    ##                                                                
    ##  DiaStripesTTI_morphology CurStripesTTI_morphology
    ##  0   :18                  0   :17                 
    ##  1   : 1                  1   : 2                 
    ##  NA's:53                  NA's:53                 
    ##                                                   
    ##                                                   
    ##                                                   
    ##                                                   
    ##  SpotsTTImore.than.one.spot_morphology SpotsTTIno.spots_morphology
    ##  0   :13                               0   : 5                    
    ##  1   : 4                               1   :12                    
    ##  NA's:55                               NA's:55                    
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##  SpotsTTIone.spot.only_morphology
    ##  0   :16                         
    ##  1   : 1                         
    ##  NA's:55                         
    ##                                  
    ##                                  
    ##                                  
    ##                                  
    ##  DorsalFinImore.than.one.spot.or.stripe_morphology
    ##  0   :13                                          
    ##  1   : 3                                          
    ##  NA's:56                                          
    ##                                                   
    ##                                                   
    ##                                                   
    ##                                                   
    ##  DorsalFinIno.spots.or.stripes_morphology
    ##  0   : 4                                 
    ##  1   :12                                 
    ##  NA's:56                                 
    ##                                          
    ##                                          
    ##                                          
    ##                                          
    ##  DorsalFinIone.spot.or.stripe_morphology
    ##  0   :15                                
    ##  1   : 1                                
    ##  NA's:56                                
    ##                                         
    ##                                         
    ##                                         
    ##                                         
    ##  CaudalFinImore.than.one.spot.or.stripe_morphology
    ##  0   :15                                          
    ##  1   : 3                                          
    ##  NA's:54                                          
    ##                                                   
    ##                                                   
    ##                                                   
    ##                                                   
    ##  CaudalFinIno.spots.or.stripes_morphology
    ##  0   : 4                                 
    ##  1   :14                                 
    ##  NA's:54                                 
    ##                                          
    ##                                          
    ##                                          
    ##                                          
    ##  CaudalFinIone.spot.or.stripe_morphology
    ##  0   :17                                
    ##  1   : 1                                
    ##  NA's:54                                
    ##                                         
    ##                                         
    ##                                         
    ##                                         
    ##  AnalFinImore.than.one.spot.or.stripe_morphology
    ##  0   :15                                        
    ##  1   : 2                                        
    ##  NA's:55                                        
    ##                                                 
    ##                                                 
    ##                                                 
    ##                                                 
    ##  AnalFinIno.spots.or.stripes_morphology AnalFinIone.spot.or.stripe_morphology
    ##  0   : 4                                0   :15                              
    ##  1   :13                                1   : 2                              
    ##  NA's:55                                NA's:55                              
    ##                                                                              
    ##                                                                              
    ##                                                                              
    ##                                                                              
    ##  Spiracle_morphology DorsalAttributescontinuous.with.caudal.fin_morphology
    ##  0   : 2             0   :26                                              
    ##  1   : 1             1   : 1                                              
    ##  NA's:69             NA's:45                                              
    ##                                                                           
    ##                                                                           
    ##                                                                           
    ##                                                                           
    ##  DorsalAttributesextending.over.most.of.the.back.length_morphology
    ##  0   :21                                                          
    ##  1   : 6                                                          
    ##  NA's:45                                                          
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##  DorsalAttributesgreatly.reduced.or.absent_morphology
    ##  0   :26                                             
    ##  1   : 1                                             
    ##  NA's:45                                             
    ##                                                      
    ##                                                      
    ##                                                      
    ##                                                      
    ##  DorsalAttributesmodified.to.suction.disc_morphology
    ##  0   :26                                            
    ##  1   : 1                                            
    ##  NA's:45                                            
    ##                                                     
    ##                                                     
    ##                                                     
    ##                                                     
    ##  DorsalAttributesno.striking.attributes_morphology
    ##  0   :10                                          
    ##  1   :17                                          
    ##  NA's:45                                          
    ##                                                   
    ##                                                   
    ##                                                   
    ##                                                   
    ##  DorsalAttributesother_morphology Adifin_morphology CShapeforked_morphology
    ##  0   :25                          0   :35           0   :26                
    ##  1   : 2                          1   : 5           1   :14                
    ##  NA's:45                          NA's:32           NA's:32                
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##  CShapemore.or.less.truncate_morphology CShapeother..see.remark._morphology
    ##  0   :20                                0   :39                            
    ##  1   :20                                1   : 1                            
    ##  NA's:32                                NA's:32                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##  CShapepointed_morphology Attributesconfluent_morphology
    ##  0   :35                  0   :26                       
    ##  1   : 5                  1   : 3                       
    ##  NA's:32                  NA's:43                       
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##  Attributesmore.or.less.normal_morphology PectoralAttributesabsent_morphology
    ##  0   : 3                                  0   :40                            
    ##  1   :26                                  1   : 1                            
    ##  NA's:43                                  NA's:31                            
    ##                                                                              
    ##                                                                              
    ##                                                                              
    ##                                                                              
    ##  PectoralAttributesmore.or.less.normal_morphology
    ##  0   : 4                                         
    ##  1   :37                                         
    ##  NA's:31                                         
    ##                                                  
    ##                                                  
    ##                                                  
    ##                                                  
    ##  PectoralAttributestransformed.to..aerofoils._morphology
    ##  0   :40                                                
    ##  1   : 1                                                
    ##  NA's:31                                                
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##  PectoralAttributesused.for.locomotion_morphology
    ##  0   :40                                         
    ##  1   : 1                                         
    ##  NA's:31                                         
    ##                                                  
    ##                                                  
    ##                                                  
    ##                                                  
    ##  PectoralAttributesvery.large...lobe.like_morphology
    ##  0   :40                                            
    ##  1   : 1                                            
    ##  NA's:31                                            
    ##                                                     
    ##                                                     
    ##                                                     
    ##                                                     
    ##  PelvicsAttributesmore.or.less.normal_morphology
    ##  0   : 7                                        
    ##  1   :33                                        
    ##  NA's:32                                        
    ##                                                 
    ##                                                 
    ##                                                 
    ##                                                 
    ##  PelvicsAttributessuppressed.absent_morphology VPositionabdominal_morphology
    ##  0   :33                                       0   :21                      
    ##  1   : 7                                       1   :17                      
    ##  NA's:32                                       NA's:34                      
    ##                                                                             
    ##                                                                             
    ##                                                                             
    ##                                                                             
    ##  VPositionabsent_morphology VPositionjugular_morphology
    ##  0   :32                    0   :37                    
    ##  1   : 6                    1   : 1                    
    ##  NA's:34                    NA's:34                    
    ##                                                        
    ##                                                        
    ##                                                        
    ##                                                        
    ##  VPositionthoracic_morphology record_count_species_morphology
    ##  0   :24                      Min.   :1.000                  
    ##  1   :14                      1st Qu.:1.000                  
    ##  NA's:34                      Median :1.000                  
    ##                               Mean   :1.111                  
    ##                               3rd Qu.:1.000                  
    ##                               Max.   :8.000                  
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#morphometrics \#\#there are multiple records for some species; to
include we would need to take averages \#\#exclude for now because
couldn’t find documentation

``` r
rm(table_out)
table_name = "morphometrics"
T<-morphometrics()
names(T)
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
sexes); to include we would need to take averages \#\#include along with
potentially influencing variables – e.g. salinity, temp, swimming speed,
etc.

``` r
rm(table_out)
```

    ## Warning in rm(table_out): object 'table_out' not found

``` r
table_name = "oxygen"
T<-oxygen()

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"       "autoctr"        "StockCode"      "OxygenRefNo"   
    ##  [5] "FamilyOxRef"    "SpeciesOxRef"   "DataRef"        "Entered"       
    ##  [9] "DateEntered"    "Expert"         "Comment"        "Modified"      
    ## [13] "DateModified"   "DateChecked"    "SpecCode"       "StockCode"     
    ## [17] "TestCode"       "Sex"            "FamilyOxRef"    "TS"            
    ## [21] "DataRef"        "TS"             "MetabolicLevel"
    ## [1] "kept fields"
    ##  [1] "Species"       "Weight"        "Number"        "Temp"         
    ##  [5] "Salinity"      "Oxygen"        "Oxygenmgl"     "OxygenCons"   
    ##  [9] "AppliedStress" "SwimmingSpeed"
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "Weight_oxygen"                      "Number_oxygen"                     
    ##  [3] "Temp_oxygen"                        "Salinity_oxygen"                   
    ##  [5] "Oxygen_oxygen"                      "Oxygenmgl_oxygen"                  
    ##  [7] "OxygenCons_oxygen"                  "SwimmingSpeed_oxygen"              
    ##  [9] "AppliedStressfeeding_oxygen"        "AppliedStresshigh.ph_oxygen"       
    ## [11] "AppliedStresshypercapnia_oxygen"    "AppliedStresshypoxia_oxygen"       
    ## [13] "AppliedStresslow.ph_oxygen"         "AppliedStressnone.specified_oxygen"
    ## [15] "AppliedStressother_oxygen"          "AppliedStressother.stress_oxygen"  
    ## [17] "AppliedStressphotoperiod_oxygen"    "AppliedStresssalinity_oxygen"      
    ## [19] "AppliedStresssedative_oxygen"       "AppliedStresstemperature_oxygen"   
    ## [21] "AppliedStresstoxins_oxygen"         "record_count_species_oxygen"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  Weight_oxygen       Number_oxygen     Temp_oxygen      Salinity_oxygen 
    ##  Min.   :   0.2229   Min.   : 1.000   Min.   : 0.6167   Min.   : 0.000  
    ##  1st Qu.:   4.9562   1st Qu.: 1.929   1st Qu.:18.4688   1st Qu.: 0.000  
    ##  Median :  42.8215   Median : 5.000   Median :23.0000   Median : 0.000  
    ##  Mean   : 214.2989   Mean   : 5.385   Mean   :21.5638   Mean   : 6.457  
    ##  3rd Qu.: 164.5378   3rd Qu.: 7.263   3rd Qu.:25.9615   3rd Qu.: 5.840  
    ##  Max.   :1900.0000   Max.   :13.517   Max.   :30.3333   Max.   :34.543  
    ##  NA's   :44          NA's   :47       NA's   :44        NA's   :51      
    ##  Oxygen_oxygen    Oxygenmgl_oxygen OxygenCons_oxygen SwimmingSpeed_oxygen
    ##  Min.   : 49.75   Min.   : 2.466   Min.   :  50.63   Min.   :1.695       
    ##  1st Qu.:100.00   1st Qu.: 5.900   1st Qu.: 166.82   1st Qu.:1.990       
    ##  Median :116.00   Median : 6.200   Median : 222.71   Median :2.286       
    ##  Mean   :111.98   Mean   : 6.569   Mean   : 371.97   Mean   :2.164       
    ##  3rd Qu.:126.21   3rd Qu.: 7.260   3rd Qu.: 546.11   3rd Qu.:2.399       
    ##  Max.   :182.25   Max.   :12.387   Max.   :1222.80   Max.   :2.511       
    ##  NA's   :55       NA's   :59       NA's   :44        NA's   :69          
    ##  AppliedStressfeeding_oxygen AppliedStresshigh.ph_oxygen
    ##  0   :23                     0   :21                    
    ##  NA's:49                     1   : 2                    
    ##                              NA's:49                    
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##  AppliedStresshypercapnia_oxygen AppliedStresshypoxia_oxygen
    ##  0   :19                         0   :10                    
    ##  1   : 4                         1   :13                    
    ##  NA's:49                         NA's:49                    
    ##                                                             
    ##                                                             
    ##                                                             
    ##                                                             
    ##  AppliedStresslow.ph_oxygen AppliedStressnone.specified_oxygen
    ##  0   :20                    0   : 7                           
    ##  1   : 3                    1   :16                           
    ##  NA's:49                    NA's:49                           
    ##                                                               
    ##                                                               
    ##                                                               
    ##                                                               
    ##  AppliedStressother_oxygen AppliedStressother.stress_oxygen
    ##  0   :18                   0   :15                         
    ##  1   : 5                   1   : 8                         
    ##  NA's:49                   NA's:49                         
    ##                                                            
    ##                                                            
    ##                                                            
    ##                                                            
    ##  AppliedStressphotoperiod_oxygen AppliedStresssalinity_oxygen
    ##  0   :22                         0   :22                     
    ##  1   : 1                         1   : 1                     
    ##  NA's:49                         NA's:49                     
    ##                                                              
    ##                                                              
    ##                                                              
    ##                                                              
    ##  AppliedStresssedative_oxygen AppliedStresstemperature_oxygen
    ##  0   :22                      0   :20                        
    ##  1   : 1                      1   : 3                        
    ##  NA's:49                      NA's:49                        
    ##                                                              
    ##                                                              
    ##                                                              
    ##                                                              
    ##  AppliedStresstoxins_oxygen record_count_species_oxygen
    ##  0   :22                    Min.   :  1.00             
    ##  1   : 1                    1st Qu.:  1.00             
    ##  NA's:49                    Median :  1.00             
    ##                             Mean   : 20.78             
    ##                             3rd Qu.:  4.50             
    ##                             Max.   :558.00             
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))

load("out_oxygen.Rdata")
```

\#\#popchar: Table of maximum length (Lmax), weight (Wmax) and age
(tmax)
\#\#<https://www.fishbase.in/manual/fishbasethe_popchar_table.htm>
\#\#there are multiple records for some species; to include we would
need to take averages \#\#

``` r
rm(table_out)
table_name = "popchar"
T<-popchar()
unique(T$Type)#can't tell what this means
```

    ## [1] "TL"    NA      "SL"    "FL"    "NG"    "OT"    "other" "WD"

``` r
keep = setdiff(names(T), "Type")
T = T[,keep]
unique(T$TypeWeight)
```

    ## [1] NA              "total weight"  "headed weight" "gutted weight"

``` r
load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"     "PopCharRefNo" "SourceRef"    "Entered"      "DateEntered" 
    ##  [6] "Expert"       "Comments"     "Modified"     "DateModified" "DateChecked" 
    ## [11] "SpecCode"     "C_Code"       "Stockcode"    "Sex"          "Locality"    
    ## [16] "TS"           "Locality"     "SameWL"       "SameLt"       "Autoctr"     
    ## [21] "TypeWeight"   "TypeWeight"   "TS"          
    ## [1] "kept fields"
    ## [1] "Species" "Wmax"    "Lmax"    "tmax"   
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ## [1] "Wmax_popchar"                 "Lmax_popchar"                
    ## [3] "tmax_popchar"                 "record_count_species_popchar"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##   Wmax_popchar      Lmax_popchar     tmax_popchar  
    ##  Min.   :    2.8   Min.   :  2.80   Min.   : 0.22  
    ##  1st Qu.:  715.1   1st Qu.: 11.92   1st Qu.: 5.80  
    ##  Median : 3895.8   Median : 32.41   Median :13.60  
    ##  Mean   :10160.1   Mean   : 52.85   Mean   :11.97  
    ##  3rd Qu.:18709.5   3rd Qu.: 84.47   3rd Qu.:17.00  
    ##  Max.   :47496.7   Max.   :200.00   Max.   :23.50  
    ##  NA's   :50        NA's   :28       NA's   :51     
    ##  record_count_species_popchar
    ##  Min.   : 1.000              
    ##  1st Qu.: 1.000              
    ##  Median : 2.000              
    ##  Mean   : 3.514              
    ##  3rd Qu.: 4.000              
    ##  Max.   :38.000              
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#popgrowth
\#\#<https://www.fishbase.in/manual/fishbasethe_popgrowth_table.htm>
\#\#multiple records for some species, e.g. for different sexes;

``` r
rm(table_out)
table_name = "popgrowth"
T<-popgrowth()

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"        "StockCode"       "PopGrowthRef"    "DataSourceRef"  
    ##  [5] "tmaxRef"         "MRef"            "unsexedRef"      "TempRef"        
    ##  [9] "YearRemark"      "Entered"         "DateEntered"     "Expert"         
    ## [13] "Comment"         "Comment2"        "Modified"        "DateModified"   
    ## [17] "DateChecked"     "SpecCode"        "StockCode"       "C_Code"         
    ## [21] "E_CODE"          "Sex"             "LmSex"           "Locality"       
    ## [25] "YearStart"       "YearEnd"         "YearRemark"      "AutoCtr"        
    ## [29] "r2"              "r2_M"            "Comment2"        "TS"             
    ## [33] "Locality"        "MethodGrowth"    "MethodM"         "Data"           
    ## [37] "DataSourceRef"   "AssumedDistLoo"  "AssumedDistK"    "Type"           
    ## [41] "TypeLm"          "Auxim"           "SourceWinfinity" "Mquality"       
    ## [45] "TypeLm"          "GrowthEnviron"   "TS"             
    ## [1] "kept fields"
    ##  [1] "Species"      "Loo"          "Number"       "SE_Loo"       "SD_Loo"      
    ##  [6] "LCL_Loo"      "UCL_Loo"      "TLinfinity"   "K"            "SE_K"        
    ## [11] "SD_K"         "LCL_K"        "UCL_K"        "to"           "SE_to"       
    ## [16] "SD_to"        "LCL_to"       "UCL_to"       "Winfinity"    "LinfLmax"    
    ## [21] "LogKLogLoo"   "b"            "C"            "tmax"         "tm"          
    ## [26] "M"            "Number_M"     "SE_M"         "SD_M"         "LCL_M"       
    ## [31] "UCL_M"        "AssumedDistM" "Lm"           "LmLoo"        "LmMale"      
    ## [36] "LmLooMale"    "LmFemale"     "LmLooFemale"  "Temperature"  "DeltaT"      
    ## [41] "Rm"          
    ## [1] "T_b_multiple_sum, Species field count"
    ## [1] 1
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "to_popgrowth"                   "LinfLmax_popgrowth"            
    ##  [3] "Loo_popgrowth"                  "Number_popgrowth"              
    ##  [5] "SE_Loo_popgrowth"               "SD_Loo_popgrowth"              
    ##  [7] "TLinfinity_popgrowth"           "K_popgrowth"                   
    ##  [9] "SE_K_popgrowth"                 "SD_K_popgrowth"                
    ## [11] "LCL_K_popgrowth"                "UCL_K_popgrowth"               
    ## [13] "SE_to_popgrowth"                "SD_to_popgrowth"               
    ## [15] "LCL_to_popgrowth"               "UCL_to_popgrowth"              
    ## [17] "Winfinity_popgrowth"            "LogKLogLoo_popgrowth"          
    ## [19] "b_popgrowth"                    "C_popgrowth"                   
    ## [21] "tmax_popgrowth"                 "tm_popgrowth"                  
    ## [23] "M_popgrowth"                    "Number_M_popgrowth"            
    ## [25] "Lm_popgrowth"                   "LmLoo_popgrowth"               
    ## [27] "LmMale_popgrowth"               "LmLooMale_popgrowth"           
    ## [29] "LmFemale_popgrowth"             "LmLooFemale_popgrowth"         
    ## [31] "Temperature_popgrowth"          "DeltaT_popgrowth"              
    ## [33] "Rm_popgrowth"                   "record_count_species_popgrowth"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##   to_popgrowth LinfLmax_popgrowth Loo_popgrowth    Number_popgrowth 
    ##  Min.   :1     Min.   :0.0000     Min.   :  3.70   Min.   :   39.0  
    ##  1st Qu.:1     1st Qu.:0.0000     1st Qu.: 20.55   1st Qu.:  105.1  
    ##  Median :1     Median :0.0000     Median : 44.26   Median :  277.9  
    ##  Mean   :1     Mean   :0.4706     Mean   : 54.90   Mean   : 2490.7  
    ##  3rd Qu.:1     3rd Qu.:1.0000     3rd Qu.: 92.70   3rd Qu.:  421.0  
    ##  Max.   :1     Max.   :1.0000     Max.   :148.77   Max.   :22237.7  
    ##  NA's   :66    NA's   :38         NA's   :38       NA's   :62       
    ##  SE_Loo_popgrowth SD_Loo_popgrowth TLinfinity_popgrowth  K_popgrowth     
    ##  Min.   : 1.100   Min.   :1.162    Min.   :  3.70       Min.   : 0.1090  
    ##  1st Qu.: 2.710   1st Qu.:1.162    1st Qu.: 28.61       1st Qu.: 0.1923  
    ##  Median : 4.320   Median :1.162    Median : 45.88       Median : 0.3340  
    ##  Mean   : 6.173   Mean   :1.162    Mean   : 62.32       Mean   : 1.2207  
    ##  3rd Qu.: 8.710   3rd Qu.:1.162    3rd Qu.: 99.41       3rd Qu.: 1.0573  
    ##  Max.   :13.100   Max.   :1.162    Max.   :161.49       Max.   :12.6000  
    ##  NA's   :69       NA's   :71       NA's   :44           NA's   :38       
    ##  SE_K_popgrowth    SD_K_popgrowth   LCL_K_popgrowth  UCL_K_popgrowth 
    ##  Min.   :0.03600   Min.   :0.1081   Min.   :0.1211   Min.   :0.1241  
    ##  1st Qu.:0.04300   1st Qu.:0.1081   1st Qu.:0.1719   1st Qu.:0.1798  
    ##  Median :0.05000   Median :0.1081   Median :0.2227   Median :0.2354  
    ##  Mean   :0.08533   Mean   :0.1081   Mean   :0.2227   Mean   :0.2354  
    ##  3rd Qu.:0.11000   3rd Qu.:0.1081   3rd Qu.:0.2735   3rd Qu.:0.2910  
    ##  Max.   :0.17000   Max.   :0.1081   Max.   :0.3243   Max.   :0.3467  
    ##  NA's   :69        NA's   :71       NA's   :70       NA's   :70      
    ##  SE_to_popgrowth  SD_to_popgrowth  LCL_to_popgrowth   UCL_to_popgrowth  
    ##  Min.   :0.2600   Min.   :0.6914   Min.   :-0.72650   Min.   :-0.60400  
    ##  1st Qu.:0.2900   1st Qu.:0.6914   1st Qu.:-0.55321   1st Qu.:-0.45383  
    ##  Median :0.3200   Median :0.6914   Median :-0.37992   Median :-0.30367  
    ##  Mean   :0.3353   Mean   :0.6914   Mean   :-0.37992   Mean   :-0.30367  
    ##  3rd Qu.:0.3730   3rd Qu.:0.6914   3rd Qu.:-0.20662   3rd Qu.:-0.15350  
    ##  Max.   :0.4260   Max.   :0.6914   Max.   :-0.03333   Max.   :-0.00333  
    ##  NA's   :69       NA's   :71       NA's   :70         NA's   :70        
    ##  Winfinity_popgrowth LogKLogLoo_popgrowth  b_popgrowth     C_popgrowth    
    ##  Min.   :    0.7     Min.   :-0.62014     Min.   :2.843   Min.   :0.2000  
    ##  1st Qu.:  730.1     1st Qu.:-0.40683     1st Qu.:2.987   1st Qu.:0.3500  
    ##  Median : 2271.1     Median :-0.36202     Median :3.000   Median :0.5000  
    ##  Mean   : 8338.4     Mean   :-0.12938     Mean   :3.013   Mean   :0.5667  
    ##  3rd Qu.: 6403.1     3rd Qu.:-0.03473     3rd Qu.:3.030   3rd Qu.:0.7500  
    ##  Max.   :60447.4     Max.   : 1.41348     Max.   :3.166   Max.   :1.0000  
    ##  NA's   :54          NA's   :51           NA's   :55      NA's   :69      
    ##  tmax_popgrowth    tm_popgrowth    M_popgrowth     Number_M_popgrowth
    ##  Min.   : 3.000   Min.   :1.000   Min.   :0.1500   Min.   :66        
    ##  1st Qu.: 8.062   1st Qu.:2.314   1st Qu.:0.2783   1st Qu.:66        
    ##  Median :10.692   Median :2.500   Median :0.3814   Median :66        
    ##  Mean   :11.772   Mean   :2.961   Mean   :0.4203   Mean   :66        
    ##  3rd Qu.:13.628   3rd Qu.:4.100   3rd Qu.:0.4000   3rd Qu.:66        
    ##  Max.   :29.000   Max.   :4.889   Max.   :1.4000   Max.   :66        
    ##  NA's   :56       NA's   :67      NA's   :59       NA's   :71        
    ##   Lm_popgrowth   LmLoo_popgrowth  LmMale_popgrowth LmLooMale_popgrowth
    ##  Min.   :13.85   Min.   :0.3000   Min.   : 8.69    Min.   :0.430      
    ##  1st Qu.:24.43   1st Qu.:0.4650   1st Qu.:14.59    1st Qu.:0.470      
    ##  Median :33.50   Median :0.5550   Median :25.05    Median :0.530      
    ##  Mean   :33.21   Mean   :0.5474   Mean   :29.62    Mean   :0.514      
    ##  3rd Qu.:38.65   3rd Qu.:0.6200   3rd Qu.:47.38    3rd Qu.:0.545      
    ##  Max.   :61.25   Max.   :0.8115   Max.   :53.00    Max.   :0.595      
    ##  NA's   :60      NA's   :63       NA's   :66       NA's   :67         
    ##  LmFemale_popgrowth LmLooFemale_popgrowth Temperature_popgrowth
    ##  Min.   :15.00      Min.   :0.3967        Min.   :-1.00        
    ##  1st Qu.:15.20      1st Qu.:0.4192        1st Qu.:12.10        
    ##  Median :39.83      Median :0.4533        Median :18.86        
    ##  Mean   :40.01      Mean   :0.4558        Mean   :17.89        
    ##  3rd Qu.:59.00      3rd Qu.:0.4900        3rd Qu.:25.00        
    ##  Max.   :71.00      Max.   :0.5200        Max.   :28.00        
    ##  NA's   :67         NA's   :68            NA's   :46           
    ##  DeltaT_popgrowth  Rm_popgrowth    record_count_species_popgrowth
    ##  Min.   : 5.80    Min.   :0.1500   Min.   :  1.000               
    ##  1st Qu.:10.90    1st Qu.:0.4000   1st Qu.:  1.000               
    ##  Median :16.00    Median :0.5965   Median :  1.000               
    ##  Mean   :13.62    Mean   :0.7117   Mean   :  8.667               
    ##  3rd Qu.:17.52    3rd Qu.:0.7910   3rd Qu.:  4.250               
    ##  Max.   :19.05    Max.   :1.6210   Max.   :124.000               
    ##  NA's   :69       NA's   :67

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#popqb
\#\#<https://www.fishbase.se/manual/english/fishbasethe_popqb_table.htm>
\#\#population-based estimates of food consumption (i.e., estimates that
account for the age structure of populations) \#\#multiple responses for
some species. here there are two measures, popqb and maintenance qb.

``` r
rm(table_out)
table_name = "popqb"
T<-popqb()

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"     "StockCode"    "PopQBRefNo"   "QBRemarks"    "Entered"     
    ##  [6] "DateEntered"  "Expert"       "Modified"     "DateModified" "DateChecked" 
    ## [11] "SpecCode"     "StockCode"    "C_Code"       "Locality"     "AutoCtr"     
    ## [16] "TS"           "Locality"     "FoodType"     "FoodType"     "TS"          
    ## [1] "kept fields"
    ##  [1] "Species"     "PopQB"       "MaintQB"     "Winf"        "K"          
    ##  [6] "Salinity"    "t0"          "Temperature" "Mortality"   "b"          
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "PopQB_popqb"                "MaintQB_popqb"             
    ##  [3] "Winf_popqb"                 "K_popqb"                   
    ##  [5] "t0_popqb"                   "Temperature_popqb"         
    ##  [7] "Mortality_popqb"            "b_popqb"                   
    ##  [9] "Salinitybrackish_popqb"     "Salinityfreshwater_popqb"  
    ## [11] "Salinityseawater_popqb"     "record_count_species_popqb"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##   PopQB_popqb     MaintQB_popqb      Winf_popqb         K_popqb      
    ##  Min.   : 2.720   Min.   : 1.960   Min.   :   42.0   Min.   :0.1280  
    ##  1st Qu.: 3.655   1st Qu.: 2.685   1st Qu.:  434.4   1st Qu.:0.1975  
    ##  Median : 5.590   Median : 3.582   Median : 1162.8   Median :0.2510  
    ##  Mean   : 7.911   Mean   : 5.552   Mean   : 7604.4   Mean   :0.9372  
    ##  3rd Qu.: 7.461   3rd Qu.: 4.383   3rd Qu.: 7788.6   3rd Qu.:0.7392  
    ##  Max.   :22.355   Max.   :17.156   Max.   :30743.0   Max.   :3.6000  
    ##  NA's   :62       NA's   :66       NA's   :62        NA's   :62      
    ##     t0_popqb        Temperature_popqb Mortality_popqb     b_popqb     
    ##  Min.   :-0.71667   Min.   : 7.583    Min.   :0.2150   Min.   :2.933  
    ##  1st Qu.:-0.56284   1st Qu.:10.050    1st Qu.:0.3914   1st Qu.:3.000  
    ##  Median :-0.21830   Median :19.167    Median :0.5100   Median :3.000  
    ##  Mean   :-0.30388   Mean   :18.382    Mean   :1.8384   Mean   :3.015  
    ##  3rd Qu.:-0.06381   3rd Qu.:26.500    3rd Qu.:2.6300   3rd Qu.:3.006  
    ##  Max.   : 0.02000   Max.   :28.000    Max.   :6.1012   Max.   :3.158  
    ##  NA's   :66         NA's   :62        NA's   :65       NA's   :65     
    ##  Salinitybrackish_popqb Salinityfreshwater_popqb Salinityseawater_popqb
    ##  0   : 8                0   : 5                  0   : 3               
    ##  1   : 1                1   : 4                  1   : 6               
    ##  NA's:63                NA's:63                  NA's:63               
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##  record_count_species_popqb
    ##  Min.   : 1.000            
    ##  1st Qu.: 1.000            
    ##  Median : 1.000            
    ##  Mean   : 1.472            
    ##  3rd Qu.: 1.000            
    ##  Max.   :17.000            
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#predators
\#\#<https://www.fishbase.se/manual/English/fishbasethe_predators_table.htm>

``` r
load("DF.Rdata")
species = DF$Species
DF$predator_mammals = NA
for (a in 1:length(species)){
  tmp = data.frame(predators(species_list = DF$Species[a]))
  tmp = subset(tmp, !is.na(PredatorI))
  if (dim(tmp)[1]>0){
      DF$predator_count[a] = dim(tmp)[1]
      tmp_mammal = subset(tmp, PredatorI == "mammals")
      DF$predator_mammals[a]= dim(tmp_mammal)[1]    
  }
  # out = rbind(out, tmp)
}
# DF = out
save(DF, file = "DF.Rdata")

rm(table_out)
table_name = "predators"
T<-predators()

#from this one removing PreyStage
# ind_rm = which(names(T)=="PreyStage")
load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")

table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"       "autoctr"        "StockCode"      "PredatsRefNo"  
    ##  [5] "PredatRef"      "Remarks"        "Entered"        "DateEntered"   
    ##  [9] "Expert"         "Modified"       "DateModified"   "DateChecked"   
    ## [13] "SpecCode"       "StockCode"      "C_Code"         "AlphaCode"     
    ## [17] "Predatcode"     "PredatorName"   "Locality"       "PredatorII"    
    ## [21] "TS"             "Locality"       "MaxLength"      "MaxLengthType" 
    ## [25] "MaxLengthType"  "PredatorName"   "PredatorGroup"  "StomachContent"
    ## [29] "MaxLength"      "MaxLengthType"  "MaxLength"      "MaxLengthType" 
    ## [33] "TS"            
    ## [1] "kept fields"
    ## [1] "Species"       "Predatstage"   "PredatorI"     "PreyStage"    
    ## [5] "DietP"         "PredatTroph"   "PredatseTroph"
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")
DF = DF[,c("Species", "predator_mammals")]
out = merge(out, DF, by = "Species")
dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "DietP_predators"                    "PredatTroph_predators"             
    ##  [3] "PredatseTroph_predators"            "Predatstageadults_predators"       
    ##  [5] "Predatstagejuv..adults_predators"   "Predatstagelarvae_predators"       
    ##  [7] "Predatstagerecruits.juv._predators" "PredatorIbirds_predators"          
    ##  [9] "PredatorIcrustaceans_predators"     "PredatorIfinfish_predators"        
    ## [11] "PredatorIherps_predators"           "PredatorIinsects_predators"        
    ## [13] "PredatorImammals_predators"         "PredatorImollusks_predators"       
    ## [15] "PredatorIother_predators"           "PreyStageadults_predators"         
    ## [17] "PreyStageeggs_predators"            "PreyStagejuv..adults_predators"    
    ## [19] "PreyStagelarvae_predators"          "PreyStagerecruits.juv._predators"  
    ## [21] "record_count_species_predators"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  DietP_predators PredatTroph_predators PredatseTroph_predators
    ##  Min.   : 0.10   Min.   :3.212         Min.   :0.3400         
    ##  1st Qu.: 1.05   1st Qu.:3.500         1st Qu.:0.7099         
    ##  Median :11.93   Median :3.500         Median :0.8000         
    ##  Mean   :24.17   Mean   :3.504         Mean   :0.7335         
    ##  3rd Qu.:42.04   3rd Qu.:3.500         3rd Qu.:0.8000         
    ##  Max.   :71.00   Max.   :3.765         Max.   :0.8033         
    ##  NA's   :65      NA's   :54            NA's   :54             
    ##  Predatstageadults_predators Predatstagejuv..adults_predators
    ##  0   :19                     0   : 2                         
    ##  1   :10                     1   :27                         
    ##  NA's:43                     NA's:43                         
    ##                                                              
    ##                                                              
    ##                                                              
    ##                                                              
    ##  Predatstagelarvae_predators Predatstagerecruits.juv._predators
    ##  0   :28                     0   :23                           
    ##  1   : 1                     1   : 6                           
    ##  NA's:43                     NA's:43                           
    ##                                                                
    ##                                                                
    ##                                                                
    ##                                                                
    ##  PredatorIbirds_predators PredatorIcrustaceans_predators
    ##  0   :18                  0   :28                       
    ##  1   :11                  1   : 1                       
    ##  NA's:43                  NA's:43                       
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##  PredatorIfinfish_predators PredatorIherps_predators PredatorIinsects_predators
    ##  0   : 3                    0   :28                  0   :25                   
    ##  1   :26                    1   : 1                  1   : 4                   
    ##  NA's:43                    NA's:43                  NA's:43                   
    ##                                                                                
    ##                                                                                
    ##                                                                                
    ##                                                                                
    ##  PredatorImammals_predators PredatorImollusks_predators
    ##  0   :25                    0   :26                    
    ##  1   : 4                    1   : 3                    
    ##  NA's:43                    NA's:43                    
    ##                                                        
    ##                                                        
    ##                                                        
    ##                                                        
    ##  PredatorIother_predators PreyStageadults_predators PreyStageeggs_predators
    ##  0   :27                  0   :25                   0   :24                
    ##  1   : 2                  1   : 4                   1   : 5                
    ##  NA's:43                  NA's:43                   NA's:43                
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##  PreyStagejuv..adults_predators PreyStagelarvae_predators
    ##  0   : 4                        0   :25                  
    ##  1   :25                        1   : 4                  
    ##  NA's:43                        NA's:43                  
    ##                                                          
    ##                                                          
    ##                                                          
    ##                                                          
    ##  PreyStagerecruits.juv._predators record_count_species_predators
    ##  0   :18                          Min.   : 1.000                
    ##  1   :11                          1st Qu.: 1.000                
    ##  NA's:43                          Median : 1.000                
    ##                                   Mean   : 3.556                
    ##                                   3rd Qu.: 2.000                
    ##                                   Max.   :48.000                
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#ration \#\#�ration� (Rd) pertains to an estimate of daily food
consumption by fish of a specific size
\#\#<https://www.fishbase.in/manual/fishbasethe_ration_table.htm>
\#\#multiple rows for some species

``` r
rm(table_out)
table_name = "ration"
T<-ration()

#check out fields
T[sapply(T, is.character)] <- lapply(T[sapply(T, is.character)], 
                                       as.factor)
T_f <- T %>%  select_if(is.factor)
summary(T_f)
```

    ##                   Species              FoodI                       FoodII     
    ##  Pleuronectes platessa:   53   nekton     :  197   finfish            :  196  
    ##  Sparus aurata        :   38   others     :  117   others             :  116  
    ##  Gadus morhua         :   27   plants     :   23   mollusks           :   64  
    ##  Cirrhinus cirrhosus  :   24   zoobenthos :   91   other invertebrates:   36  
    ##  Esox lucius          :   24   zooplankton:   49   other plants       :   21  
    ##  Gibelion catla       :   24   NA's       :34233   (Other)            :   43  
    ##  (Other)              :34520                       NA's               :34234  
    ##                             FoodName                    Locality    
    ##  unidentified                   :   79   Culture ponds      :   71  
    ##  artificial food                :   73   North Sea          :   63  
    ##  @Mytilus edulis@               :   53   SE Mediterranean   :   20  
    ##  unspecified                    :   32   Adriatic Sea       :   18  
    ##  anchovies, sciaenids, carangids:   20   Cent. Pacific Ocean:   18  
    ##  (Other)                        :  220   (Other)            :  186  
    ##  NA's                           :34233   NA's               :34334  
    ##        Salinity         C_Code                         ComRDK1     
    ##  brackish  :   64   586    :   72   Estimate for females.  :   25  
    ##  freshwater:  179   840    :   44   K1 from calorific data.:   20  
    ##  seawater  :  233   250    :   30   Cage experiments.      :   19  
    ##  NA's      :34234   826    :   29   From tank experiments. :   16  
    ##                     458    :   20   Males and females.     :   16  
    ##                     (Other):  145   (Other)                :  263  
    ##                     NA's   :34370   NA's                   :34351  
    ##                         EvacRate2                                RD2       
    ##  laboratory experiments      :    3   feeding experiments and/or K1:  129  
    ##  MAXIMS with stom. field data:   15   gut contents analyses        :   72  
    ##  NA's                        :34692   stomach contents and MAXIMS  :   22  
    ##                                       Others (see remarks)         :   20  
    ##                                       others (see remarks)         :    4  
    ##                                       (Other)                      :    4  
    ##                                       NA's                         :34459  
    ##          DailyFeedingCycle
    ##  one feeding peak :    8  
    ##  two feeding peaks:   13  
    ##  NA's             :34689  
    ##                           
    ##                           
    ##                           
    ##                           
    ##                                                                                Comment     
    ##  The lake is frozen half of the year; ration estimate refers only to summer samples:    4  
    ##  Experiment done in March.                                                         :    3  
    ##  24 hour trawl samples from September 1978 to July 1979                            :    1  
    ##  275 m altitude reservoir sampled in Feb., May, Aug. and Dec.                      :    1  
    ##  Aug 1972 sample                                                                   :    1  
    ##  (Other)                                                                           :   19  
    ##  NA's                                                                              :34681

``` r
T<-ration()

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"      "StockCode"     "RDRefNo"       "DataRef1"     
    ##  [5] "MethRDEvacRef" "Entered"       "DateEntered"   "Expert"       
    ##  [9] "Comment"       "Modified"      "DateModified"  "DateChecked"  
    ## [13] "SpecCode"      "StockCode"     "C_Code"        "FoodName"     
    ## [17] "Locality"      "AutoCtr"       "EvacRate2"     "FeedBegin2"   
    ## [21] "RD2"           "FeedStop2"     "FoodII"        "TS"           
    ## [25] "Locality"      "DataRef1"      "FoodName"      "ComRDK1"      
    ## [29] "TS"           
    ## [1] "kept fields"
    ##  [1] "Species"           "EvacRate1"         "FoodI"            
    ##  [4] "Rd1"               "GCE"               "TBW"              
    ##  [7] "Water"             "Salinity"          "FeedBegin1"       
    ## [10] "FeedStop1"         "DailyFeedingCycle"
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "Reasonlessepsian.migration_introductions"
    ##  [2] "Rd1_ration"                              
    ##  [3] "GCE_ration"                              
    ##  [4] "TBW_ration"                              
    ##  [5] "Water_ration"                            
    ##  [6] "FoodInekton_ration"                      
    ##  [7] "FoodIothers_ration"                      
    ##  [8] "FoodIzoobenthos_ration"                  
    ##  [9] "Salinitybrackish_ration"                 
    ## [10] "Salinityfreshwater_ration"               
    ## [11] "Salinityseawater_ration"                 
    ## [12] "record_count_species_ration"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  Reasonlessepsian.migration_introductions   Rd1_ration      GCE_ration    
    ##  0   :31                                  Min.   :0.630   Min.   :0.1647  
    ##  1   : 1                                  1st Qu.:1.480   1st Qu.:0.1689  
    ##  NA's:40                                  Median :1.612   Median :0.1730  
    ##                                           Mean   :3.152   Mean   :0.2319  
    ##                                           3rd Qu.:3.272   3rd Qu.:0.2656  
    ##                                           Max.   :8.765   Max.   :0.3582  
    ##                                           NA's   :67      NA's   :69      
    ##    TBW_ration       Water_ration   FoodInekton_ration FoodIothers_ration
    ##  Min.   :  59.50   Min.   :10.00   1   : 5            0   : 3           
    ##  1st Qu.:  70.59   1st Qu.:10.74   NA's:67            1   : 2           
    ##  Median : 115.00   Median :13.00                      NA's:67           
    ##  Mean   : 570.62   Mean   :16.48                                        
    ##  3rd Qu.:1284.44   3rd Qu.:20.26                                        
    ##  Max.   :1323.57   Max.   :28.40                                        
    ##  NA's   :67        NA's   :67                                           
    ##  FoodIzoobenthos_ration Salinitybrackish_ration Salinityfreshwater_ration
    ##  0   : 3                0   : 3                 0   : 2                  
    ##  1   : 2                1   : 1                 1   : 2                  
    ##  NA's:67                NA's:68                 NA's:68                  
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##  Salinityseawater_ration record_count_species_ration
    ##  0   : 3                 Min.   : 1.000             
    ##  1   : 1                 1st Qu.: 1.000             
    ##  NA's:68                 Median : 1.000             
    ##                          Mean   : 2.208             
    ##                          3rd Qu.: 1.000             
    ##                          Max.   :38.000             
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#reproduction
\#\#<https://www.fishbase.in/manual/fishbasethe_reproduction_table.htm>
\#\#only one row per species for these HADDOCK species; adding these
fields

``` r
rm(table_out)
table_name = "reproduction"
T<-reproduction()

#check out fields
T[sapply(T, is.character)] <- lapply(T[sapply(T, is.character)], 
                                       as.factor)
T_f <- T %>%  select_if(is.factor)
summary(T_f)
```

    ##                        Species                     ReproMode    
    ##  Aapticheilichthys websteri:    1   dioecism            :11302  
    ##  Aaptosyax grypus          :    1   parthenogenesis     :    2  
    ##  Abactochromis labrosus    :    1   protandry           :   69  
    ##  Abalistes filamentosus    :    1   protogyny           :  374  
    ##  Abalistes stellaris       :    1   true hermaphroditism:   55  
    ##  Abalistes stellatus       :    1   NA's                :22497  
    ##  (Other)                   :34293                               
    ##                              Fertilization        MatingSystem  
    ##  external                           : 9667   monogamy   :  894  
    ##  in brood pouch or similar structure:  350   polyandry  :   22  
    ##  in mouth                           :   86   polygyny   :   62  
    ##  internal (oviduct)                 : 1435   promiscuity:   17  
    ##  other                              :    4   NA's       :33304  
    ##  NA's                               :22757                      
    ##                                                                 
    ##       MonogamyType                                    Spawning    
    ##  facultative:   30   one clear seasonal peak per year     :  560  
    ##  genetic    :    1   once in a lifetime                   :  102  
    ##  obligate   :  136   throughout the year, but peaking once:   49  
    ##  social     :    1   Variable throughout range            :   47  
    ##  NA's       :34131   two seasonal peaks per year          :   40  
    ##                      (Other)                              :  101  
    ##                      NA's                                 :33400  
    ##        RepGuild1                                    RepGuild2    
    ##  bearers    : 2102   open water/substratum egg scatterers: 3925  
    ##  guarders   : 2314   nesters                             : 1577  
    ##  nonguarders: 6229   external brooders                   : 1054  
    ##  NA's       :23654   internal live bearers               :  961  
    ##                      clutch tenders                      :  374  
    ##                      (Other)                             :  327  
    ##                      NA's                                :26081  
    ##      ParentalCare         RepAquarium   
    ##  biparental:   71   High        :   54  
    ##  maternal  :  296   Low         :   26  
    ##  none      : 5163   Medium      :  170  
    ##  paternal  : 1231   Never/Rarely:   38  
    ##  NA's      :27538   NA's        :34011  
    ##                                         
    ##                                         
    ##                                                                                                                                                             AddInfos    
    ##  Oviparous, distinct pairing during breeding (Ref. 205).                                                                                                        :  487  
    ##  Oviparous, distinct pairing (Ref. 205).                                                                                                                        :  330  
    ##  Oviparous, distinct pairing during breeding (Ref. 205).  Eggs are demersal and adhere to the substrate (Ref. 205).  Males guard and aerate the eggs (Ref. 205).:  327  
    ##  Distinct pairing (Ref. 205).                                                                                                                                   :  281  
    ##  Male carries the eggs in a brood pouch (Ref. 205).                                                                                                             :  245  
    ##  (Other)                                                                                                                                                        : 5297  
    ##  NA's                                                                                                                                                           :27332

``` r
# T<-ration()

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"        "autoctr"         "StockCode"       "ReproducRefNo"  
    ##  [5] "MatingRefNo"     "SpawnAggRef"     "SpawnModRef"     "ParentalCareRef"
    ##  [9] "RepAquaRef"      "Entered"         "DateEntered"     "Expert"         
    ## [13] "Modified"        "DateModified"    "AddInfos"        "DateChecked"    
    ## [17] "SpecCode"        "StockCode"       "RepGuild2"       "TS"             
    ## [21] "MonogamyType"    "TS"             
    ## [1] "kept fields"
    ##  [1] "Species"       "ReproMode"     "Fertilization" "MatingSystem" 
    ##  [5] "MatingQuality" "SpawnAgg"      "Spawning"      "BatchSpawner" 
    ##  [9] "RepGuild1"     "ParentalCare"  "ParentalCareQ" "RepAquarium"  
    ## [1] "T_b_single_sum, Species field count"
    ## [1] 1
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "ReproModeassisted.artificial.reproduction_introductions"      
    ##  [2] "ReproModenatural.reproduction_introductions"                  
    ##  [3] "ReproModeunassisted.reproduction_introductions"               
    ##  [4] "SpawnAgg_reproduction"                                        
    ##  [5] "BatchSpawner_reproduction"                                    
    ##  [6] "MatingQuality_reproduction"                                   
    ##  [7] "ParentalCareQ_reproduction"                                   
    ##  [8] "ReproModedioecism_reproduction"                               
    ##  [9] "ReproModeparthenogenesis_reproduction"                        
    ## [10] "ReproModeprotandry_reproduction"                              
    ## [11] "ReproModeprotogyny_reproduction"                              
    ## [12] "ReproModetrue.hermaphroditism_reproduction"                   
    ## [13] "Fertilizationexternal_reproduction"                           
    ## [14] "Fertilizationin.brood.pouch.or.similar.structure_reproduction"
    ## [15] "Fertilizationin.mouth_reproduction"                           
    ## [16] "Fertilizationinternal..oviduct._reproduction"                 
    ## [17] "Fertilizationother_reproduction"                              
    ## [18] "MatingSystemmonogamy_reproduction"                            
    ## [19] "MatingSystempolyandry_reproduction"                           
    ## [20] "MatingSystempolygyny_reproduction"                            
    ## [21] "MatingSystempromiscuity_reproduction"                         
    ## [22] "Spawningno.obvious.seasonal.peak_reproduction"                
    ## [23] "Spawningonce.in.a.lifetime_reproduction"                      
    ## [24] "Spawningone.clear.seasonal.peak.per.year_reproduction"        
    ## [25] "Spawningthroughout.the.year..but.peaking.once_reproduction"   
    ## [26] "RepGuild1bearers_reproduction"                                
    ## [27] "RepGuild1guarders_reproduction"                               
    ## [28] "RepGuild1nonguarders_reproduction"                            
    ## [29] "ParentalCarebiparental_reproduction"                          
    ## [30] "ParentalCarematernal_reproduction"                            
    ## [31] "ParentalCarenone_reproduction"                                
    ## [32] "ParentalCarepaternal_reproduction"                            
    ## [33] "RepAquariumhigh_reproduction"                                 
    ## [34] "RepAquariumlow_reproduction"                                  
    ## [35] "RepAquariummedium_reproduction"                               
    ## [36] "RepAquariumnever.rarely_reproduction"                         
    ## [37] "record_count_species_reproduction"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  ReproModeassisted.artificial.reproduction_introductions
    ##  0   : 2                                                
    ##  NA's:70                                                
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##  ReproModenatural.reproduction_introductions
    ##  0   : 2                                    
    ##  NA's:70                                    
    ##                                             
    ##                                             
    ##                                             
    ##                                             
    ##                                             
    ##  ReproModeunassisted.reproduction_introductions SpawnAgg_reproduction
    ##  0   : 2                                        Min.   :0.00000      
    ##  NA's:70                                        1st Qu.:0.00000      
    ##                                                 Median :0.00000      
    ##                                                 Mean   :0.04688      
    ##                                                 3rd Qu.:0.00000      
    ##                                                 Max.   :1.00000      
    ##                                                 NA's   :8            
    ##  BatchSpawner_reproduction MatingQuality_reproduction
    ##  Min.   :0.0000            Min.   :1.000             
    ##  1st Qu.:0.0000            1st Qu.:1.000             
    ##  Median :0.0000            Median :1.000             
    ##  Mean   :0.1875            Mean   :1.231             
    ##  3rd Qu.:0.0000            3rd Qu.:1.000             
    ##  Max.   :1.0000            Max.   :2.000             
    ##  NA's   :8                 NA's   :59                
    ##  ParentalCareQ_reproduction ReproModedioecism_reproduction
    ##  Min.   :1.000              0   : 7                       
    ##  1st Qu.:1.000              1   :57                       
    ##  Median :1.000              NA's: 8                       
    ##  Mean   :1.867                                            
    ##  3rd Qu.:3.000                                            
    ##  Max.   :4.000                                            
    ##  NA's   :27                                               
    ##  ReproModeparthenogenesis_reproduction ReproModeprotandry_reproduction
    ##  0   :63                               0   :61                        
    ##  1   : 1                               1   : 3                        
    ##  NA's: 8                               NA's: 8                        
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##  ReproModeprotogyny_reproduction ReproModetrue.hermaphroditism_reproduction
    ##  0   :62                         0   :63                                   
    ##  1   : 2                         1   : 1                                   
    ##  NA's: 8                         NA's: 8                                   
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##                                                                            
    ##  Fertilizationexternal_reproduction
    ##  0   :12                           
    ##  1   :52                           
    ##  NA's: 8                           
    ##                                    
    ##                                    
    ##                                    
    ##                                    
    ##  Fertilizationin.brood.pouch.or.similar.structure_reproduction
    ##  0   :63                                                      
    ##  1   : 1                                                      
    ##  NA's: 8                                                      
    ##                                                               
    ##                                                               
    ##                                                               
    ##                                                               
    ##  Fertilizationin.mouth_reproduction
    ##  0   :63                           
    ##  1   : 1                           
    ##  NA's: 8                           
    ##                                    
    ##                                    
    ##                                    
    ##                                    
    ##  Fertilizationinternal..oviduct._reproduction Fertilizationother_reproduction
    ##  0   :56                                      0   :62                        
    ##  1   : 8                                      1   : 2                        
    ##  NA's: 8                                      NA's: 8                        
    ##                                                                              
    ##                                                                              
    ##                                                                              
    ##                                                                              
    ##  MatingSystemmonogamy_reproduction MatingSystempolyandry_reproduction
    ##  0   : 6                           0   :12                           
    ##  1   : 9                           1   : 3                           
    ##  NA's:57                           NA's:57                           
    ##                                                                      
    ##                                                                      
    ##                                                                      
    ##                                                                      
    ##  MatingSystempolygyny_reproduction MatingSystempromiscuity_reproduction
    ##  0   :13                           0   :14                             
    ##  1   : 2                           1   : 1                             
    ##  NA's:57                           NA's:57                             
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##                                                                        
    ##  Spawningno.obvious.seasonal.peak_reproduction
    ##  0   :20                                      
    ##  1   : 4                                      
    ##  NA's:48                                      
    ##                                               
    ##                                               
    ##                                               
    ##                                               
    ##  Spawningonce.in.a.lifetime_reproduction
    ##  0   :23                                
    ##  1   : 1                                
    ##  NA's:48                                
    ##                                         
    ##                                         
    ##                                         
    ##                                         
    ##  Spawningone.clear.seasonal.peak.per.year_reproduction
    ##  0   : 8                                              
    ##  1   :16                                              
    ##  NA's:48                                              
    ##                                                       
    ##                                                       
    ##                                                       
    ##                                                       
    ##  Spawningthroughout.the.year..but.peaking.once_reproduction
    ##  0   :21                                                   
    ##  1   : 3                                                   
    ##  NA's:48                                                   
    ##                                                            
    ##                                                            
    ##                                                            
    ##                                                            
    ##  RepGuild1bearers_reproduction RepGuild1guarders_reproduction
    ##  0   :47                       0   :47                       
    ##  1   :15                       1   :15                       
    ##  NA's:10                       NA's:10                       
    ##                                                              
    ##                                                              
    ##                                                              
    ##                                                              
    ##  RepGuild1nonguarders_reproduction ParentalCarebiparental_reproduction
    ##  0   :30                           0   :44                            
    ##  1   :32                           1   : 1                            
    ##  NA's:10                           NA's:27                            
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##                                                                       
    ##  ParentalCarematernal_reproduction ParentalCarenone_reproduction
    ##  0   :40                           0   :15                      
    ##  1   : 5                           1   :30                      
    ##  NA's:27                           NA's:27                      
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##  ParentalCarepaternal_reproduction RepAquariumhigh_reproduction
    ##  0   :36                           0   : 8                     
    ##  1   : 9                           1   : 5                     
    ##  NA's:27                           NA's:59                     
    ##                                                                
    ##                                                                
    ##                                                                
    ##                                                                
    ##  RepAquariumlow_reproduction RepAquariummedium_reproduction
    ##  0   :12                     0   : 7                       
    ##  1   : 1                     1   : 6                       
    ##  NA's:59                     NA's:59                       
    ##                                                            
    ##                                                            
    ##                                                            
    ##                                                            
    ##  RepAquariumnever.rarely_reproduction record_count_species_reproduction
    ##  0   :12                              Min.   :1                        
    ##  1   : 1                              1st Qu.:1                        
    ##  NA's:59                              Median :1                        
    ##                                       Mean   :1                        
    ##                                       3rd Qu.:1                        
    ##                                       Max.   :1                        
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#spawning
\#\#<https://www.fishbase.in/manual/fishbasethe_spawning_table.htm>
\#\#multiple rows per species, for different localities

``` r
rm(table_out)
table_name = "spawning"
T<-spawning()

#check out fields
T[sapply(T, is.character)] <- lapply(T[sapply(T, is.character)], 
                                       as.factor)
T_f <- T %>%  select_if(is.factor)
summary(T_f)
```

    ##                   Species          C_Code         SpawningGround 
    ##  Clupea harengus      :   61   840    :  529   coastal   :  903  
    ##  Cyprinus carpio      :   35   076    :  277   riverine  :  723  
    ##  Gadus morhua         :   31   036    :  276   lacustrine:  372  
    ##  Merluccius merluccius:   25   643    :  212   shelf     :  190  
    ##  Salmo trutta         :   24   356    :  210   estuarine :  152  
    ##  Diplodus annularis   :   21   (Other): 2874   (Other)   :   67  
    ##  (Other)              :36850   NA's   :32669   NA's      :34640  
    ##                     Spawningarea   LengthTypeFecMin LengthTypeFecMax
    ##  not specified            :  230   TL     :  177    TL     :  165   
    ##  California Current region:  153   SL     :   58    SL     :   55   
    ##  Not specified            :  126   FL     :   53    FL     :   52   
    ##  Cear<e1>                 :   79   NG     :   13    NG     :    7   
    ##  Mediterranean            :   77   41     :    6    0.     :    3   
    ##  (Other)                  : 5008   (Other):   12    (Other):    5   
    ##  NA's                     :31374   NA's   :36728    NA's   :36760   
    ##                           FecComment    LengthType  
    ##  In a litter.                  :   90   FL  :   36  
    ##  Annual fecundity.             :   44   NG  :    6  
    ##  Maximum brood size per clutch.:   12   SL  :  920  
    ##  Batch fecundity.              :    7   TL  :   63  
    ##  Absolute fecundity.           :    6   NA's:36022  
    ##  (Other)                       :  428               
    ##  NA's                          :36460               
    ##                                                             AddInfos    
    ##  Peak breeding activity occurs from July to Aug. (Ref. 85170).  :   20  
    ##  Spawning seasonality based on gonadosomatic index.             :   10  
    ##  Spawning period based on actual presence of larvae in the area.:    8  
    ##  Spawns in spring.                                              :    7  
    ##  Also Ref. 28047.                                               :    6  
    ##  (Other)                                                        : 2873  
    ##  NA's                                                           :34123

``` r
# T<-ration()

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"           "autoctr"            "StockCode"         
    ##  [4] "SpawningRefNo"      "SourceRef"          "SexRmodRef"        
    ##  [7] "FecundityRef"       "SpCycleRef"         "GestationMinRef"   
    ## [10] "GestationMaxRef"    "LengthOffMinRef"    "LengthOffMaxRef"   
    ## [13] "FecunMinRef"        "FecunMeanRef"       "FecunMaxRef"       
    ## [16] "SpawnMinRef"        "SpawnMeanRef"       "SpawnMaxRef"       
    ## [19] "Entered"            "Dateentered"        "Expert"            
    ## [22] "Datechecked"        "FecComment"         "Modified"          
    ## [25] "AddInfos"           "Datemodified"       "SpecCode"          
    ## [28] "StockCode"          "C_Code"             "E_CODE"            
    ## [31] "SexRatiomid"        "SexRmodRef"         "TS"                
    ## [34] "LengthFecunMin"     "LengthTypeFecMin"   "LengthFecunMax"    
    ## [37] "LengthTypeFecMax"   "LengthOffspringMin" "LengthOffMinRef"   
    ## [40] "LengthOffspringMax" "LengthOffMaxRef"    "LengthMin"         
    ## [43] "LengthMax"          "LengthType"         "LengthTypeFecMin"  
    ## [46] "LengthTypeFecMax"   "LengthType"         "Spawningarea"      
    ## [49] "LengthFecunMin"     "LengthTypeFecMin"   "LengthFecunMax"    
    ## [52] "LengthTypeFecMax"   "LengthOffspringMin" "LengthOffMinRef"   
    ## [55] "LengthOffspringMax" "LengthOffMaxRef"    "LengthMin"         
    ## [58] "LengthMax"          "LengthType"         "LengthFecunMin"    
    ## [61] "LengthTypeFecMin"   "LengthFecunMax"     "LengthTypeFecMax"  
    ## [64] "LengthOffspringMin" "LengthOffMinRef"    "LengthOffspringMax"
    ## [67] "LengthOffMaxRef"    "LengthMin"          "LengthMax"         
    ## [70] "LengthType"         "TS"                
    ## [1] "kept fields"
    ##  [1] "Species"          "SpawningGround"   "Jan"              "Feb"             
    ##  [5] "Mar"              "Apr"              "May"              "Jun"             
    ##  [9] "Jul"              "Aug"              "Sep"              "Oct"             
    ## [13] "Nov"              "Dec"              "GSI"              "PercentFemales"  
    ## [17] "TempLow"          "TempHigh"         "FecundityMin"     "WeightMin"       
    ## [21] "FecundityMax"     "WeightMax"        "SpawningCycles"   "GestationMin"    
    ## [25] "GestationMax"     "RelFecundityMin"  "RelFecundityMean" "RelFecundityMax" 
    ## [29] "Number"           "a"                "b"                "CorrCoeff"       
    ## [33] "Dailyspawnmin"    "Dailyspawnmean"   "Dailyspawnmax"   
    ## [1] "T_b_multiple_sum, Species field count"
    ## [1] 1
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "GSI_spawning"                      "PercentFemales_spawning"          
    ##  [3] "Jan_spawning"                      "Feb_spawning"                     
    ##  [5] "Mar_spawning"                      "Apr_spawning"                     
    ##  [7] "May_spawning"                      "Jun_spawning"                     
    ##  [9] "Jul_spawning"                      "Aug_spawning"                     
    ## [11] "Sep_spawning"                      "Oct_spawning"                     
    ## [13] "Nov_spawning"                      "Dec_spawning"                     
    ## [15] "TempLow_spawning"                  "TempHigh_spawning"                
    ## [17] "FecundityMin_spawning"             "WeightMin_spawning"               
    ## [19] "FecundityMax_spawning"             "WeightMax_spawning"               
    ## [21] "SpawningCycles_spawning"           "GestationMin_spawning"            
    ## [23] "GestationMax_spawning"             "RelFecundityMin_spawning"         
    ## [25] "RelFecundityMean_spawning"         "RelFecundityMax_spawning"         
    ## [27] "Number_spawning"                   "a_spawning"                       
    ## [29] "b_spawning"                        "CorrCoeff_spawning"               
    ## [31] "Dailyspawnmin_spawning"            "Dailyspawnmax_spawning"           
    ## [33] "SpawningGroundcoastal_spawning"    "SpawningGroundestuarine_spawning" 
    ## [35] "SpawningGroundlacustrine_spawning" "SpawningGroundriverine_spawning"  
    ## [37] "SpawningGroundshelf_spawning"      "record_count_species_spawning"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##   GSI_spawning     PercentFemales_spawning  Jan_spawning     Feb_spawning   
    ##  Min.   :0.00000   Min.   :0.00000         Min.   : 57.96   Min.   : 76.33  
    ##  1st Qu.:0.00000   1st Qu.:0.00000         1st Qu.:111.00   1st Qu.:111.00  
    ##  Median :0.00000   Median :0.00000         Median :111.00   Median :111.00  
    ##  Mean   :0.02632   Mean   :0.05263         Mean   :104.68   Mean   :108.08  
    ##  3rd Qu.:0.00000   3rd Qu.:0.00000         3rd Qu.:111.00   3rd Qu.:111.00  
    ##  Max.   :1.00000   Max.   :1.00000         Max.   :111.00   Max.   :111.00  
    ##  NA's   :34        NA's   :34              NA's   :59       NA's   :54      
    ##   Mar_spawning    Apr_spawning    May_spawning    Jun_spawning   
    ##  Min.   :100.2   Min.   :103.6   Min.   :101.9   Min.   : 95.41  
    ##  1st Qu.:111.0   1st Qu.:111.0   1st Qu.:111.0   1st Qu.:111.00  
    ##  Median :111.0   Median :111.0   Median :111.0   Median :111.00  
    ##  Mean   :110.3   Mean   :110.3   Mean   :110.4   Mean   :110.01  
    ##  3rd Qu.:111.0   3rd Qu.:111.0   3rd Qu.:111.0   3rd Qu.:111.00  
    ##  Max.   :111.0   Max.   :111.0   Max.   :111.0   Max.   :111.00  
    ##  NA's   :48      NA's   :45      NA's   :46      NA's   :46      
    ##   Jul_spawning     Aug_spawning     Sep_spawning    Oct_spawning   
    ##  Min.   : 56.06   Min.   : 56.27   Min.   :  2.0   Min.   :  2.95  
    ##  1st Qu.:111.00   1st Qu.:111.00   1st Qu.:111.0   1st Qu.:111.00  
    ##  Median :111.00   Median :111.00   Median :111.0   Median :111.00  
    ##  Mean   :107.62   Mean   :106.88   Mean   :103.7   Mean   :101.98  
    ##  3rd Qu.:111.00   3rd Qu.:111.00   3rd Qu.:111.0   3rd Qu.:111.00  
    ##  Max.   :111.00   Max.   :111.00   Max.   :111.0   Max.   :111.00  
    ##  NA's   :52       NA's   :55       NA's   :54      NA's   :53      
    ##   Nov_spawning     Dec_spawning   TempLow_spawning TempHigh_spawning
    ##  Min.   :  4.06   Min.   : 55.5   Min.   : 4.000   Min.   : 6.60    
    ##  1st Qu.:111.00   1st Qu.:111.0   1st Qu.: 6.667   1st Qu.:12.20    
    ##  Median :111.00   Median :111.0   Median :16.600   Median :20.60    
    ##  Mean   :101.06   Mean   :103.8   Mean   :14.164   Mean   :20.76    
    ##  3rd Qu.:111.00   3rd Qu.:111.0   3rd Qu.:20.000   3rd Qu.:29.00    
    ##  Max.   :111.00   Max.   :111.0   Max.   :27.000   Max.   :36.00    
    ##  NA's   :54       NA's   :57      NA's   :59       NA's   :59       
    ##  FecundityMin_spawning WeightMin_spawning  FecundityMax_spawning
    ##  Min.   :      20      Min.   :    34.10   Min.   :      25     
    ##  1st Qu.:     367      1st Qu.:    81.78   1st Qu.:     954     
    ##  Median :    3518      Median :  1600.00   Median :   13798     
    ##  Mean   : 1290787      Mean   : 51393.08   Mean   : 4484567     
    ##  3rd Qu.:   48626      3rd Qu.:  4561.50   3rd Qu.:  286667     
    ##  Max.   :15300000      Max.   :300000.00   Max.   :47700000     
    ##  NA's   :50            NA's   :66          NA's   :51           
    ##  WeightMax_spawning SpawningCycles_spawning GestationMin_spawning
    ##  Min.   :  165      Min.   :1.000           Min.   :8.00         
    ##  1st Qu.:  500      1st Qu.:1.000           1st Qu.:8.25         
    ##  Median : 4195      Median :1.000           Median :8.50         
    ##  Mean   : 7556      Mean   :1.115           Mean   :8.50         
    ##  3rd Qu.: 8450      3rd Qu.:1.000           3rd Qu.:8.75         
    ##  Max.   :24469      Max.   :2.500           Max.   :9.00         
    ##  NA's   :67         NA's   :59              NA's   :70           
    ##  GestationMax_spawning RelFecundityMin_spawning RelFecundityMean_spawning
    ##  Min.   :18            Min.   :   2.0           Min.   :249.8            
    ##  1st Qu.:18            1st Qu.: 200.6           1st Qu.:369.1            
    ##  Median :18            Median : 461.8           Median :488.4            
    ##  Mean   :18            Mean   : 974.9           Mean   :488.4            
    ##  3rd Qu.:18            3rd Qu.: 897.7           3rd Qu.:607.7            
    ##  Max.   :18            Max.   :3767.2           Max.   :727.0            
    ##  NA's   :71            NA's   :66               NA's   :70               
    ##  RelFecundityMax_spawning Number_spawning    a_spawning        b_spawning   
    ##  Min.   :  399.0          Min.   : 29.00   Min.   :0.08371   Min.   :2.010  
    ##  1st Qu.:  477.0          1st Qu.: 34.50   1st Qu.:0.97700   1st Qu.:3.027  
    ##  Median :  718.5          Median : 42.00   Median :2.71667   Median :3.298  
    ##  Mean   : 3281.5          Mean   : 96.24   Mean   :3.03950   Mean   :3.148  
    ##  3rd Qu.: 3523.0          3rd Qu.:128.00   3rd Qu.:4.29015   3rd Qu.:3.360  
    ##  Max.   :11290.0          Max.   :277.67   Max.   :7.13000   Max.   :4.043  
    ##  NA's   :68               NA's   :65       NA's   :67        NA's   :67     
    ##  CorrCoeff_spawning Dailyspawnmin_spawning Dailyspawnmax_spawning
    ##  Min.   :0.5400     Min.   :0.2            Min.   :0.5           
    ##  1st Qu.:0.7000     1st Qu.:0.2            1st Qu.:0.5           
    ##  Median :0.8310     Median :0.2            Median :0.5           
    ##  Mean   :0.7754     Mean   :0.2            Mean   :0.5           
    ##  3rd Qu.:0.8750     3rd Qu.:0.2            3rd Qu.:0.5           
    ##  Max.   :0.9066     Max.   :0.2            Max.   :0.5           
    ##  NA's   :65         NA's   :71             NA's   :71            
    ##  SpawningGroundcoastal_spawning SpawningGroundestuarine_spawning
    ##  0   :12                        0   :13                         
    ##  1   : 3                        1   : 2                         
    ##  NA's:57                        NA's:57                         
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##                                                                 
    ##  SpawningGroundlacustrine_spawning SpawningGroundriverine_spawning
    ##  0   :13                           0   : 9                        
    ##  1   : 2                           1   : 6                        
    ##  NA's:57                           NA's:57                        
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##                                                                   
    ##  SpawningGroundshelf_spawning record_count_species_spawning
    ##  0   :13                      Min.   : 1.000               
    ##  1   : 2                      1st Qu.: 1.000               
    ##  NA's:57                      Median : 1.000               
    ##                               Mean   : 3.444               
    ##                               3rd Qu.: 2.000               
    ##                               Max.   :61.000               
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#speed
\#\#<https://www.fishbase.se/manual/English/PDF/FB_Book_ATorres_Swimming_Speed_RF_JG.pdf>
\#\#<https://www.fishbase.in/manual/fishbasethe_swimming_and_speed_tables.htm>
\#\#multiple records for some species

``` r
rm(table_out)
table_name = "speed"
T<-speed()

#check out fields
T[sapply(T, is.character)] <- lapply(T[sapply(T, is.character)], 
                                       as.factor)
T_f <- T %>%  select_if(is.factor)
summary(T_f)
```

    ##                   Species      LengthType   LengthTypeSpeed        Mode      
    ##  Oncorhynchus mykiss  :   38   BL  :    8   BL  :    8      burst    :  107  
    ##  Carassius auratus    :   23   FL  :    3   SL  :  103      other    :    7  
    ##  Leuciscus leuciscus  :   19   SL  :  103   TL  :  140      sustained:  153  
    ##  Oncorhynchus nerka   :   10   TL  :  138   NA's:34228      NA's     :34212  
    ##  Ptychocheilus grandis:    8   NA's:34227                                    
    ##  Scomber scombrus     :    7                                                 
    ##  (Other)              :34374                                                 
    ##          Reliable    
    ##  questionable:    4  
    ##  NA's        :34475  
    ##                      
    ##                      
    ##                      
    ##                      
    ##                      
    ##                                                          Comment     
    ##  Lengths were transformed to SL in Ref. 308.                 :   98  
    ##  Average of 5 fish.                                          :   12  
    ##  Maximum speed sustained for 3-4 sec. Data read from a graph.:   11  
    ##  Average of 4 fish.                                          :   10  
    ##  Data read from a graph. Temp. range: 17-19.5<b0>C.          :    5  
    ##  (Other)                                                     :   85  
    ##  NA's                                                        :34258

``` r
# T = subset(T, Reliable != "questionable")

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"        "autoctr"         "StockCode"       "SpeedRefNo"     
    ##  [5] "DataRef"         "Entered"         "DateEntered"     "Expert"         
    ##  [9] "Comment"         "Modified"        "DateModified"    "DateChecked"    
    ## [13] "SpecCode"        "StockCode"       "TS"              "Length"         
    ## [17] "LengthType"      "LengthTypeSpeed" "DataRef"         "LengthType"     
    ## [21] "LengthTypeSpeed" "Length"          "LengthType"      "LengthTypeSpeed"
    ## [25] "Reliable"        "Length"          "LengthType"      "LengthTypeSpeed"
    ## [29] "TS"             
    ## [1] "kept fields"
    ## [1] "Species" "SpeedLS" "Speedms" "Mode"    "SLa"     "SLb"    
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ## [1] "SpeedLS_speed"              "Speedms_speed"             
    ## [3] "SLa_speed"                  "SLb_speed"                 
    ## [5] "Modeburst_speed"            "Modeother_speed"           
    ## [7] "Modesustained_speed"        "record_count_species_speed"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  SpeedLS_speed   Speedms_speed      SLa_speed    SLb_speed      Modeburst_speed
    ##  Min.   :1.695   Min.   :0.4577   Min.   :0    Min.   :0.8320   0   : 1        
    ##  1st Qu.:6.256   1st Qu.:0.9582   1st Qu.:0    1st Qu.:0.8605   1   : 4        
    ##  Median :6.970   Median :1.5237   Median :0    Median :0.8850   NA's:67        
    ##  Mean   :6.443   Mean   :1.3160   Mean   :0    Mean   :0.8825                  
    ##  3rd Qu.:8.495   3rd Qu.:1.7425   3rd Qu.:0    3rd Qu.:0.9070                  
    ##  Max.   :8.796   Max.   :1.8982   Max.   :0    Max.   :0.9280                  
    ##  NA's   :67      NA's   :67       NA's   :68   NA's   :68                      
    ##  Modeother_speed Modesustained_speed record_count_species_speed
    ##  0   : 4         0   : 1             Min.   : 1.000            
    ##  1   : 1         1   : 4             1st Qu.: 1.000            
    ##  NA's:67         NA's:67             Median : 1.000            
    ##                                      Mean   : 1.903            
    ##                                      3rd Qu.: 1.000            
    ##                                      Max.   :38.000            
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#stocks
\#\#<https://www.fishbase.in/manual/fishbasethe_stocks_table.htm>
\#\#multiple records for some species, one for each stock

``` r
rm(table_out)
table_name = "stocks"
T<-stocks()

#check out fields
T[sapply(T, is.character)] <- lapply(T[sapply(T, is.character)], 
                                       as.factor)
T_f <- T %>%  select_if(is.factor)
summary(T_f)
```

    ##                      Species                                    StockDefs    
    ##  Oreochromis niloticus   :   40   Asia:  China.                      :  356  
    ##  Cyprinus carpio         :   29   Northwest Pacific:  Japan.         :  157  
    ##  Gadus morhua            :   26   South America:  Brazil.            :  148  
    ##  Clupea harengus         :   22   South America:  Amazon River basin.:  145  
    ##  Melanogrammus aeglefinus:   15   Asia:  India.                      :  144  
    ##  Clupea pallasii pallasii:   14   (Other)                            :33797  
    ##  (Other)                 :34602   NA's                               :    1  
    ##           StockDefsGeneral                   Level      
    ##  South America    : 5053   species in general   :34060  
    ##  Asia             : 4770   wild stock/population:  271  
    ##  Africa           : 3203   subspecies in general:  150  
    ##  Western Pacific  : 1613   subspecies           :   90  
    ##  Indo-West Pacific: 1265   Species in general   :   87  
    ##  (Other)          :15486   (Other)              :   89  
    ##  NA's             : 3358   NA's                 :    1  
    ##                LocalUnique      IUCN_Code               IUCN_Assessment 
    ##  Western Indian Ocean: 1062   N.E.   :18143   D2                :  443  
    ##  Eastern Central Paci:  639   LC     :10262   B1ab(iii)+2ab(iii):  217  
    ##  Western Central Paci:  585   DD     : 3340   B1ab(iii)         :  158  
    ##  Eastern Indian Ocean:  548   VU     : 1134   B2ab(iii)         :  120  
    ##  Western Central Atla:  454   EN     :  654   A2bd              :   86  
    ##  (Other)             :31459   (Other): 1214   (Other)           : 1280  
    ##  NA's                :    1   NA's   :    1   NA's              :32444  
    ##         CITES_Code   
    ##  Appendix I  :   16  
    ##  Appendix II :  105  
    ##  Appendix III:   24  
    ##  NA's        :34603  
    ##                      
    ##                      
    ##                      
    ##                                                             CITES_Remarks  
    ##  Population of Brazil                                              :   15  
    ##  Colombia                                                          :    8  
    ##  Entry into effect delayed by 6 months, i.e. until 4 April 2017.   :    8  
    ##  Entry into effect delayed by 12 months, i.e. until 4 October 2017.:    4  
    ##  35                                                                :    1  
    ##  (Other)                                                           :    8  
    ##  NA's                                                              :34704  
    ##               CMS        NorthSouthN  NorthSouthS  WestEastW    WestEastE   
    ##  Appendix I     :    1   n   :  347   n   :  169   e   :  426   e   :  308  
    ##  Appendix I & II:   19   N   : 7129   N   : 3375   E   : 1802   E   : 2076  
    ##  Appendix II    :   30   s   :   71   s   :  336   w   :  612   w   :  719  
    ##  NA's           :34698   S   : 2488   S   : 5990   W   : 1837   W   : 1554  
    ##                          NA's:24713   NA's:24878   NA's:30071   NA's:30091  
    ##                                                                             
    ##                                                                             
    ##         EnvTemp         Resilience                       ResilienceRemark
    ##  tropical   :21350   High    :17810   Preliminary K or Fecundity.:22301  
    ##  subtropical: 5101   Low     : 2758   Fec assumed to be <100     :  485  
    ##  deep-water : 3934   Medium  : 8555   Assuming tmax>3            :  367  
    ##  temperate  : 3907   Very low:  811   Assuming Fec<1000          :  198  
    ##  polar      :  270   NA's    : 4814   Assuming Fec < 10,000      :  170  
    ##  (Other)    :  184                    (Other)                    : 4206  
    ##  NA's       :    2                    NA's                       : 7021  
    ##      RfeID                     IGFAName            ICESStockID   
    ##  ac     :    1   Aracu             :    2   NAFO-cod-4TVn:    2  
    ##  al     :    1   Emperor, longface :    2   dab-nsea     :    1  
    ##  ap     :    1   Flounder, summer  :    2   ICES-anb-8c9a:    1  
    ##  ar     :    1   Izukasago         :    2   ICES-ane-bisc:    1  
    ##  as     :    1   Ladyfish, springer:    2   ICES-ane-pore:    1  
    ##  (Other):   87   (Other)           : 1039   (Other)      :  139  
    ##  NA's   :34656   NA's              :33699   NA's         :34603

``` r
# T = subset(T, Reliable != "questionable")

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")

#separately add these fields that might show up in other tables:
stocks_fields_exclude =c("Ecology" ,   "Abnorm", "Metabolism", "Predators" ,"Spawning",  "Fecundity",   "Speed",       "Diet"  , "Eggs"  , "EggDevel","Food",
  
  "Larvae",    "LarvDyn",    "LarvSpeed",  "PopDyn",    "Gillarea",   "Maturity",  "MatSizes",
  
  "Processing", "Reproduction" ,"Introductions" ,"Abundance" ,"Vision"  ,  "Genetics"  ,
  
  "CountryComp" ,"Allele",    "GeneticStudies" ,"Ration"    ,  "Foods",   "Ecotoxicology", "Brains",
  
  "Catches" ,  "FAOAqua")
non_biological = c(non_biological, stocks_fields_exclude)

table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##   [1] "SpecCode"         "StockCode"        "StocksRefNo"     
    ##   [4] "CITES_Ref"        "BoundingRef"      "TempRef"         
    ##   [7] "TempPrefRef"      "pHRef"            "dHRef"           
    ##  [10] "CITES_Remarks"    "ResilienceRemark" "Entered"         
    ##  [13] "DateEntered"      "Expert"           "Modified"        
    ##  [16] "DateModified"     "DateChecked"      "SpecCode"        
    ##  [19] "StockCode"        "IUCN_Code"        "CITES_Code"      
    ##  [22] "IGFAName"         "TempPref25"       "FAOAqua"         
    ##  [25] "TS"               "LengthWeight"     "LengthRelations" 
    ##  [28] "LengthFrequency"  "BoundingMethod"   "LengthWeight"    
    ##  [31] "LengthRelations"  "LengthFrequency"  "LengthWeight"    
    ##  [34] "LengthRelations"  "LengthFrequency"  "TS"              
    ##  [37] "Level"            "StockDefs"        "StockDefsGeneral"
    ##  [40] "LocalUnique"      "CITES_Remarks"    "IGFAName"        
    ##  [43] "ICESStockID"      "RfeID"            "NorthSouthN"     
    ##  [46] "NorthSouthS"      "WestEastW"        "WestEastE"       
    ##  [49] "GenBankID"        "FIGIS_ID"         "EcotoxID"        
    ##  [52] "SCRFA_data"       "GMAD_ID"          "SAUP"            
    ##  [55] "SAUP_ID"          "SAUP_Group"       "AusMuseum"       
    ##  [58] "FishTrace"        "IUCN_ID"          "IUCN_IDAssess"   
    ##  [61] "BOLD_ID"          "EssayID"          "OsteoBaseID"     
    ##  [64] "DORIS_ID"         "Aquamaps"         "Occurrence"      
    ##  [67] "Strains"          "SynOC"            "Protected"       
    ##  [70] "Ecology"          "Abnorm"           "Metabolism"      
    ##  [73] "Predators"        "Spawning"         "Fecundity"       
    ##  [76] "Speed"            "LarvSpeed"        "Diet"            
    ##  [79] "Eggs"             "EggDevelop"       "Food"            
    ##  [82] "Foods"            "Larvae"           "LarvDyn"         
    ##  [85] "LarvSpeed"        "PopDyn"           "Gillarea"        
    ##  [88] "Maturity"         "MatSizes"         "Processing"      
    ##  [91] "Reproduction"     "Introductions"    "Abundance"       
    ##  [94] "Vision"           "Genetics"         "CountryComp"     
    ##  [97] "Allele"           "GeneticStudies"   "Ration"          
    ## [100] "Foods"            "Ecotoxicology"    "Brains"          
    ## [103] "Catches"          "FAOAqua"         
    ## [1] "kept fields"
    ##  [1] "Species"           "IUCN_Assessment"   "IUCN_DateAssessed"
    ##  [4] "CITES_Date"        "CMS"               "Northernmost"     
    ##  [7] "Southermost"       "Westernmost"       "Easternmost"      
    ## [10] "TempMin"           "TempMax"           "TempPreferred"    
    ## [13] "TempPref50"        "TempPref75"        "EnvTemp"          
    ## [16] "Resilience"        "pHMin"             "pHMax"            
    ## [19] "dHMin"             "dHMax"             "Morphology"       
    ## [22] "Diseases"          "Aquaculture"       "Sounds"           
    ## [25] "Broodstock"        "EggNursery"        "FryNursery"       
    ## [28] "LarvalNursery"    
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "Northernmost_stocks"                         
    ##  [2] "Southermost_stocks"                          
    ##  [3] "Westernmost_stocks"                          
    ##  [4] "Easternmost_stocks"                          
    ##  [5] "TempMin_stocks"                              
    ##  [6] "TempMax_stocks"                              
    ##  [7] "TempPreferred_stocks"                        
    ##  [8] "TempPref50_stocks"                           
    ##  [9] "TempPref75_stocks"                           
    ## [10] "pHMin_stocks"                                
    ## [11] "pHMax_stocks"                                
    ## [12] "dHMin_stocks"                                
    ## [13] "dHMax_stocks"                                
    ## [14] "Morphology_stocks"                           
    ## [15] "Diseases_stocks"                             
    ## [16] "Aquaculture_stocks"                          
    ## [17] "Sounds_stocks"                               
    ## [18] "Broodstock_stocks"                           
    ## [19] "EggNursery_stocks"                           
    ## [20] "FryNursery_stocks"                           
    ## [21] "LarvalNursery_stocks"                        
    ## [22] "IUCN_Assessmenta1bd_stocks"                  
    ## [23] "IUCN_Assessmenta1ce.2ce..b1.2abc..c2a_stocks"
    ## [24] "IUCN_Assessmenta2ace_stocks"                 
    ## [25] "IUCN_Assessmenta2b_stocks"                   
    ## [26] "IUCN_Assessmenta2bd.4bcd_stocks"             
    ## [27] "IUCN_Assessmenta2bd.4bd_stocks"              
    ## [28] "IUCN_Assessmenta4cd_stocks"                  
    ## [29] "IUCN_Assessmentb2ab.iii._stocks"             
    ## [30] "EnvTempboreal_stocks"                        
    ## [31] "EnvTemppolar_stocks"                         
    ## [32] "EnvTempsubtropical_stocks"                   
    ## [33] "EnvTemptemperate_stocks"                     
    ## [34] "EnvTemptropical_stocks"                      
    ## [35] "Resiliencehigh_stocks"                       
    ## [36] "Resiliencelow_stocks"                        
    ## [37] "Resiliencemedium_stocks"                     
    ## [38] "record_count_species_stocks"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  Northernmost_stocks Southermost_stocks Westernmost_stocks Easternmost_stocks
    ##  Min.   : 1.00       Min.   : 0.00      Min.   :  1.00     Min.   :  9.00    
    ##  1st Qu.:22.75       1st Qu.: 8.75      1st Qu.: 58.50     1st Qu.: 50.50    
    ##  Median :38.00       Median :21.50      Median : 96.50     Median : 86.00    
    ##  Mean   :38.26       Mean   :22.23      Mean   : 88.83     Mean   : 98.66    
    ##  3rd Qu.:52.25       3rd Qu.:30.00      3rd Qu.:114.50     3rd Qu.:146.00    
    ##  Max.   :80.00       Max.   :78.00      Max.   :180.00     Max.   :180.00    
    ##  NA's   :12          NA's   :12         NA's   :34         NA's   :34        
    ##  TempMin_stocks  TempMax_stocks  TempPreferred_stocks TempPref50_stocks
    ##  Min.   :-1.30   Min.   :14.00   Min.   :-1.00        Min.   : 0.00    
    ##  1st Qu.:10.50   1st Qu.:25.00   1st Qu.: 8.00        1st Qu.: 8.75    
    ##  Median :20.00   Median :28.00   Median :20.00        Median :17.50    
    ##  Mean   :16.77   Mean   :27.08   Mean   :17.08        Mean   :16.67    
    ##  3rd Qu.:22.00   3rd Qu.:29.93   3rd Qu.:26.00        3rd Qu.:26.25    
    ##  Max.   :27.00   Max.   :42.50   Max.   :27.00        Max.   :28.00    
    ##  NA's   :26      NA's   :26      NA's   :59           NA's   :60       
    ##  TempPref75_stocks  pHMin_stocks    pHMax_stocks    dHMin_stocks   
    ##  Min.   : 2.00     Min.   :5.500   Min.   :7.000   Min.   : 2.000  
    ##  1st Qu.:11.75     1st Qu.:6.000   1st Qu.:7.500   1st Qu.: 5.000  
    ##  Median :19.00     Median :6.750   Median :8.000   Median : 9.000  
    ##  Mean   :18.58     Mean   :6.806   Mean   :7.947   Mean   : 7.733  
    ##  3rd Qu.:28.00     3rd Qu.:7.000   3rd Qu.:8.000   3rd Qu.: 9.000  
    ##  Max.   :29.00     Max.   :8.500   Max.   :9.000   Max.   :20.000  
    ##  NA's   :60        NA's   :54      NA's   :53      NA's   :57      
    ##   dHMax_stocks   Morphology_stocks Diseases_stocks  Aquaculture_stocks
    ##  Min.   :15.00   Min.   :0.0000    Min.   :0.0000   Min.   :0.00000   
    ##  1st Qu.:19.00   1st Qu.:0.2375    1st Qu.:0.0000   1st Qu.:0.00000   
    ##  Median :19.00   Median :1.0000    Median :0.0000   Median :0.00000   
    ##  Mean   :20.06   Mean   :0.7449    Mean   :0.4102   Mean   :0.01736   
    ##  3rd Qu.:19.00   3rd Qu.:1.0000    3rd Qu.:1.0000   3rd Qu.:0.00000   
    ##  Max.   :30.00   Max.   :1.0000    Max.   :1.0000   Max.   :1.00000   
    ##  NA's   :54                                                           
    ##  Sounds_stocks     Broodstock_stocks EggNursery_stocks FryNursery_stocks
    ##  Min.   :0.00000   Min.   :0.0000    Min.   :0.0000    Min.   :0.0000   
    ##  1st Qu.:0.00000   1st Qu.:0.0000    1st Qu.:0.0000    1st Qu.:0.0000   
    ##  Median :0.00000   Median :0.0000    Median :0.0000    Median :0.0000   
    ##  Mean   :0.02894   Mean   :0.1863    Mean   :0.1255    Mean   :0.1134   
    ##  3rd Qu.:0.00000   3rd Qu.:0.0000    3rd Qu.:0.0000    3rd Qu.:0.0000   
    ##  Max.   :1.00000   Max.   :1.0000    Max.   :1.0000    Max.   :1.0000   
    ##                                                                         
    ##  LarvalNursery_stocks IUCN_Assessmenta1bd_stocks
    ##  Min.   :0.0000       0   : 7                   
    ##  1st Qu.:0.0000       NA's:65                   
    ##  Median :0.0000                                 
    ##  Mean   :0.1571                                 
    ##  3rd Qu.:0.0000                                 
    ##  Max.   :1.0000                                 
    ##                                                 
    ##  IUCN_Assessmenta1ce.2ce..b1.2abc..c2a_stocks IUCN_Assessmenta2ace_stocks
    ##  0   : 6                                      0   : 6                    
    ##  1   : 1                                      1   : 1                    
    ##  NA's:65                                      NA's:65                    
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##  IUCN_Assessmenta2b_stocks IUCN_Assessmenta2bd.4bcd_stocks
    ##  0   : 6                   0   : 6                        
    ##  1   : 1                   1   : 1                        
    ##  NA's:65                   NA's:65                        
    ##                                                           
    ##                                                           
    ##                                                           
    ##                                                           
    ##  IUCN_Assessmenta2bd.4bd_stocks IUCN_Assessmenta4cd_stocks
    ##  0   : 6                        0   : 6                   
    ##  1   : 1                        1   : 1                   
    ##  NA's:65                        NA's:65                   
    ##                                                           
    ##                                                           
    ##                                                           
    ##                                                           
    ##  IUCN_Assessmentb2ab.iii._stocks EnvTempboreal_stocks EnvTemppolar_stocks
    ##  0   : 6                         0:71                 0:69               
    ##  1   : 1                         1: 1                 1: 3               
    ##  NA's:65                                                                 
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##  EnvTempsubtropical_stocks EnvTemptemperate_stocks EnvTemptropical_stocks
    ##  0:49                      0:60                    0:33                  
    ##  1:23                      1:12                    1:39                  
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##  Resiliencehigh_stocks Resiliencelow_stocks Resiliencemedium_stocks
    ##  0   :39               0   :52              0   :39                
    ##  1   :26               1   :13              1   :26                
    ##  NA's: 7               NA's: 7              NA's: 7                
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##  record_count_species_stocks
    ##  Min.   : 1.000             
    ##  1st Qu.: 1.000             
    ##  Median : 1.000             
    ##  Mean   : 2.347             
    ##  3rd Qu.: 1.000             
    ##  Max.   :40.000             
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#diet \#\#<https://www.fishbase.in/manual/fishbasethe_diet_table.htm>
\#\#has multiple rows for different stages

``` r
rm(table_out)
table_name = "diet"
T<-diet()

#check out fields
T[sapply(T, is.character)] <- lapply(T[sapply(T, is.character)], 
                                       as.factor)
T_f <- T %>%  select_if(is.factor)
summary(T_f)
```

    ##                      Species             SampleStage        C_Code     
    ##  Gadus morhua            :   85   adults       : 1017   840    : 1102  
    ##  Merlangius merlangus    :   73   juv./adults  : 3851   643    :  656  
    ##  Melanogrammus aeglefinus:   62   larvae       :  305   036    :  299  
    ##  Pollachius virens       :   50   NULL         :    1   076    :  240  
    ##  Clupea harengus         :   47   recruits/juv.: 1766   124    :  230  
    ##  Hiodon alosoides        :   44   NA's         :32000   (Other): 3600  
    ##  (Other)                 :38579                         NA's   :32813  
    ##                                              Locality    
    ##  Not stated.                                     :  217  
    ##  Also U.S. Virgin Islands, Nov. 1958 - Jun. 1961.:  191  
    ##  Minatogawa, Okinawa Is.                         :  143  
    ##  1985-1997                                       :  105  
    ##  Magdalena and La Guajira                        :  104  
    ##  (Other)                                         : 6054  
    ##  NA's                                            :32126  
    ##                                                          Remark     
    ##  Approx. length.                                            :  437  
    ##  Assumed length type.                                       :  295  
    ##  Assumed length.                                            :  280  
    ##  1977-80 NEFSC bottom trawl 6.5 km/hr; depth range: 8-366 m.:  129  
    ##  1977-80 NEFSC bottom trawl 6.5 km/hr; depth range 8-366 m. :   93  
    ##  (Other)                                                    : 3152  
    ##  NA's                                                       :34554  
    ##     SizeType    
    ##  TL     : 3069  
    ##  NG     : 1511  
    ##  SL     : 1511  
    ##  FL     :  508  
    ##  none   :  102  
    ##  (Other):  149  
    ##  NA's   :32090

``` r
load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")

non_biological = c(non_biological, stocks_fields_exclude)

table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"     "StockCode"    "DietRefNo"    "Remark"       "Entered"     
    ##  [6] "DateEntered"  "Expert"       "Modified"     "DateModified" "DateChecked" 
    ## [11] "SpecCode"     "DietCode"     "StockCode"    "C_Code"       "E_Code"      
    ## [16] "Locality"     "YearStart"    "YearEnd"      "SampleSize"   "Locality"    
    ## [21] "FishLength"   "Method"       "MethodType"   "MethodType"   "SizeType"    
    ## [26] "FishLength"   "FishLength"   "DietCode"     "DietRefNo"   
    ## [1] "kept fields"
    ##  [1] "Species"      "SampleStage"  "January"      "February"     "March"       
    ##  [6] "April"        "May"          "June"         "July"         "August"      
    ## [11] "September"    "October"      "November"     "December"     "OtherItems"  
    ## [16] "PercentEmpty" "Troph"        "seTroph"      "SizeMin"      "SizeMax"     
    ## [1] "T_b_multiple_sum, Species field count"
    ## [1] 1
    ## [1] "T_n_sum, Species field count"
    ## [1] 1
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 1
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "January_diet"                  "February_diet"                
    ##  [3] "March_diet"                    "April_diet"                   
    ##  [5] "May_diet"                      "June_diet"                    
    ##  [7] "July_diet"                     "August_diet"                  
    ##  [9] "September_diet"                "October_diet"                 
    ## [11] "November_diet"                 "December_diet"                
    ## [13] "OtherItems_diet"               "PercentEmpty_diet"            
    ## [15] "Troph_diet"                    "seTroph_diet"                 
    ## [17] "SizeMin_diet"                  "SizeMax_diet"                 
    ## [19] "SampleStageadults_diet"        "SampleStagejuv..adults_diet"  
    ## [21] "SampleStagelarvae_diet"        "SampleStagerecruits.juv._diet"
    ## [23] "record_count_species_diet"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##   January_diet    February_diet      March_diet       April_diet    
    ##  Min.   :0.0000   Min.   :0.0000   Min.   :0.0000   Min.   :0.0000  
    ##  1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.0000  
    ##  Median :0.0000   Median :0.0000   Median :0.0000   Median :0.0000  
    ##  Mean   :0.2414   Mean   :0.2414   Mean   :0.2414   Mean   :0.3793  
    ##  3rd Qu.:0.0000   3rd Qu.:0.0000   3rd Qu.:0.0000   3rd Qu.:1.0000  
    ##  Max.   :1.0000   Max.   :1.0000   Max.   :1.0000   Max.   :1.0000  
    ##  NA's   :43       NA's   :43       NA's   :43       NA's   :43      
    ##     May_diet        June_diet        July_diet       August_diet    
    ##  Min.   :0.0000   Min.   :0.0000   Min.   :0.0000   Min.   :0.0000  
    ##  1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.0000  
    ##  Median :0.0000   Median :1.0000   Median :1.0000   Median :0.0000  
    ##  Mean   :0.4483   Mean   :0.5172   Mean   :0.5517   Mean   :0.4483  
    ##  3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:1.0000  
    ##  Max.   :1.0000   Max.   :1.0000   Max.   :1.0000   Max.   :1.0000  
    ##  NA's   :43       NA's   :43       NA's   :43       NA's   :43      
    ##  September_diet    October_diet    November_diet    December_diet   
    ##  Min.   :0.0000   Min.   :0.0000   Min.   :0.0000   Min.   :0.0000  
    ##  1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.0000  
    ##  Median :0.0000   Median :0.0000   Median :0.0000   Median :0.0000  
    ##  Mean   :0.4483   Mean   :0.3448   Mean   :0.3448   Mean   :0.2759  
    ##  3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:1.0000  
    ##  Max.   :1.0000   Max.   :1.0000   Max.   :1.0000   Max.   :1.0000  
    ##  NA's   :43       NA's   :43       NA's   :43       NA's   :43      
    ##  OtherItems_diet   PercentEmpty_diet   Troph_diet     seTroph_diet   
    ##  Min.   : 0.0000   Min.   : 0.000    Min.   :2.000   Min.   :0.0000  
    ##  1st Qu.: 0.2625   1st Qu.: 7.375    1st Qu.:2.995   1st Qu.:0.2094  
    ##  Median : 4.9000   Median :17.498    Median :3.408   Median :0.2950  
    ##  Mean   : 8.9291   Mean   :20.551    Mean   :3.295   Mean   :0.3240  
    ##  3rd Qu.:10.1212   3rd Qu.:27.775    3rd Qu.:3.875   3rd Qu.:0.4862  
    ##  Max.   :39.8000   Max.   :58.000    Max.   :4.387   Max.   :0.8200  
    ##  NA's   :48        NA's   :56        NA's   :43      NA's   :43      
    ##   SizeMin_diet     SizeMax_diet    SampleStageadults_diet
    ##  Min.   : 3.100   Min.   :  4.90   0   :18               
    ##  1st Qu.: 8.576   1st Qu.: 18.70   1   :11               
    ##  Median :15.300   Median : 26.25   NA's:43               
    ##  Mean   :19.317   Mean   : 38.21                         
    ##  3rd Qu.:25.210   3rd Qu.: 59.24                         
    ##  Max.   :76.600   Max.   :129.12                         
    ##  NA's   :48       NA's   :48                             
    ##  SampleStagejuv..adults_diet SampleStagelarvae_diet
    ##  0   : 5                     0   :26               
    ##  1   :24                     1   : 3               
    ##  NA's:43                     NA's:43               
    ##                                                    
    ##                                                    
    ##                                                    
    ##                                                    
    ##  SampleStagerecruits.juv._diet record_count_species_diet
    ##  0   :13                       Min.   : 1.000           
    ##  1   :16                       1st Qu.: 1.000           
    ##  NA's:43                       Median : 1.000           
    ##                                Mean   : 5.458           
    ##                                3rd Qu.: 3.000           
    ##                                Max.   :85.000           
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#diet\_items – multiple rows per species. seems to be linked with
DietCode to diet table
\#\#<https://www.fishbase.se/manual/English/fishbasethe_food_items_table.htm>

``` r
# rm(table_out)
# table_name = "diet_items"
# T<-diet_items()
# 
# #check out fields
# T[sapply(T, is.character)] <- lapply(T[sapply(T, is.character)], 
#                                        as.factor)
# T_f <- T %>%  select_if(is.factor)
# summary(T_f)
# 
# load("DF.Rdata")
# 
# load("process_table.Rdata")
# load("sum_or_mean.Rdata")
# load("keep_real_binary.Rdata")
# load("non_biological.Rdata")
# 
# non_biological = c(non_biological, stocks_fields_exclude)
# 
# table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
# dim(table_out)[1]==dim(DF)[1]#check this is true
# 
# save(table_out, file =paste0(table_name, ".Rdata"))
# 
# str_which(names(table_out),"Species")
# 
# load("out.Rdata")
# 
# dim(table_out)[1]==dim(out)[1]
# 
# sp_ind = which(names(table_out)=="Species")
# out = cbind(out, table_out[,-sp_ind])
# length(str_which(names(out),"Species"))
# 
# names(out)[str_which(names(out),table_name)]
# summary(out[,str_which(names(out),table_name)])
# 
# save(out, file = "out.Rdata")
# 
# save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

\#\#swimming
\#\#<https://www.fishbase.in/manual/fishbasethe_swimming_and_speed_tables.htm>
\#\#one record per species

``` r
rm(table_out)
table_name = "swimming"
T<-swimming()

#check out fields
T[sapply(T, is.character)] <- lapply(T[sapply(T, is.character)], 
                                       as.factor)
T_f <- T %>%  select_if(is.factor)
summary(T_f)
```

    ##                        Species     
    ##  Aapticheilichthys websteri:    1  
    ##  Aaptosyax grypus          :    1  
    ##  Abactochromis labrosus    :    1  
    ##  Abalistes filamentosus    :    1  
    ##  Abalistes stellaris       :    1  
    ##  Abalistes stellatus       :    1  
    ##  (Other)                   :34293  
    ##                                   AdultType            AdultMode    
    ##  movements of body and/or caudal fin   : 1197   anguilliform:  496  
    ##  oscillation of median or pectoral fins:  355   diodontiform:  411  
    ##  undulation of median or pectoral fins : 1009   labriform   :  349  
    ##  Undulation of median or pectoral fins :   82   carangiform :  345  
    ##  NA's                                  :31656   balistiform :  320  
    ##                                                 (Other)     :  720  
    ##                                                 NA's        :31658  
    ##                                                                                              Comment     
    ##  Involves undulatory movement of body and anal fin as a single unit.                             :    2  
    ##  Undulation of median fins does not make an entire wavelength.                                   :    2  
    ##  Applies to <i>Rhamphichthys schomburgki</i>.                                                    :    1  
    ##  Aspect ratio given for <i>S. melanostictus</i>.                                                 :    1  
    ##  Data on this species were used to parameterize the 'optimum cruising speed' model in Ref. 12452.:    1  
    ##  (Other)                                                                                         :    4  
    ##  NA's                                                                                            :34288

``` r
# T = subset(T, Reliable != "questionable")

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
non_biological = setdiff(non_biological, "Type")#put this one back in
threshold_frac = 0
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"     "SwimRefMain"  "AdultRef"     "AspectRef"    "Entered"     
    ##  [6] "DateEntered"  "Expert"       "Comment"      "Modified"     "DateModified"
    ## [11] "DateChecked"  "SpecCode"     "TS"          
    ## [1] "kept fields"
    ## [1] "Species"     "AdultType"   "AdultMode"   "AspectRatio"
    ## [1] "T_n_sum, Species field count"
    ## [1] 2
    ## [1] "finished T_n"
    ## [1] "T_f_sum, Species field count"
    ## [1] 2
    ## [1] "remove due to lack of coverage"
    ## character(0)

``` r
dim(table_out)[1]==dim(DF)[1]#check this is true
```

    ## [1] TRUE

``` r
save(table_out, file =paste0(table_name, ".Rdata"))

str_which(names(table_out),"Species")
```

    ## [1] 1

``` r
load("out.Rdata")

dim(table_out)[1]==dim(out)[1]
```

    ## [1] TRUE

``` r
sp_ind = which(names(table_out)=="Species")
out = cbind(out, table_out[,-sp_ind])
length(str_which(names(out),"Species"))
```

    ## [1] 1

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "AspectRatio_swimming"                                    
    ##  [2] "AdultTypemovements.of.body.and.or.caudal.fin_swimming"   
    ##  [3] "AdultTypeoscillation.of.median.or.pectoral.fins_swimming"
    ##  [4] "AdultTypeundulation.of.median.or.pectoral.fins_swimming" 
    ##  [5] "AdultModeanguilliform_swimming"                          
    ##  [6] "AdultModebalistiform_swimming"                           
    ##  [7] "AdultModecarangiform_swimming"                           
    ##  [8] "AdultModediodontiform_swimming"                          
    ##  [9] "AdultModegymnotiform_swimming"                           
    ## [10] "AdultModelabriform_swimming"                             
    ## [11] "AdultModerajiform_swimming"                              
    ## [12] "AdultModesubcarangiform_swimming"                        
    ## [13] "record_count_species_swimming"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  AspectRatio_swimming AdultTypemovements.of.body.and.or.caudal.fin_swimming
    ##  Min.   :0.768        0   : 8                                              
    ##  1st Qu.:1.280        1   :13                                              
    ##  Median :1.500        NA's:51                                              
    ##  Mean   :1.470                                                             
    ##  3rd Qu.:1.686                                                             
    ##  Max.   :1.970                                                             
    ##  NA's   :63                                                                
    ##  AdultTypeoscillation.of.median.or.pectoral.fins_swimming
    ##  0   :17                                                 
    ##  1   : 4                                                 
    ##  NA's:51                                                 
    ##                                                          
    ##                                                          
    ##                                                          
    ##                                                          
    ##  AdultTypeundulation.of.median.or.pectoral.fins_swimming
    ##  0   :17                                                
    ##  1   : 4                                                
    ##  NA's:51                                                
    ##                                                         
    ##                                                         
    ##                                                         
    ##                                                         
    ##  AdultModeanguilliform_swimming AdultModebalistiform_swimming
    ##  0   :19                        0   :20                      
    ##  1   : 2                        1   : 1                      
    ##  NA's:51                        NA's:51                      
    ##                                                              
    ##                                                              
    ##                                                              
    ##                                                              
    ##  AdultModecarangiform_swimming AdultModediodontiform_swimming
    ##  0   :14                       0   :20                       
    ##  1   : 7                       1   : 1                       
    ##  NA's:51                       NA's:51                       
    ##                                                              
    ##                                                              
    ##                                                              
    ##                                                              
    ##  AdultModegymnotiform_swimming AdultModelabriform_swimming
    ##  0   :20                       0   :17                    
    ##  1   : 1                       1   : 4                    
    ##  NA's:51                       NA's:51                    
    ##                                                           
    ##                                                           
    ##                                                           
    ##                                                           
    ##  AdultModerajiform_swimming AdultModesubcarangiform_swimming
    ##  0   :20                    0   :17                         
    ##  1   : 1                    1   : 4                         
    ##  NA's:51                    NA's:51                         
    ##                                                             
    ##                                                             
    ##                                                             
    ##                                                             
    ##  record_count_species_swimming
    ##  Min.   :1                    
    ##  1st Qu.:1                    
    ##  Median :1                    
    ##  Mean   :1                    
    ##  3rd Qu.:1                    
    ##  Max.   :1                    
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))


fishbase_HADDOCK = out
write.csv(fishbase_HADDOCK, file = "fishbase_HADDOCK.csv")
```

\#\#see what coverage is

``` r
load("out.Rdata")
save(out, file = "out_allfields.Rdata")
df = out
name_ct = length(names(df))
row_ct = dim(df)[1]
non_na_frac = rep(NA, name_ct)
for (a in 1:name_ct){
  non_na_frac[a]= length(which(!is.na(df[,a])))/ row_ct  
}
  

ok_cols = which(non_na_frac > cutoff)
DF_fields = data.frame(field = names(df),
                       non_na_frac = non_na_frac)
i = sort.int(DF_fields$non_na_frac,  index.return = TRUE, decreasing = TRUE)

DF_fields = DF_fields[i$ix,]
DF_fields
```

    ##                                                                 field
    ## 1                                                             Species
    ## 9                                         record_count_species_brains
    ## 10                                                         range_area
    ## 106                                      record_count_species_ecology
    ## 108                                                Shelf_distribution
    ## 110                                            SpecSport_distribution
    ## 111                                        Statusendemic_distribution
    ## 112                                     Statusintroduced_distribution
    ## 113                                         Statusnative_distribution
    ## 114                                   Statusquestionable_distribution
    ## 125                                 record_count_species_distribution
    ## 126                                               TLObserved_estimate
    ## 127                                                    Troph_estimate
    ## 128                                                  seTroph_estimate
    ## 129                                            TrophObserved_estimate
    ## 142                                        ComDepMinObserved_estimate
    ## 143                                        ComDepMaxObserved_estimate
    ## 146                                         DepthMinEstimate_estimate
    ## 147                                         DepthMaxEstimate_estimate
    ## 148                                         PredPreyRatioMin_estimate
    ## 149                                         PredPreyRatioMax_estimate
    ## 155                                                KObserved_estimate
    ## 156                                     record_count_species_estimate
    ## 175                                    record_count_species_fecundity
    ## 193                                    record_count_species_fooditems
    ## 271                                record_count_species_introductions
    ## 400                                   record_count_species_morphology
    ## 422                                       record_count_species_oxygen
    ## 426                                      record_count_species_popchar
    ## 460                                    record_count_species_popgrowth
    ## 472                                        record_count_species_popqb
    ## 494                                    record_count_species_predators
    ## 505                                       record_count_species_ration
    ## 539                                 record_count_species_reproduction
    ## 577                                     record_count_species_spawning
    ## 585                                        record_count_species_speed
    ## 599                                                 Morphology_stocks
    ## 600                                                   Diseases_stocks
    ## 601                                                Aquaculture_stocks
    ## 602                                                     Sounds_stocks
    ## 603                                                 Broodstock_stocks
    ## 604                                                 EggNursery_stocks
    ## 605                                                 FryNursery_stocks
    ## 606                                              LarvalNursery_stocks
    ## 615                                              EnvTempboreal_stocks
    ## 616                                               EnvTemppolar_stocks
    ## 617                                         EnvTempsubtropical_stocks
    ## 618                                           EnvTemptemperate_stocks
    ## 619                                            EnvTemptropical_stocks
    ## 623                                       record_count_species_stocks
    ## 646                                         record_count_species_diet
    ## 659                                     record_count_species_swimming
    ## 115                                   ContinentGrpafrica_distribution
    ## 116                                     ContinentGrpasia_distribution
    ## 117                           ContinentGrpatlantic.ocean_distribution
    ## 118                        ContinentGrpeurope..form.ussr_distribution
    ## 119                             ContinentGrpindian.ocean_distribution
    ## 120                            ContinentGrpmed.black.sea_distribution
    ## 121                      ContinentGrpnorth.centr.america_distribution
    ## 122                                  ContinentGrpoceania_distribution
    ## 123                            ContinentGrppacific.ocean_distribution
    ## 124                            ContinentGrpsouth.america_distribution
    ## 130                                                        a_estimate
    ## 131                                                sd_log10a_estimate
    ## 132                                                        b_estimate
    ## 133                                                     sd_b_estimate
    ## 620                                             Resiliencehigh_stocks
    ## 621                                              Resiliencelow_stocks
    ## 622                                           Resiliencemedium_stocks
    ## 506                                             SpawnAgg_reproduction
    ## 507                                         BatchSpawner_reproduction
    ## 510                                    ReproModedioecism_reproduction
    ## 511                             ReproModeparthenogenesis_reproduction
    ## 512                                   ReproModeprotandry_reproduction
    ## 513                                   ReproModeprotogyny_reproduction
    ## 514                        ReproModetrue.hermaphroditism_reproduction
    ## 515                                Fertilizationexternal_reproduction
    ## 516     Fertilizationin.brood.pouch.or.similar.structure_reproduction
    ## 517                                Fertilizationin.mouth_reproduction
    ## 518                      Fertilizationinternal..oviduct._reproduction
    ## 519                                   Fertilizationother_reproduction
    ## 39                                                    Neritic_ecology
    ## 40                                                 Intertidal_ecology
    ## 41                                                Hadopelagic_ecology
    ## 42                                                  Estuaries_ecology
    ## 43                                                     Stream_ecology
    ## 44                                                      Lakes_ecology
    ## 45                                                  Schooling_ecology
    ## 46                                                  TidePools_ecology
    ## 47                                                SubLittoral_ecology
    ## 48                                               Bathypelagic_ecology
    ## 49                                              Abyssopelagic_ecology
    ## 50                                             CaveAnchialine_ecology
    ## 57                                                 Parasitism_ecology
    ## 58                                                  Symbiosis_ecology
    ## 59                                                 Symphorism_ecology
    ## 60                                               Commensalism_ecology
    ## 61                                                  Mutualism_ecology
    ## 62                                                  Epiphytic_ecology
    ## 63                                                OutsideHost_ecology
    ## 64                                                 InsideHost_ecology
    ## 65                                                    Sessile_ecology
    ## 66                                                   Demersal_ecology
    ## 67                                                  Endofauna_ecology
    ## 68                                                    Pelagic_ecology
    ## 69                                                Megabenthos_ecology
    ## 70                                               Macrobenthos_ecology
    ## 71                                                Meiobenthos_ecology
    ## 72                                                     Coarse_ecology
    ## 73                                                       Fine_ecology
    ## 74                                                    Sloping_ecology
    ## 75                                                       Silt_ecology
    ## 76                                                       Ooze_ecology
    ## 77                                                   Detritus_ecology
    ## 78                                                    Organic_ecology
    ## 79                                                     Gravel_ecology
    ## 80                                                BedsBivalve_ecology
    ## 81                                                   BedsRock_ecology
    ## 82                                                 BedsOthers_ecology
    ## 83                                              ReefExclusive_ecology
    ## 84                                                   DropOffs_ecology
    ## 85                                                    Tunnels_ecology
    ## 86                                                   Crevices_ecology
    ## 87                                                      Vents_ecology
    ## 88                                                  Seamounts_ecology
    ## 89                                            DeepWaterCorals_ecology
    ## 90                                                     Leaves_ecology
    ## 91                                                      Roots_ecology
    ## 92                                                  Driftwood_ecology
    ## 93                                            OInverterbrates_ecology
    ## 94                                               Verterbrates_ecology
    ## 95                                                    Pilings_ecology
    ## 96                                                  BoatHulls_ecology
    ## 97                                                     Corals_ecology
    ## 98                                                 SoftCorals_ecology
    ## 99                                                    OnPolyp_ecology
    ## 100                                             BetweenPolyps_ecology
    ## 101                                                HardCorals_ecology
    ## 102                                             OnExoskeleton_ecology
    ## 103                                        InterstitialSpaces_ecology
    ## 138                                                        K_estimate
    ## 528                                     RepGuild1bearers_reproduction
    ## 529                                    RepGuild1guarders_reproduction
    ## 530                                 RepGuild1nonguarders_reproduction
    ## 11                                          SupraLittoralZone_ecology
    ## 12                                                Saltmarshes_ecology
    ## 13                                               LittoralZone_ecology
    ## 14                                                      Caves_ecology
    ## 15                                                    Oceanic_ecology
    ## 16                                                 Epipelagic_ecology
    ## 17                                                Mesopelagic_ecology
    ## 18                                                  Mangroves_ecology
    ## 19                                              MarshesSwamps_ecology
    ## 20                                                       Cave_ecology
    ## 21                                                   Solitary_ecology
    ## 22                                                   Shoaling_ecology
    ## 23                                                    Benthic_ecology
    ## 24                                                     Mobile_ecology
    ## 25                                                 SoftBottom_ecology
    ## 26                                                       Sand_ecology
    ## 27                                                        Mud_ecology
    ## 28                                                 HardBottom_ecology
    ## 29                                                      Rocky_ecology
    ## 30                                                     Rubble_ecology
    ## 31                                                 Macrophyte_ecology
    ## 32                                               SeaGrassBeds_ecology
    ## 33                                                 CoralReefs_ecology
    ## 34                                                  ReefFlats_ecology
    ## 35                                                    Lagoons_ecology
    ## 36                                                    Burrows_ecology
    ## 37                                                 Vegetation_ecology
    ## 38                                                      Stems_ecology
    ## 273                                                Females_morphology
    ## 274                                                  Males_morphology
    ## 275                                       OperculumPresent_morphology
    ## 276                                          LLinterrupted_morphology
    ## 586                                               Northernmost_stocks
    ## 587                                                Southermost_stocks
    ## 55                                                  FoodTroph_ecology
    ## 56                                                FoodSeTroph_ecology
    ## 272                                                Notched_morphology
    ## 329                                     BodyShapeIeel.like_morphology
    ## 330                                    BodyShapeIelongated_morphology
    ## 331                            BodyShapeIfusiform...normal_morphology
    ## 332                                        BodyShapeIother_morphology
    ## 333                          BodyShapeIshort.and...or.deep_morphology
    ## 107                                            Coastline_distribution
    ## 109                                              EEZarea_distribution
    ## 176                                           FoodIdetritus_fooditems
    ## 177                                             FoodInekton_fooditems
    ## 178                                             FoodIothers_fooditems
    ## 179                                             FoodIplants_fooditems
    ## 180                                         FoodIzoobenthos_fooditems
    ## 181                                        FoodIzooplankton_fooditems
    ## 182                                         PreyStageadults_fooditems
    ## 183                                           PreyStageeggs_fooditems
    ## 184                                   PreyStagefruits.seeds_fooditems
    ## 185                                    PreyStagejuv..adults_fooditems
    ## 186                                         PreyStagelarvae_fooditems
    ## 187                                  PreyStageleaves.blades_fooditems
    ## 188                                    PreyStagen.a..others_fooditems
    ## 189                                         PreyStagenymphs_fooditems
    ## 190                                          PreyStagepupae_fooditems
    ## 191                                  PreyStagerecruits.juv._fooditems
    ## 192                                          PreyStageroots_fooditems
    ## 298                                                 Dfinno_morphology
    ## 590                                                    TempMin_stocks
    ## 591                                                    TempMax_stocks
    ## 509                                        ParentalCareQ_reproduction
    ## 531                               ParentalCarebiparental_reproduction
    ## 532                                 ParentalCarematernal_reproduction
    ## 533                                     ParentalCarenone_reproduction
    ## 534                                 ParentalCarepaternal_reproduction
    ## 424                                                      Lmax_popchar
    ## 144                                                 DepthMin_estimate
    ## 307                                                 Afinno_morphology
    ## 389                               PectoralAttributesabsent_morphology
    ## 390                  PectoralAttributesmore.or.less.normal_morphology
    ## 391           PectoralAttributestransformed.to..aerofoils._morphology
    ## 392                  PectoralAttributesused.for.locomotion_morphology
    ## 393               PectoralAttributesvery.large...lobe.like_morphology
    ## 299                                        DorsalSpinesMin_morphology
    ## 300                                        DorsalSpinesMax_morphology
    ## 301                                      DorsalSoftRaysMin_morphology
    ## 302                                      DorsalSoftRaysMax_morphology
    ## 382                                                 Adifin_morphology
    ## 383                                           CShapeforked_morphology
    ## 384                            CShapemore.or.less.truncate_morphology
    ## 385                               CShapeother..see.remark._morphology
    ## 386                                          CShapepointed_morphology
    ## 394                   PelvicsAttributesmore.or.less.normal_morphology
    ## 395                     PelvicsAttributessuppressed.absent_morphology
    ## 310                                                Araymin_morphology
    ## 396                                     VPositionabdominal_morphology
    ## 397                                        VPositionabsent_morphology
    ## 398                                       VPositionjugular_morphology
    ## 399                                      VPositionthoracic_morphology
    ## 540                                                      GSI_spawning
    ## 541                                           PercentFemales_spawning
    ## 588                                                Westernmost_stocks
    ## 589                                                Easternmost_stocks
    ## 311                                                Araymax_morphology
    ## 141                                              ComDepthMax_estimate
    ## 145                                                 DepthMax_estimate
    ## 428                                                LinfLmax_popgrowth
    ## 429                                                     Loo_popgrowth
    ## 434                                                       K_popgrowth
    ## 140                                              ComDepthMin_estimate
    ## 157                                            FecundityMin_fecundity
    ## 194                                           EstabAqua_introductions
    ## 195                                            Invasive_introductions
    ## 198                                  Period18th.century_introductions
    ## 199                                     Period1900.1924_introductions
    ## 200                                     Period1925.1949_introductions
    ## 201                                     Period1950.1974_introductions
    ## 202                                     Period1975.1999_introductions
    ## 203                                  Period19th.century_introductions
    ## 204                                  Period2000.present_introductions
    ## 205                              Periodpre.18th.century_introductions
    ## 206                                       Periodunknown_introductions
    ## 308                                       AnalFinSpinesMin_morphology
    ## 309                                       AnalFinSpinesMax_morphology
    ## 150                                                   AgeMin_estimate
    ## 207                                    Reasonaccidental_introductions
    ## 208                         Reasonaccidental.with.ships_introductions
    ## 209                                 Reasonangling.sport_introductions
    ## 210                                   Reasonaquaculture_introductions
    ## 211                 Reasondiffused.from.other.countries_introductions
    ## 212                         Reasonfill.ecological.niche_introductions
    ## 213                                     Reasonfisheries_introductions
    ## 214                                        Reasonforage_introductions
    ## 215                          Reasonlessepsian.migration_introductions
    ## 216                              Reasonmosquito.control_introductions
    ## 217                                       Reasonno.data_introductions
    ## 218                                    Reasonornamental_introductions
    ## 219                    Reasonremoval.of.natural.barrier_introductions
    ## 220                                      Reasonresearch_introductions
    ## 221                                       Reasonunknown_introductions
    ## 237                                Estabwildestablished_introductions
    ## 238                                         Estabwildno_introductions
    ## 239                                    Estabwildno.data_introductions
    ## 240                            Estabwildnot.established_introductions
    ## 241                       Estabwildprobably.established_introductions
    ## 242                                Estabwildprobably.no_introductions
    ## 243                   Estabwildprobably.not.established_introductions
    ## 244                               Estabwildprobably.yes_introductions
    ## 245                                    Estabwildunknown_introductions
    ## 246                                        Estabwildyes_introductions
    ## 312                                                Praymin_morphology
    ## 313                                                Praymax_morphology
    ## 159                                            FecundityMax_fecundity
    ## 387                                    Attributesconfluent_morphology
    ## 388                          Attributesmore.or.less.normal_morphology
    ## 473                                                  predator_mammals
    ## 477                                       Predatstageadults_predators
    ## 478                                  Predatstagejuv..adults_predators
    ## 479                                       Predatstagelarvae_predators
    ## 480                                Predatstagerecruits.juv._predators
    ## 481                                          PredatorIbirds_predators
    ## 482                                    PredatorIcrustaceans_predators
    ## 483                                        PredatorIfinfish_predators
    ## 484                                          PredatorIherps_predators
    ## 485                                        PredatorIinsects_predators
    ## 486                                        PredatorImammals_predators
    ## 487                                       PredatorImollusks_predators
    ## 488                                          PredatorIother_predators
    ## 489                                         PreyStageadults_predators
    ## 490                                           PreyStageeggs_predators
    ## 491                                    PreyStagejuv..adults_predators
    ## 492                                         PreyStagelarvae_predators
    ## 493                                  PreyStagerecruits.juv._predators
    ## 624                                                      January_diet
    ## 625                                                     February_diet
    ## 626                                                        March_diet
    ## 627                                                        April_diet
    ## 628                                                          May_diet
    ## 629                                                         June_diet
    ## 630                                                         July_diet
    ## 631                                                       August_diet
    ## 632                                                    September_diet
    ## 633                                                      October_diet
    ## 634                                                     November_diet
    ## 635                                                     December_diet
    ## 638                                                        Troph_diet
    ## 639                                                      seTroph_diet
    ## 642                                            SampleStageadults_diet
    ## 643                                       SampleStagejuv..adults_diet
    ## 644                                            SampleStagelarvae_diet
    ## 645                                     SampleStagerecruits.juv._diet
    ## 304                                            DFinletsmax_morphology
    ## 306                                            VFinletsmax_morphology
    ## 401                                                     Weight_oxygen
    ## 403                                                       Temp_oxygen
    ## 407                                                 OxygenCons_oxygen
    ## 433                                              TLinfinity_popgrowth
    ## 151                                                   AgeMax_estimate
    ## 152                                              TempPrefMin_estimate
    ## 153                                             TempPrefMean_estimate
    ## 154                                              TempPrefMax_estimate
    ## 376             DorsalAttributescontinuous.with.caudal.fin_morphology
    ## 377 DorsalAttributesextending.over.most.of.the.back.length_morphology
    ## 378              DorsalAttributesgreatly.reduced.or.absent_morphology
    ## 379               DorsalAttributesmodified.to.suction.disc_morphology
    ## 380                 DorsalAttributesno.striking.attributes_morphology
    ## 381                                  DorsalAttributesother_morphology
    ## 545                                                      Apr_spawning
    ## 139                                                     Winf_estimate
    ## 303                                            DFinletsmin_morphology
    ## 305                                            VFinletsmin_morphology
    ## 457                                             Temperature_popgrowth
    ## 546                                                      May_spawning
    ## 547                                                      Jun_spawning
    ## 337                        PosofMouthsub.terminal.inferior_morphology
    ## 338                                     PosofMouthsuperior_morphology
    ## 339                                     PosofMouthterminal_morphology
    ## 402                                                     Number_oxygen
    ## 51                                                  DietTroph_ecology
    ## 315                                                Vraymin_morphology
    ## 316                                                Vraymax_morphology
    ## 324                                   StrikingFeaturesnone_morphology
    ## 325                  StrikingFeaturesother..see.diagnosis._morphology
    ## 326                          StrikingFeaturesstriking.eyes_morphology
    ## 327                          StrikingFeaturesstriking.fins_morphology
    ## 328                 StrikingFeaturesstriking.shape.of.body_morphology
    ## 524                     Spawningno.obvious.seasonal.peak_reproduction
    ## 525                           Spawningonce.in.a.lifetime_reproduction
    ## 526             Spawningone.clear.seasonal.peak.per.year_reproduction
    ## 527        Spawningthroughout.the.year..but.peaking.once_reproduction
    ## 544                                                      Mar_spawning
    ## 636                                                   OtherItems_diet
    ## 640                                                      SizeMin_diet
    ## 641                                                      SizeMax_diet
    ## 53                                                    DietTLu_ecology
    ## 54                                                  DietseTLu_ecology
    ## 314                                                Vspines_morphology
    ## 409                                       AppliedStressfeeding_oxygen
    ## 410                                       AppliedStresshigh.ph_oxygen
    ## 411                                   AppliedStresshypercapnia_oxygen
    ## 412                                       AppliedStresshypoxia_oxygen
    ## 413                                        AppliedStresslow.ph_oxygen
    ## 414                                AppliedStressnone.specified_oxygen
    ## 415                                         AppliedStressother_oxygen
    ## 416                                  AppliedStressother.stress_oxygen
    ## 417                                   AppliedStressphotoperiod_oxygen
    ## 418                                      AppliedStresssalinity_oxygen
    ## 419                                      AppliedStresssedative_oxygen
    ## 420                                   AppliedStresstemperature_oxygen
    ## 421                                        AppliedStresstoxins_oxygen
    ## 3                                                   BodyWeight_brains
    ## 4                                                  BrainWeight_brains
    ## 5                                                     EncCoeff_brains
    ## 334                                Foreheadclearly.concave_morphology
    ## 335                                 Foreheadclearly.convex_morphology
    ## 336                          Foreheadmore.or.less.straight_morphology
    ## 423                                                      Wmax_popchar
    ## 556                                             FecundityMin_spawning
    ## 404                                                   Salinity_oxygen
    ## 425                                                      tmax_popchar
    ## 444                                              LogKLogLoo_popgrowth
    ## 558                                             FecundityMax_spawning
    ## 648             AdultTypemovements.of.body.and.or.caudal.fin_swimming
    ## 649          AdultTypeoscillation.of.median.or.pectoral.fins_swimming
    ## 650           AdultTypeundulation.of.median.or.pectoral.fins_swimming
    ## 651                                    AdultModeanguilliform_swimming
    ## 652                                     AdultModebalistiform_swimming
    ## 653                                     AdultModecarangiform_swimming
    ## 654                                    AdultModediodontiform_swimming
    ## 655                                     AdultModegymnotiform_swimming
    ## 656                                       AdultModelabriform_swimming
    ## 657                                        AdultModerajiform_swimming
    ## 658                                  AdultModesubcarangiform_swimming
    ## 52                                                DietSeTroph_ecology
    ## 197                                            RangeMax_introductions
    ## 548                                                      Jul_spawning
    ## 196                                            RangeMin_introductions
    ## 358                                          HorStripesTTI_morphology
    ## 359                                    VerStripesTTIabsent_morphology
    ## 360                                   VerStripesTTIpresent_morphology
    ## 361                                          DiaStripesTTI_morphology
    ## 362                                          CurStripesTTI_morphology
    ## 551                                                      Oct_spawning
    ## 596                                                      pHMax_stocks
    ## 290                                              BarbelsNo_morphology
    ## 369                 CaudalFinImore.than.one.spot.or.stripe_morphology
    ## 370                          CaudalFinIno.spots.or.stripes_morphology
    ## 371                           CaudalFinIone.spot.or.stripe_morphology
    ## 443                                               Winfinity_popgrowth
    ## 475                                             PredatTroph_predators
    ## 476                                           PredatseTroph_predators
    ## 543                                                      Feb_spawning
    ## 550                                                      Sep_spawning
    ## 552                                                      Nov_spawning
    ## 595                                                      pHMin_stocks
    ## 598                                                      dHMax_stocks
    ## 363                             SpotsTTImore.than.one.spot_morphology
    ## 364                                       SpotsTTIno.spots_morphology
    ## 365                                  SpotsTTIone.spot.only_morphology
    ## 372                   AnalFinImore.than.one.spot.or.stripe_morphology
    ## 373                            AnalFinIno.spots.or.stripes_morphology
    ## 374                             AnalFinIone.spot.or.stripe_morphology
    ## 405                                                     Oxygen_oxygen
    ## 445                                                       b_popgrowth
    ## 549                                                      Aug_spawning
    ## 366                 DorsalFinImore.than.one.spot.or.stripe_morphology
    ## 367                          DorsalFinIno.spots.or.stripes_morphology
    ## 368                           DorsalFinIone.spot.or.stripe_morphology
    ## 447                                                    tmax_popgrowth
    ## 637                                                 PercentEmpty_diet
    ## 174                                          SpawningCycles_fecundity
    ## 520                                 MatingSystemmonogamy_reproduction
    ## 521                                MatingSystempolyandry_reproduction
    ## 522                                 MatingSystempolygyny_reproduction
    ## 523                              MatingSystempromiscuity_reproduction
    ## 553                                                      Dec_spawning
    ## 572                                    SpawningGroundcoastal_spawning
    ## 573                                  SpawningGroundestuarine_spawning
    ## 574                                 SpawningGroundlacustrine_spawning
    ## 575                                   SpawningGroundriverine_spawning
    ## 576                                      SpawningGroundshelf_spawning
    ## 597                                                      dHMin_stocks
    ## 2                                                       Number_brains
    ## 356                                           Scutesabsent_morphology
    ## 357                                      Scutesalong.belly_morphology
    ## 292                                       GillRakersLowMin_morphology
    ## 293                                       GillRakersLowMax_morphology
    ## 406                                                  Oxygenmgl_oxygen
    ## 449                                                       M_popgrowth
    ## 508                                        MatingQuality_reproduction
    ## 535                                      RepAquariumhigh_reproduction
    ## 536                                       RepAquariumlow_reproduction
    ## 537                                    RepAquariummedium_reproduction
    ## 538                              RepAquariumnever.rarely_reproduction
    ## 542                                                      Jan_spawning
    ## 554                                                  TempLow_spawning
    ## 555                                                 TempHigh_spawning
    ## 560                                           SpawningCycles_spawning
    ## 592                                              TempPreferred_stocks
    ## 281                                                  Keels_morphology
    ## 296                                     GillRakersTotalMin_morphology
    ## 297                                     GillRakersTotalMax_morphology
    ## 451                                                      Lm_popgrowth
    ## 593                                                 TempPref50_stocks
    ## 594                                                 TempPref75_stocks
    ## 340                                    MandibleTeethabsent_morphology
    ## 341                                   MandibleTeethpresent_morphology
    ## 346                                     MaxillaTeethabsent_morphology
    ## 347                                    MaxillaTeethpresent_morphology
    ## 165                                                  Number_fecundity
    ## 284                                      ScaleRowsAboveMin_morphology
    ## 285                                      ScaleRowsAboveMax_morphology
    ## 294                                        GillRakersUpMin_morphology
    ## 295                                        GillRakersUpMax_morphology
    ## 430                                                  Number_popgrowth
    ## 461                                                       PopQB_popqb
    ## 463                                                        Winf_popqb
    ## 464                                                           K_popqb
    ## 466                                                 Temperature_popqb
    ## 452                                                   LmLoo_popgrowth
    ## 469                                            Salinitybrackish_popqb
    ## 470                                          Salinityfreshwater_popqb
    ## 471                                            Salinityseawater_popqb
    ## 647                                              AspectRatio_swimming
    ## 7                                                           SL_brains
    ## 134                                                  prior_r_estimate
    ## 135                                                    lcl_r_estimate
    ## 136                                                    ucl_r_estimate
    ## 137                                                      n_r_estimate
    ## 162                                         RelFecundityMin_fecundity
    ## 286                                      ScaleRowsBelowMin_morphology
    ## 287                                      ScaleRowsBelowMax_morphology
    ## 6                                                     EncIndex_brains
    ## 8                                                           TL_brains
    ## 166                                                       a_fecundity
    ## 167                                                       b_fecundity
    ## 351                                          VomerineTeeth_morphology
    ## 467                                                   Mortality_popqb
    ## 468                                                           b_popqb
    ## 474                                                   DietP_predators
    ## 566                                                   Number_spawning
    ## 569                                                CorrCoeff_spawning
    ## 607                                        IUCN_Assessmenta1bd_stocks
    ## 608                      IUCN_Assessmenta1ce.2ce..b1.2abc..c2a_stocks
    ## 609                                       IUCN_Assessmenta2ace_stocks
    ## 610                                         IUCN_Assessmenta2b_stocks
    ## 611                                   IUCN_Assessmenta2bd.4bcd_stocks
    ## 612                                    IUCN_Assessmenta2bd.4bd_stocks
    ## 613                                        IUCN_Assessmenta4cd_stocks
    ## 614                                   IUCN_Assessmentb2ab.iii._stocks
    ## 158                                               WeightMin_fecundity
    ## 164                                         RelFecundityMax_fecundity
    ## 321                                           MaximumDepth_morphology
    ## 427                                                      to_popgrowth
    ## 453                                                  LmMale_popgrowth
    ## 462                                                     MaintQB_popqb
    ## 465                                                          t0_popqb
    ## 557                                                WeightMin_spawning
    ## 563                                          RelFecundityMin_spawning
    ## 160                                               WeightMax_fecundity
    ## 282                                         PoredScalesMin_morphology
    ## 283                                         PoredScalesMax_morphology
    ## 352                                               Palatine_morphology
    ## 353                                  PharyngealTeethabsent_morphology
    ## 354                                 PharyngealTeethpresent_morphology
    ## 448                                                      tm_popgrowth
    ## 454                                               LmLooMale_popgrowth
    ## 455                                                LmFemale_popgrowth
    ## 459                                                      Rm_popgrowth
    ## 495                                                        Rd1_ration
    ## 497                                                        TBW_ration
    ## 498                                                      Water_ration
    ## 499                                                FoodInekton_ration
    ## 500                                                FoodIothers_ration
    ## 501                                            FoodIzoobenthos_ration
    ## 559                                                WeightMax_spawning
    ## 567                                                        a_spawning
    ## 568                                                        b_spawning
    ## 578                                                     SpeedLS_speed
    ## 579                                                     Speedms_speed
    ## 582                                                   Modeburst_speed
    ## 583                                                   Modeother_speed
    ## 584                                               Modesustained_speed
    ## 163                                        RelFecundityMean_fecundity
    ## 288                                        ScalesPeduncMin_morphology
    ## 289                                        ScalesPeduncMax_morphology
    ## 342                             MandibleTeethT1bicuspidate_morphology
    ## 343                             MandibleTeethT1canine.like_morphology
    ## 344                                 MandibleTeethT1conical_morphology
    ## 345                            MandibleTeethT1tricuspidate_morphology
    ## 456                                             LmLooFemale_popgrowth
    ## 502                                           Salinitybrackish_ration
    ## 503                                         Salinityfreshwater_ration
    ## 504                                           Salinityseawater_ration
    ## 565                                          RelFecundityMax_spawning
    ## 580                                                         SLa_speed
    ## 581                                                         SLb_speed
    ## 258                                      EcolEffno.data_introductions
    ## 259                                         EcolEffnone_introductions
    ## 260                                EcolEffprobably.none_introductions
    ## 261                                EcolEffprobably.some_introductions
    ## 262                                         EcolEffsome_introductions
    ## 263                                      EcolEffunknown_introductions
    ## 264                                          EcolEffyes_introductions
    ## 265                                     SocioEffno.data_introductions
    ## 266                                        SocioEffnone_introductions
    ## 267                               SocioEffprobably.none_introductions
    ## 268                               SocioEffprobably.some_introductions
    ## 269                                        SocioEffsome_introductions
    ## 270                                     SocioEffunknown_introductions
    ## 291                                           GillCleftsNo_morphology
    ## 348                              MaxillaTeethT1canine.like_morphology
    ## 349                                  MaxillaTeethT1conical_morphology
    ## 350                             MaxillaTeethT1tricuspidate_morphology
    ## 375                                               Spiracle_morphology
    ## 408                                              SwimmingSpeed_oxygen
    ## 431                                                  SE_Loo_popgrowth
    ## 435                                                    SE_K_popgrowth
    ## 439                                                   SE_to_popgrowth
    ## 446                                                       C_popgrowth
    ## 458                                                  DeltaT_popgrowth
    ## 496                                                        GCE_ration
    ## 168                                                     SEa_fecundity
    ## 169                                                     SEb_fecundity
    ## 247                                   ComAquanever.used_introductions
    ## 248                                      ComAquano.data_introductions
    ## 249                                  ComAquararely.used_introductions
    ## 250                                      ComAquaunknown_introductions
    ## 251                                  ComAquawidely.used_introductions
    ## 252           ReproModeassisted.artificial.reproduction_introductions
    ## 253                         ReproModecontinuous.imports_introductions
    ## 254                       ReproModenatural.reproduction_introductions
    ## 255                                    ReproModeno.data_introductions
    ## 256                    ReproModeunassisted.reproduction_introductions
    ## 257                                    ReproModeunknown_introductions
    ## 277                                        MandibleRowsMin_morphology
    ## 278                                        MandibleRowsMax_morphology
    ## 279                                         MaxillaRowsMin_morphology
    ## 280                                         MaxillaRowsMax_morphology
    ## 317                                             Forklength_morphology
    ## 318                                            Totallength_morphology
    ## 319                                          PostHeadDepth_morphology
    ## 320                                         PostTrunkDepth_morphology
    ## 322                                          PeduncleDepth_morphology
    ## 323                                           CaudalHeight_morphology
    ## 355                                          TeethonTongue_morphology
    ## 437                                                   LCL_K_popgrowth
    ## 438                                                   UCL_K_popgrowth
    ## 441                                                  LCL_to_popgrowth
    ## 442                                                  UCL_to_popgrowth
    ## 561                                             GestationMin_spawning
    ## 564                                         RelFecundityMean_spawning
    ## 104                                  SchoolingFrequencyalways_ecology
    ## 105                               SchoolingFrequencysometimes_ecology
    ## 161                                           FecundityMean_fecundity
    ## 170                                                    LCLa_fecundity
    ## 171                                                    UCLa_fecundity
    ## 172                                                    LCLb_fecundity
    ## 173                                                    UCLb_fecundity
    ## 222                               OtherReasonaccidental_introductions
    ## 223                    OtherReasonaccidental.with.ships_introductions
    ## 224                            OtherReasonangling.sport_introductions
    ## 225                              OtherReasonaquaculture_introductions
    ## 226            OtherReasondiffused.from.other.countries_introductions
    ## 227                    OtherReasonfill.ecological.niche_introductions
    ## 228                                OtherReasonfisheries_introductions
    ## 229                                   OtherReasonforage_introductions
    ## 230                         OtherReasonmosquito.control_introductions
    ## 231                                  OtherReasonno.data_introductions
    ## 232                               OtherReasonornamental_introductions
    ## 233                            OtherReasonother.reasons_introductions
    ## 234                                 OtherReasonresearch_introductions
    ## 235                                  OtherReasonunknown_introductions
    ## 236                             OtherReasonweed.control_introductions
    ## 432                                                  SD_Loo_popgrowth
    ## 436                                                    SD_K_popgrowth
    ## 440                                                   SD_to_popgrowth
    ## 450                                                Number_M_popgrowth
    ## 562                                             GestationMax_spawning
    ## 570                                            Dailyspawnmin_spawning
    ## 571                                            Dailyspawnmax_spawning
    ##     non_na_frac
    ## 1    1.00000000
    ## 9    1.00000000
    ## 10   1.00000000
    ## 106  1.00000000
    ## 108  1.00000000
    ## 110  1.00000000
    ## 111  1.00000000
    ## 112  1.00000000
    ## 113  1.00000000
    ## 114  1.00000000
    ## 125  1.00000000
    ## 126  1.00000000
    ## 127  1.00000000
    ## 128  1.00000000
    ## 129  1.00000000
    ## 142  1.00000000
    ## 143  1.00000000
    ## 146  1.00000000
    ## 147  1.00000000
    ## 148  1.00000000
    ## 149  1.00000000
    ## 155  1.00000000
    ## 156  1.00000000
    ## 175  1.00000000
    ## 193  1.00000000
    ## 271  1.00000000
    ## 400  1.00000000
    ## 422  1.00000000
    ## 426  1.00000000
    ## 460  1.00000000
    ## 472  1.00000000
    ## 494  1.00000000
    ## 505  1.00000000
    ## 539  1.00000000
    ## 577  1.00000000
    ## 585  1.00000000
    ## 599  1.00000000
    ## 600  1.00000000
    ## 601  1.00000000
    ## 602  1.00000000
    ## 603  1.00000000
    ## 604  1.00000000
    ## 605  1.00000000
    ## 606  1.00000000
    ## 615  1.00000000
    ## 616  1.00000000
    ## 617  1.00000000
    ## 618  1.00000000
    ## 619  1.00000000
    ## 623  1.00000000
    ## 646  1.00000000
    ## 659  1.00000000
    ## 115  0.95833333
    ## 116  0.95833333
    ## 117  0.95833333
    ## 118  0.95833333
    ## 119  0.95833333
    ## 120  0.95833333
    ## 121  0.95833333
    ## 122  0.95833333
    ## 123  0.95833333
    ## 124  0.95833333
    ## 130  0.95833333
    ## 131  0.95833333
    ## 132  0.95833333
    ## 133  0.95833333
    ## 620  0.90277778
    ## 621  0.90277778
    ## 622  0.90277778
    ## 506  0.88888889
    ## 507  0.88888889
    ## 510  0.88888889
    ## 511  0.88888889
    ## 512  0.88888889
    ## 513  0.88888889
    ## 514  0.88888889
    ## 515  0.88888889
    ## 516  0.88888889
    ## 517  0.88888889
    ## 518  0.88888889
    ## 519  0.88888889
    ## 39   0.87500000
    ## 40   0.87500000
    ## 41   0.87500000
    ## 42   0.87500000
    ## 43   0.87500000
    ## 44   0.87500000
    ## 45   0.87500000
    ## 46   0.87500000
    ## 47   0.87500000
    ## 48   0.87500000
    ## 49   0.87500000
    ## 50   0.87500000
    ## 57   0.87500000
    ## 58   0.87500000
    ## 59   0.87500000
    ## 60   0.87500000
    ## 61   0.87500000
    ## 62   0.87500000
    ## 63   0.87500000
    ## 64   0.87500000
    ## 65   0.87500000
    ## 66   0.87500000
    ## 67   0.87500000
    ## 68   0.87500000
    ## 69   0.87500000
    ## 70   0.87500000
    ## 71   0.87500000
    ## 72   0.87500000
    ## 73   0.87500000
    ## 74   0.87500000
    ## 75   0.87500000
    ## 76   0.87500000
    ## 77   0.87500000
    ## 78   0.87500000
    ## 79   0.87500000
    ## 80   0.87500000
    ## 81   0.87500000
    ## 82   0.87500000
    ## 83   0.87500000
    ## 84   0.87500000
    ## 85   0.87500000
    ## 86   0.87500000
    ## 87   0.87500000
    ## 88   0.87500000
    ## 89   0.87500000
    ## 90   0.87500000
    ## 91   0.87500000
    ## 92   0.87500000
    ## 93   0.87500000
    ## 94   0.87500000
    ## 95   0.87500000
    ## 96   0.87500000
    ## 97   0.87500000
    ## 98   0.87500000
    ## 99   0.87500000
    ## 100  0.87500000
    ## 101  0.87500000
    ## 102  0.87500000
    ## 103  0.87500000
    ## 138  0.86111111
    ## 528  0.86111111
    ## 529  0.86111111
    ## 530  0.86111111
    ## 11   0.84722222
    ## 12   0.84722222
    ## 13   0.84722222
    ## 14   0.84722222
    ## 15   0.84722222
    ## 16   0.84722222
    ## 17   0.84722222
    ## 18   0.84722222
    ## 19   0.84722222
    ## 20   0.84722222
    ## 21   0.84722222
    ## 22   0.84722222
    ## 23   0.84722222
    ## 24   0.84722222
    ## 25   0.84722222
    ## 26   0.84722222
    ## 27   0.84722222
    ## 28   0.84722222
    ## 29   0.84722222
    ## 30   0.84722222
    ## 31   0.84722222
    ## 32   0.84722222
    ## 33   0.84722222
    ## 34   0.84722222
    ## 35   0.84722222
    ## 36   0.84722222
    ## 37   0.84722222
    ## 38   0.84722222
    ## 273  0.84722222
    ## 274  0.84722222
    ## 275  0.84722222
    ## 276  0.84722222
    ## 586  0.83333333
    ## 587  0.83333333
    ## 55   0.81944444
    ## 56   0.81944444
    ## 272  0.81944444
    ## 329  0.80555556
    ## 330  0.80555556
    ## 331  0.80555556
    ## 332  0.80555556
    ## 333  0.80555556
    ## 107  0.73611111
    ## 109  0.73611111
    ## 176  0.70833333
    ## 177  0.70833333
    ## 178  0.70833333
    ## 179  0.70833333
    ## 180  0.70833333
    ## 181  0.70833333
    ## 182  0.70833333
    ## 183  0.70833333
    ## 184  0.70833333
    ## 185  0.70833333
    ## 186  0.70833333
    ## 187  0.70833333
    ## 188  0.70833333
    ## 189  0.70833333
    ## 190  0.70833333
    ## 191  0.70833333
    ## 192  0.70833333
    ## 298  0.68055556
    ## 590  0.63888889
    ## 591  0.63888889
    ## 509  0.62500000
    ## 531  0.62500000
    ## 532  0.62500000
    ## 533  0.62500000
    ## 534  0.62500000
    ## 424  0.61111111
    ## 144  0.58333333
    ## 307  0.56944444
    ## 389  0.56944444
    ## 390  0.56944444
    ## 391  0.56944444
    ## 392  0.56944444
    ## 393  0.56944444
    ## 299  0.55555556
    ## 300  0.55555556
    ## 301  0.55555556
    ## 302  0.55555556
    ## 382  0.55555556
    ## 383  0.55555556
    ## 384  0.55555556
    ## 385  0.55555556
    ## 386  0.55555556
    ## 394  0.55555556
    ## 395  0.55555556
    ## 310  0.52777778
    ## 396  0.52777778
    ## 397  0.52777778
    ## 398  0.52777778
    ## 399  0.52777778
    ## 540  0.52777778
    ## 541  0.52777778
    ## 588  0.52777778
    ## 589  0.52777778
    ## 311  0.51388889
    ## 141  0.47222222
    ## 145  0.47222222
    ## 428  0.47222222
    ## 429  0.47222222
    ## 434  0.47222222
    ## 140  0.45833333
    ## 157  0.45833333
    ## 194  0.45833333
    ## 195  0.45833333
    ## 198  0.45833333
    ## 199  0.45833333
    ## 200  0.45833333
    ## 201  0.45833333
    ## 202  0.45833333
    ## 203  0.45833333
    ## 204  0.45833333
    ## 205  0.45833333
    ## 206  0.45833333
    ## 308  0.45833333
    ## 309  0.45833333
    ## 150  0.44444444
    ## 207  0.44444444
    ## 208  0.44444444
    ## 209  0.44444444
    ## 210  0.44444444
    ## 211  0.44444444
    ## 212  0.44444444
    ## 213  0.44444444
    ## 214  0.44444444
    ## 215  0.44444444
    ## 216  0.44444444
    ## 217  0.44444444
    ## 218  0.44444444
    ## 219  0.44444444
    ## 220  0.44444444
    ## 221  0.44444444
    ## 237  0.44444444
    ## 238  0.44444444
    ## 239  0.44444444
    ## 240  0.44444444
    ## 241  0.44444444
    ## 242  0.44444444
    ## 243  0.44444444
    ## 244  0.44444444
    ## 245  0.44444444
    ## 246  0.44444444
    ## 312  0.44444444
    ## 313  0.43055556
    ## 159  0.41666667
    ## 387  0.40277778
    ## 388  0.40277778
    ## 473  0.40277778
    ## 477  0.40277778
    ## 478  0.40277778
    ## 479  0.40277778
    ## 480  0.40277778
    ## 481  0.40277778
    ## 482  0.40277778
    ## 483  0.40277778
    ## 484  0.40277778
    ## 485  0.40277778
    ## 486  0.40277778
    ## 487  0.40277778
    ## 488  0.40277778
    ## 489  0.40277778
    ## 490  0.40277778
    ## 491  0.40277778
    ## 492  0.40277778
    ## 493  0.40277778
    ## 624  0.40277778
    ## 625  0.40277778
    ## 626  0.40277778
    ## 627  0.40277778
    ## 628  0.40277778
    ## 629  0.40277778
    ## 630  0.40277778
    ## 631  0.40277778
    ## 632  0.40277778
    ## 633  0.40277778
    ## 634  0.40277778
    ## 635  0.40277778
    ## 638  0.40277778
    ## 639  0.40277778
    ## 642  0.40277778
    ## 643  0.40277778
    ## 644  0.40277778
    ## 645  0.40277778
    ## 304  0.38888889
    ## 306  0.38888889
    ## 401  0.38888889
    ## 403  0.38888889
    ## 407  0.38888889
    ## 433  0.38888889
    ## 151  0.37500000
    ## 152  0.37500000
    ## 153  0.37500000
    ## 154  0.37500000
    ## 376  0.37500000
    ## 377  0.37500000
    ## 378  0.37500000
    ## 379  0.37500000
    ## 380  0.37500000
    ## 381  0.37500000
    ## 545  0.37500000
    ## 139  0.36111111
    ## 303  0.36111111
    ## 305  0.36111111
    ## 457  0.36111111
    ## 546  0.36111111
    ## 547  0.36111111
    ## 337  0.34722222
    ## 338  0.34722222
    ## 339  0.34722222
    ## 402  0.34722222
    ## 51   0.33333333
    ## 315  0.33333333
    ## 316  0.33333333
    ## 324  0.33333333
    ## 325  0.33333333
    ## 326  0.33333333
    ## 327  0.33333333
    ## 328  0.33333333
    ## 524  0.33333333
    ## 525  0.33333333
    ## 526  0.33333333
    ## 527  0.33333333
    ## 544  0.33333333
    ## 636  0.33333333
    ## 640  0.33333333
    ## 641  0.33333333
    ## 53   0.31944444
    ## 54   0.31944444
    ## 314  0.31944444
    ## 409  0.31944444
    ## 410  0.31944444
    ## 411  0.31944444
    ## 412  0.31944444
    ## 413  0.31944444
    ## 414  0.31944444
    ## 415  0.31944444
    ## 416  0.31944444
    ## 417  0.31944444
    ## 418  0.31944444
    ## 419  0.31944444
    ## 420  0.31944444
    ## 421  0.31944444
    ## 3    0.30555556
    ## 4    0.30555556
    ## 5    0.30555556
    ## 334  0.30555556
    ## 335  0.30555556
    ## 336  0.30555556
    ## 423  0.30555556
    ## 556  0.30555556
    ## 404  0.29166667
    ## 425  0.29166667
    ## 444  0.29166667
    ## 558  0.29166667
    ## 648  0.29166667
    ## 649  0.29166667
    ## 650  0.29166667
    ## 651  0.29166667
    ## 652  0.29166667
    ## 653  0.29166667
    ## 654  0.29166667
    ## 655  0.29166667
    ## 656  0.29166667
    ## 657  0.29166667
    ## 658  0.29166667
    ## 52   0.27777778
    ## 197  0.27777778
    ## 548  0.27777778
    ## 196  0.26388889
    ## 358  0.26388889
    ## 359  0.26388889
    ## 360  0.26388889
    ## 361  0.26388889
    ## 362  0.26388889
    ## 551  0.26388889
    ## 596  0.26388889
    ## 290  0.25000000
    ## 369  0.25000000
    ## 370  0.25000000
    ## 371  0.25000000
    ## 443  0.25000000
    ## 475  0.25000000
    ## 476  0.25000000
    ## 543  0.25000000
    ## 550  0.25000000
    ## 552  0.25000000
    ## 595  0.25000000
    ## 598  0.25000000
    ## 363  0.23611111
    ## 364  0.23611111
    ## 365  0.23611111
    ## 372  0.23611111
    ## 373  0.23611111
    ## 374  0.23611111
    ## 405  0.23611111
    ## 445  0.23611111
    ## 549  0.23611111
    ## 366  0.22222222
    ## 367  0.22222222
    ## 368  0.22222222
    ## 447  0.22222222
    ## 637  0.22222222
    ## 174  0.20833333
    ## 520  0.20833333
    ## 521  0.20833333
    ## 522  0.20833333
    ## 523  0.20833333
    ## 553  0.20833333
    ## 572  0.20833333
    ## 573  0.20833333
    ## 574  0.20833333
    ## 575  0.20833333
    ## 576  0.20833333
    ## 597  0.20833333
    ## 2    0.19444444
    ## 356  0.19444444
    ## 357  0.19444444
    ## 292  0.18055556
    ## 293  0.18055556
    ## 406  0.18055556
    ## 449  0.18055556
    ## 508  0.18055556
    ## 535  0.18055556
    ## 536  0.18055556
    ## 537  0.18055556
    ## 538  0.18055556
    ## 542  0.18055556
    ## 554  0.18055556
    ## 555  0.18055556
    ## 560  0.18055556
    ## 592  0.18055556
    ## 281  0.16666667
    ## 296  0.16666667
    ## 297  0.16666667
    ## 451  0.16666667
    ## 593  0.16666667
    ## 594  0.16666667
    ## 340  0.15277778
    ## 341  0.15277778
    ## 346  0.15277778
    ## 347  0.15277778
    ## 165  0.13888889
    ## 284  0.13888889
    ## 285  0.13888889
    ## 294  0.13888889
    ## 295  0.13888889
    ## 430  0.13888889
    ## 461  0.13888889
    ## 463  0.13888889
    ## 464  0.13888889
    ## 466  0.13888889
    ## 452  0.12500000
    ## 469  0.12500000
    ## 470  0.12500000
    ## 471  0.12500000
    ## 647  0.12500000
    ## 7    0.11111111
    ## 134  0.11111111
    ## 135  0.11111111
    ## 136  0.11111111
    ## 137  0.11111111
    ## 162  0.11111111
    ## 286  0.11111111
    ## 287  0.11111111
    ## 6    0.09722222
    ## 8    0.09722222
    ## 166  0.09722222
    ## 167  0.09722222
    ## 351  0.09722222
    ## 467  0.09722222
    ## 468  0.09722222
    ## 474  0.09722222
    ## 566  0.09722222
    ## 569  0.09722222
    ## 607  0.09722222
    ## 608  0.09722222
    ## 609  0.09722222
    ## 610  0.09722222
    ## 611  0.09722222
    ## 612  0.09722222
    ## 613  0.09722222
    ## 614  0.09722222
    ## 158  0.08333333
    ## 164  0.08333333
    ## 321  0.08333333
    ## 427  0.08333333
    ## 453  0.08333333
    ## 462  0.08333333
    ## 465  0.08333333
    ## 557  0.08333333
    ## 563  0.08333333
    ## 160  0.06944444
    ## 282  0.06944444
    ## 283  0.06944444
    ## 352  0.06944444
    ## 353  0.06944444
    ## 354  0.06944444
    ## 448  0.06944444
    ## 454  0.06944444
    ## 455  0.06944444
    ## 459  0.06944444
    ## 495  0.06944444
    ## 497  0.06944444
    ## 498  0.06944444
    ## 499  0.06944444
    ## 500  0.06944444
    ## 501  0.06944444
    ## 559  0.06944444
    ## 567  0.06944444
    ## 568  0.06944444
    ## 578  0.06944444
    ## 579  0.06944444
    ## 582  0.06944444
    ## 583  0.06944444
    ## 584  0.06944444
    ## 163  0.05555556
    ## 288  0.05555556
    ## 289  0.05555556
    ## 342  0.05555556
    ## 343  0.05555556
    ## 344  0.05555556
    ## 345  0.05555556
    ## 456  0.05555556
    ## 502  0.05555556
    ## 503  0.05555556
    ## 504  0.05555556
    ## 565  0.05555556
    ## 580  0.05555556
    ## 581  0.05555556
    ## 258  0.04166667
    ## 259  0.04166667
    ## 260  0.04166667
    ## 261  0.04166667
    ## 262  0.04166667
    ## 263  0.04166667
    ## 264  0.04166667
    ## 265  0.04166667
    ## 266  0.04166667
    ## 267  0.04166667
    ## 268  0.04166667
    ## 269  0.04166667
    ## 270  0.04166667
    ## 291  0.04166667
    ## 348  0.04166667
    ## 349  0.04166667
    ## 350  0.04166667
    ## 375  0.04166667
    ## 408  0.04166667
    ## 431  0.04166667
    ## 435  0.04166667
    ## 439  0.04166667
    ## 446  0.04166667
    ## 458  0.04166667
    ## 496  0.04166667
    ## 168  0.02777778
    ## 169  0.02777778
    ## 247  0.02777778
    ## 248  0.02777778
    ## 249  0.02777778
    ## 250  0.02777778
    ## 251  0.02777778
    ## 252  0.02777778
    ## 253  0.02777778
    ## 254  0.02777778
    ## 255  0.02777778
    ## 256  0.02777778
    ## 257  0.02777778
    ## 277  0.02777778
    ## 278  0.02777778
    ## 279  0.02777778
    ## 280  0.02777778
    ## 317  0.02777778
    ## 318  0.02777778
    ## 319  0.02777778
    ## 320  0.02777778
    ## 322  0.02777778
    ## 323  0.02777778
    ## 355  0.02777778
    ## 437  0.02777778
    ## 438  0.02777778
    ## 441  0.02777778
    ## 442  0.02777778
    ## 561  0.02777778
    ## 564  0.02777778
    ## 104  0.01388889
    ## 105  0.01388889
    ## 161  0.01388889
    ## 170  0.01388889
    ## 171  0.01388889
    ## 172  0.01388889
    ## 173  0.01388889
    ## 222  0.01388889
    ## 223  0.01388889
    ## 224  0.01388889
    ## 225  0.01388889
    ## 226  0.01388889
    ## 227  0.01388889
    ## 228  0.01388889
    ## 229  0.01388889
    ## 230  0.01388889
    ## 231  0.01388889
    ## 232  0.01388889
    ## 233  0.01388889
    ## 234  0.01388889
    ## 235  0.01388889
    ## 236  0.01388889
    ## 432  0.01388889
    ## 436  0.01388889
    ## 440  0.01388889
    ## 450  0.01388889
    ## 562  0.01388889
    ## 570  0.01388889
    ## 571  0.01388889

``` r
plot <- ggplot(data = DF_fields, aes(x = non_na_frac))+
  geom_histogram()+
  xlab("coverage within field")
plot
```

    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

![](fishbase_files/figure-gfm/unnamed-chunk-11-1.png)<!-- -->

``` r
ggsave(plot, filename = "coverage.jpg")
```

    ## Saving 7 x 5 in image
    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

``` r
h = hist(DF_fields$non_na_frac, plot = FALSE, breaks = 20)
```

\#\#remove fields with 0 coverage

``` r
DF_fields_rm = subset(DF_fields, non_na_frac < cutoff)

names_rm = DF_fields_rm$field
names_rm#the fields to remove
```

    ##   [1] "Number_fecundity"                                       
    ##   [2] "ScaleRowsAboveMin_morphology"                           
    ##   [3] "ScaleRowsAboveMax_morphology"                           
    ##   [4] "GillRakersUpMin_morphology"                             
    ##   [5] "GillRakersUpMax_morphology"                             
    ##   [6] "Number_popgrowth"                                       
    ##   [7] "PopQB_popqb"                                            
    ##   [8] "Winf_popqb"                                             
    ##   [9] "K_popqb"                                                
    ##  [10] "Temperature_popqb"                                      
    ##  [11] "LmLoo_popgrowth"                                        
    ##  [12] "Salinitybrackish_popqb"                                 
    ##  [13] "Salinityfreshwater_popqb"                               
    ##  [14] "Salinityseawater_popqb"                                 
    ##  [15] "AspectRatio_swimming"                                   
    ##  [16] "SL_brains"                                              
    ##  [17] "prior_r_estimate"                                       
    ##  [18] "lcl_r_estimate"                                         
    ##  [19] "ucl_r_estimate"                                         
    ##  [20] "n_r_estimate"                                           
    ##  [21] "RelFecundityMin_fecundity"                              
    ##  [22] "ScaleRowsBelowMin_morphology"                           
    ##  [23] "ScaleRowsBelowMax_morphology"                           
    ##  [24] "EncIndex_brains"                                        
    ##  [25] "TL_brains"                                              
    ##  [26] "a_fecundity"                                            
    ##  [27] "b_fecundity"                                            
    ##  [28] "VomerineTeeth_morphology"                               
    ##  [29] "Mortality_popqb"                                        
    ##  [30] "b_popqb"                                                
    ##  [31] "DietP_predators"                                        
    ##  [32] "Number_spawning"                                        
    ##  [33] "CorrCoeff_spawning"                                     
    ##  [34] "IUCN_Assessmenta1bd_stocks"                             
    ##  [35] "IUCN_Assessmenta1ce.2ce..b1.2abc..c2a_stocks"           
    ##  [36] "IUCN_Assessmenta2ace_stocks"                            
    ##  [37] "IUCN_Assessmenta2b_stocks"                              
    ##  [38] "IUCN_Assessmenta2bd.4bcd_stocks"                        
    ##  [39] "IUCN_Assessmenta2bd.4bd_stocks"                         
    ##  [40] "IUCN_Assessmenta4cd_stocks"                             
    ##  [41] "IUCN_Assessmentb2ab.iii._stocks"                        
    ##  [42] "WeightMin_fecundity"                                    
    ##  [43] "RelFecundityMax_fecundity"                              
    ##  [44] "MaximumDepth_morphology"                                
    ##  [45] "to_popgrowth"                                           
    ##  [46] "LmMale_popgrowth"                                       
    ##  [47] "MaintQB_popqb"                                          
    ##  [48] "t0_popqb"                                               
    ##  [49] "WeightMin_spawning"                                     
    ##  [50] "RelFecundityMin_spawning"                               
    ##  [51] "WeightMax_fecundity"                                    
    ##  [52] "PoredScalesMin_morphology"                              
    ##  [53] "PoredScalesMax_morphology"                              
    ##  [54] "Palatine_morphology"                                    
    ##  [55] "PharyngealTeethabsent_morphology"                       
    ##  [56] "PharyngealTeethpresent_morphology"                      
    ##  [57] "tm_popgrowth"                                           
    ##  [58] "LmLooMale_popgrowth"                                    
    ##  [59] "LmFemale_popgrowth"                                     
    ##  [60] "Rm_popgrowth"                                           
    ##  [61] "Rd1_ration"                                             
    ##  [62] "TBW_ration"                                             
    ##  [63] "Water_ration"                                           
    ##  [64] "FoodInekton_ration"                                     
    ##  [65] "FoodIothers_ration"                                     
    ##  [66] "FoodIzoobenthos_ration"                                 
    ##  [67] "WeightMax_spawning"                                     
    ##  [68] "a_spawning"                                             
    ##  [69] "b_spawning"                                             
    ##  [70] "SpeedLS_speed"                                          
    ##  [71] "Speedms_speed"                                          
    ##  [72] "Modeburst_speed"                                        
    ##  [73] "Modeother_speed"                                        
    ##  [74] "Modesustained_speed"                                    
    ##  [75] "RelFecundityMean_fecundity"                             
    ##  [76] "ScalesPeduncMin_morphology"                             
    ##  [77] "ScalesPeduncMax_morphology"                             
    ##  [78] "MandibleTeethT1bicuspidate_morphology"                  
    ##  [79] "MandibleTeethT1canine.like_morphology"                  
    ##  [80] "MandibleTeethT1conical_morphology"                      
    ##  [81] "MandibleTeethT1tricuspidate_morphology"                 
    ##  [82] "LmLooFemale_popgrowth"                                  
    ##  [83] "Salinitybrackish_ration"                                
    ##  [84] "Salinityfreshwater_ration"                              
    ##  [85] "Salinityseawater_ration"                                
    ##  [86] "RelFecundityMax_spawning"                               
    ##  [87] "SLa_speed"                                              
    ##  [88] "SLb_speed"                                              
    ##  [89] "EcolEffno.data_introductions"                           
    ##  [90] "EcolEffnone_introductions"                              
    ##  [91] "EcolEffprobably.none_introductions"                     
    ##  [92] "EcolEffprobably.some_introductions"                     
    ##  [93] "EcolEffsome_introductions"                              
    ##  [94] "EcolEffunknown_introductions"                           
    ##  [95] "EcolEffyes_introductions"                               
    ##  [96] "SocioEffno.data_introductions"                          
    ##  [97] "SocioEffnone_introductions"                             
    ##  [98] "SocioEffprobably.none_introductions"                    
    ##  [99] "SocioEffprobably.some_introductions"                    
    ## [100] "SocioEffsome_introductions"                             
    ## [101] "SocioEffunknown_introductions"                          
    ## [102] "GillCleftsNo_morphology"                                
    ## [103] "MaxillaTeethT1canine.like_morphology"                   
    ## [104] "MaxillaTeethT1conical_morphology"                       
    ## [105] "MaxillaTeethT1tricuspidate_morphology"                  
    ## [106] "Spiracle_morphology"                                    
    ## [107] "SwimmingSpeed_oxygen"                                   
    ## [108] "SE_Loo_popgrowth"                                       
    ## [109] "SE_K_popgrowth"                                         
    ## [110] "SE_to_popgrowth"                                        
    ## [111] "C_popgrowth"                                            
    ## [112] "DeltaT_popgrowth"                                       
    ## [113] "GCE_ration"                                             
    ## [114] "SEa_fecundity"                                          
    ## [115] "SEb_fecundity"                                          
    ## [116] "ComAquanever.used_introductions"                        
    ## [117] "ComAquano.data_introductions"                           
    ## [118] "ComAquararely.used_introductions"                       
    ## [119] "ComAquaunknown_introductions"                           
    ## [120] "ComAquawidely.used_introductions"                       
    ## [121] "ReproModeassisted.artificial.reproduction_introductions"
    ## [122] "ReproModecontinuous.imports_introductions"              
    ## [123] "ReproModenatural.reproduction_introductions"            
    ## [124] "ReproModeno.data_introductions"                         
    ## [125] "ReproModeunassisted.reproduction_introductions"         
    ## [126] "ReproModeunknown_introductions"                         
    ## [127] "MandibleRowsMin_morphology"                             
    ## [128] "MandibleRowsMax_morphology"                             
    ## [129] "MaxillaRowsMin_morphology"                              
    ## [130] "MaxillaRowsMax_morphology"                              
    ## [131] "Forklength_morphology"                                  
    ## [132] "Totallength_morphology"                                 
    ## [133] "PostHeadDepth_morphology"                               
    ## [134] "PostTrunkDepth_morphology"                              
    ## [135] "PeduncleDepth_morphology"                               
    ## [136] "CaudalHeight_morphology"                                
    ## [137] "TeethonTongue_morphology"                               
    ## [138] "LCL_K_popgrowth"                                        
    ## [139] "UCL_K_popgrowth"                                        
    ## [140] "LCL_to_popgrowth"                                       
    ## [141] "UCL_to_popgrowth"                                       
    ## [142] "GestationMin_spawning"                                  
    ## [143] "RelFecundityMean_spawning"                              
    ## [144] "SchoolingFrequencyalways_ecology"                       
    ## [145] "SchoolingFrequencysometimes_ecology"                    
    ## [146] "FecundityMean_fecundity"                                
    ## [147] "LCLa_fecundity"                                         
    ## [148] "UCLa_fecundity"                                         
    ## [149] "LCLb_fecundity"                                         
    ## [150] "UCLb_fecundity"                                         
    ## [151] "OtherReasonaccidental_introductions"                    
    ## [152] "OtherReasonaccidental.with.ships_introductions"         
    ## [153] "OtherReasonangling.sport_introductions"                 
    ## [154] "OtherReasonaquaculture_introductions"                   
    ## [155] "OtherReasondiffused.from.other.countries_introductions" 
    ## [156] "OtherReasonfill.ecological.niche_introductions"         
    ## [157] "OtherReasonfisheries_introductions"                     
    ## [158] "OtherReasonforage_introductions"                        
    ## [159] "OtherReasonmosquito.control_introductions"              
    ## [160] "OtherReasonno.data_introductions"                       
    ## [161] "OtherReasonornamental_introductions"                    
    ## [162] "OtherReasonother.reasons_introductions"                 
    ## [163] "OtherReasonresearch_introductions"                      
    ## [164] "OtherReasonunknown_introductions"                       
    ## [165] "OtherReasonweed.control_introductions"                  
    ## [166] "SD_Loo_popgrowth"                                       
    ## [167] "SD_K_popgrowth"                                         
    ## [168] "SD_to_popgrowth"                                        
    ## [169] "Number_M_popgrowth"                                     
    ## [170] "GestationMax_spawning"                                  
    ## [171] "Dailyspawnmin_spawning"                                 
    ## [172] "Dailyspawnmax_spawning"

``` r
print(DF_fields_rm[str_which(names_rm, "oxygen"),])
```

    ##                    field non_na_frac
    ## 408 SwimmingSpeed_oxygen  0.04166667

``` r
keep = setdiff(names(out), names_rm)
out = out[, keep]
dim(out)
```

    ## [1]  72 487

``` r
save(out, file = "out.Rdata")
```

\#\#add back haddock fields

``` r
load("out.Rdata")
save(out, file = "out_minus_haddock.Rdata")
load("DF.Rdata")
names_in_common = intersect(names(out), names(DF))
names_in_common = setdiff(names_in_common, "Species")
inds = which(names(DF) %in% names_in_common)
DF = DF[, -inds]
out = merge(out, DF, by = "Species")

rm = c("haddock_score_sd", "Species_ACE2")
keep = setdiff(names(out), rm)
out = out[, keep]
# dummify the data
Species = out$Species
# sp_ind = which(names(out)=="Species")
# dmy <- dummyVars(" ~ .", data = out[,-sp_ind])
# out <- data.frame(predict(dmy, newdata = out))
# out$Species = Species


save(out, file = "out.Rdata")
```

\#\#remove fields with near-zero variation

``` r
load("out.Rdata")
DF = out

##remove variables with zero variation
sp_ind = which(names(DF)=="Species")
nzv = nearZeroVar(DF, freqCut = 95/5, saveMetrics = TRUE)
okay_inds = which(nzv$nzv == FALSE)
# length(okay_inds)
# okay_inds =c(okay_inds, sp_ind)
length(okay_inds)
```

    ## [1] 338

``` r
DF = DF[,okay_inds]#include only the columns that have variation

fishbase_HADDOCK_biological = DF
save(fishbase_HADDOCK_biological, file = "fishbase_HADDOCK_biological.Rdata")
write.csv(fishbase_HADDOCK_biological, file = "fishbase_HADDOCK_biological.csv", row.names = FALSE)
```

\#\#look for fields in common with other taxa that are not fish and
output to add to datasets from other verts

``` r
source("compare_fields.R")
```

    ## character(0)
    ##  [1] "Weight_oxygen"                      "Number_oxygen"                     
    ##  [3] "Temp_oxygen"                        "Salinity_oxygen"                   
    ##  [5] "Oxygen_oxygen"                      "Oxygenmgl_oxygen"                  
    ##  [7] "OxygenCons_oxygen"                  "AppliedStresshigh.ph_oxygen"       
    ##  [9] "AppliedStresshypercapnia_oxygen"    "AppliedStresshypoxia_oxygen"       
    ## [11] "AppliedStresslow.ph_oxygen"         "AppliedStressnone.specified_oxygen"
    ## [13] "AppliedStressother_oxygen"          "AppliedStressother.stress_oxygen"  
    ## [15] "AppliedStresstemperature_oxygen"    "record_count_species_oxygen"       
    ## character(0)
    ## character(0)
    ## [1] "Number_brains"               "BodyWeight_brains"          
    ## [3] "BrainWeight_brains"          "EncCoeff_brains"            
    ## [5] "record_count_species_brains"
    ## character(0)
    ## character(0)
    ## character(0)
    ## character(0)
    ## character(0)
    ##  [1] "Oceanic_ecology"       "Epipelagic_ecology"    "Mangroves_ecology"    
    ##  [4] "MarshesSwamps_ecology" "SoftBottom_ecology"    "Sand_ecology"         
    ##  [7] "Mud_ecology"           "HardBottom_ecology"    "Rocky_ecology"        
    ## [10] "SeaGrassBeds_ecology"  "CoralReefs_ecology"    "Neritic_ecology"      
    ## [13] "Intertidal_ecology"    "Estuaries_ecology"     "Stream_ecology"       
    ## [16] "Lakes_ecology"         "DietTroph_ecology"     "DietSeTroph_ecology"  
    ## [19] "DietTLu_ecology"       "DietseTLu_ecology"     "FoodTroph_ecology"    
    ## [22] "FoodSeTroph_ecology"  
    ## character(0)
    ##  [1] "Wmax_popchar"                   "Lmax_popchar"                  
    ##  [3] "tmax_popchar"                   "record_count_species_popchar"  
    ##  [5] "LinfLmax_popgrowth"             "Loo_popgrowth"                 
    ##  [7] "TLinfinity_popgrowth"           "K_popgrowth"                   
    ##  [9] "Winfinity_popgrowth"            "LogKLogLoo_popgrowth"          
    ## [11] "b_popgrowth"                    "tmax_popgrowth"                
    ## [13] "M_popgrowth"                    "Lm_popgrowth"                  
    ## [15] "Temperature_popgrowth"          "record_count_species_popgrowth"
    ## character(0)
    ##  [1] "PreyStageadults_fooditems"          "PreyStageeggs_fooditems"           
    ##  [3] "PreyStagejuv..adults_fooditems"     "PreyStagelarvae_fooditems"         
    ##  [5] "PreyStageleaves.blades_fooditems"   "PreyStagen.a..others_fooditems"    
    ##  [7] "PreyStagepupae_fooditems"           "PreyStagerecruits.juv._fooditems"  
    ##  [9] "Predatstageadults_predators"        "Predatstagejuv..adults_predators"  
    ## [11] "Predatstagerecruits.juv._predators" "PreyStageadults_predators"         
    ## [13] "PreyStageeggs_predators"            "PreyStagejuv..adults_predators"    
    ## [15] "PreyStagelarvae_predators"          "PreyStagerecruits.juv._predators"  
    ## [17] "SampleStageadults_diet"             "SampleStagejuv..adults_diet"       
    ## [19] "SampleStagelarvae_diet"             "SampleStagerecruits.juv._diet"     
    ## [1] "PreyStageadults_fooditems"        "PreyStagejuv..adults_fooditems"  
    ## [3] "Predatstageadults_predators"      "Predatstagejuv..adults_predators"
    ## [5] "PreyStageadults_predators"        "PreyStagejuv..adults_predators"  
    ## [7] "SampleStageadults_diet"           "SampleStagejuv..adults_diet"     
    ## [1] "Spawningone.clear.seasonal.peak.per.year_reproduction"     
    ## [2] "Spawningthroughout.the.year..but.peaking.once_reproduction"
    ##  [1] "Coastline_distribution"                      
    ##  [2] "Shelf_distribution"                          
    ##  [3] "EEZarea_distribution"                        
    ##  [4] "SpecSport_distribution"                      
    ##  [5] "Statusendemic_distribution"                  
    ##  [6] "Statusintroduced_distribution"               
    ##  [7] "Statusnative_distribution"                   
    ##  [8] "ContinentGrpafrica_distribution"             
    ##  [9] "ContinentGrpasia_distribution"               
    ## [10] "ContinentGrpatlantic.ocean_distribution"     
    ## [11] "ContinentGrpeurope..form.ussr_distribution"  
    ## [12] "ContinentGrpindian.ocean_distribution"       
    ## [13] "ContinentGrpmed.black.sea_distribution"      
    ## [14] "ContinentGrpnorth.centr.america_distribution"
    ## [15] "ContinentGrpoceania_distribution"            
    ## [16] "ContinentGrppacific.ocean_distribution"      
    ## [17] "ContinentGrpsouth.america_distribution"      
    ## [18] "record_count_species_distribution"           
    ## [1] "range_area"           "EEZarea_distribution"
    ## character(0)
    ##  [1] "January_diet"                  "February_diet"                
    ##  [3] "March_diet"                    "April_diet"                   
    ##  [5] "May_diet"                      "June_diet"                    
    ##  [7] "July_diet"                     "August_diet"                  
    ##  [9] "September_diet"                "October_diet"                 
    ## [11] "November_diet"                 "December_diet"                
    ## [13] "OtherItems_diet"               "PercentEmpty_diet"            
    ## [15] "Troph_diet"                    "seTroph_diet"                 
    ## [17] "SizeMin_diet"                  "SizeMax_diet"                 
    ## [19] "SampleStageadults_diet"        "SampleStagejuv..adults_diet"  
    ## [21] "SampleStagelarvae_diet"        "SampleStagerecruits.juv._diet"
    ## [23] "record_count_species_diet"    
    ##  [1] "FoodIdetritus_fooditems"          "FoodInekton_fooditems"           
    ##  [3] "FoodIothers_fooditems"            "FoodIplants_fooditems"           
    ##  [5] "FoodIzoobenthos_fooditems"        "FoodIzooplankton_fooditems"      
    ##  [7] "PreyStageadults_fooditems"        "PreyStageeggs_fooditems"         
    ##  [9] "PreyStagejuv..adults_fooditems"   "PreyStagelarvae_fooditems"       
    ## [11] "PreyStageleaves.blades_fooditems" "PreyStagen.a..others_fooditems"  
    ## [13] "PreyStagepupae_fooditems"         "PreyStagerecruits.juv._fooditems"
    ## [15] "record_count_species_fooditems"  
    ## [1] "FoodIdetritus_fooditems"    "FoodInekton_fooditems"     
    ## [3] "FoodIothers_fooditems"      "FoodIplants_fooditems"     
    ## [5] "FoodIzoobenthos_fooditems"  "FoodIzooplankton_fooditems"

\#\#add field with AA position 30

``` r
A <- read.csv("promal3d_30_83.csv")

AA_30_positive = rep(0, dim(A)[1])
i_blank = str_which(A$X, "-")
AA_30_positive[i_blank]=NA

i_pos = which(A$X %in% c("d", "e"))
AA_30_positive[i_pos] = 1
A$AA_30_positive = AA_30_positive

ACE2 = read.csv("ACE2_sequences_fixed.csv")

intersect(A$Parsed.325.sequences,ACE2$AccessionNumProtein)
```

    ##   [1] "XP_030232530.1" "XP_021433278.1" "XP_010884777.2" "XP_014062928.1"
    ##   [5] "XP_023998967.1" "XP_018584732.1" "XP_029283581.1" "XP_030271236.1"
    ##   [9] "XP_008402714.1" "XP_007560208.1" "XP_014895313.1" "XP_014837025.1"
    ##  [13] "XP_027871671.1" "XP_032417398.1" "XP_005799835.1" "XP_021178197.1"
    ##  [17] "XP_015226730.1" "XP_015808977.1" "XP_024150631.1" "XP_013888928.1"
    ##  [21] "XP_017295385.1" "XP_028297875.1" "XP_020465646.1" "XP_022605054.1"
    ##  [25] "XP_023257445.1" "XP_026233431.1" "XP_028999570.1" "XP_020781598.1"
    ##  [29] "XP_016887914.1" "XP_029354066.1" "XP_019742561.1" "XP_020493627.1"
    ##  [33] "XP_010730146.1" "XP_018539189.1" "XP_026175949.1" "XP_019935235.1"
    ##  [37] "XP_028257887.1" "XP_029702274.1" "XP_029904152.1" "XP_032355526.1"
    ##  [41] "XP_031702716.1" "XP_010790455.1" "XP_028441363.1" "XP_031162227.1"
    ##  [45] "XP_023124156.1" "XP_022063988.1" "XP_029949252.1" "XP_008290762.1"
    ##  [49] "XP_031584810.1" "XP_026020155.1" "XP_005943362.1" "XP_004543482.1"
    ##  [53] "XP_006780474.1" "XP_003445853.2" "XP_005724169.1" "XP_030582139.1"
    ##  [57] "XP_026867211.1" "XP_017550079.1" "XP_026803610.1" "XP_017313836.1"
    ##  [61] "XP_027024524.1" "XP_030627971.1" "XP_028837781.1" "XP_022523929.1"
    ##  [65] "XP_031414786.1" "XP_005169416.1" "XP_026131313.1" "XP_016345325.1"
    ##  [69] "XP_016422243.1" "XP_006639185.1" "XP_023679669.1" "XP_003503283.1"
    ##  [73] "XP_005074266.1" "ACT66274.1"     "XP_028617962.1" "XP_004671523.1"
    ##  [77] "XP_031226742.1" "XP_005358818.1" "XP_021009138.1" "NP_001123985.1"
    ##  [81] "XP_021043935.1" "XP_008839098.1" "XP_028743609.1" "XP_006973269.1"
    ##  [85] "NP_001012006.1" "XP_013362429.1" "XP_023417808.1" "XP_012585871.1"
    ##  [89] "XP_010643477.1" "XP_004866157.1" "XP_023575316.1" "XP_001490241.1"
    ##  [93] "XP_008542995.1" "XP_004435206.1" "XP_014713133.1" "XP_011891201.1"
    ##  [97] "AAY57872.1"     "XP_007989304.1" "XP_018874749.1" "XP_005593094.1"
    ## [101] "ACI04563.1"     "XP_011850923.1" "XP_021788733.1" "XP_023054821.1"
    ## [105] "XP_012290105.1" "XP_008987241.1" "XP_017367866.1" "XP_010334925.1"
    ## [109] "XP_032141854.1" "XP_008062810.1" "XP_032612508.1" "XP_011733506.1"
    ## [113] "XP_003261132.2" "XP_008972428.1" "XP_016798468.1" "XP_024096013.1"
    ## [117] "XP_010364367.2" "XP_025227847.1" "XP_017744069.1" "XP_003791912.1"
    ## [121] "BAE72462.1"     "XP_007889845.1" "XP_025713397.1" "XP_027970822.1"
    ## [125] "XP_021536480.1" "XP_027465353.1" "XP_025292934.1" "XP_013966804.1"
    ## [129] "ABW16956.1"     "XP_025842513.1" "XP_006835673.1" "XP_024425698.1"
    ## [133] "XP_007538670.1" "XP_015273067.1" "XP_005316051.3" "XP_027802308.1"
    ## [137] "XP_015343540.1" "XP_026252505.1" "XP_005997915.2" "XP_030886750.1"
    ## [141] "XP_017505746.1" "XP_016058453.1" "XP_004597549.2" "XP_001515597.2"
    ## [145] "XP_002719891.1" "XP_028378317.1" "XP_012494186.1" "XP_026333865.1"
    ## [149] "XP_008694637.1" "XP_022374078.1" "XP_032187679.1" "XP_004758942.1"
    ## [153] "KAF0878287.1"   "XP_023104564.1" "XP_026910297.1" "XP_030160839.1"
    ## [157] "VFV30336.1"     "XP_019273508.1" "XP_007090142.1" "XP_025790417.1"
    ## [161] "XP_004415448.1" "AAX63775.1"     "XP_029786256.1" "XP_005701129.2"
    ## [165] "XP_006041602.1" "KAB0345583.1"   "XP_011961657.1" "XP_010833001.1"
    ## [169] "XP_027389727.1" "XP_019811720.1" "XP_005903173.1" "XP_005228486.1"
    ## [173] "XP_020935033.1" "XP_020768965.1" "XP_028020351.1" "XP_023971279.1"
    ## [177] "XP_010966303.1" "XP_031301717.1" "XP_006194263.1" "XP_006212709.1"
    ## [181] "XP_022418360.1" "XP_030703991.1" "XP_026951598.1" "XP_007466389.1"
    ## [185] "XP_029095805.1" "XP_024599894.1" "XP_004269705.1" "XP_019781177.2"
    ## [189] "XP_004386381.1" "XP_023410960.1" "XP_004710002.1" "XP_006892457.1"
    ## [193] "XP_007951028.1" "MER0416822"     "ALJ94035.1"     "BAH02663.1"    
    ## [197] "ALJ94034.1"     "ADN93471.1"     "ABU54053.1"     "ADN93477.1"    
    ## [201] "ADN93475.1"     "XP_019522936.1" "ADN93473.1"     "XP_006911709.1"
    ## [205] "XP_011361275.1" "XP_015974412.1" "BAF50705.1"     "XP_006164754.1"
    ## [209] "MER0419121"     "XP_012887573.1" "XP_004449124.1" "ACT66266.1"    
    ## [213] "XP_014399782.1" "XP_015426919.1" "XP_023609439.1" "XP_027986092.1"
    ## [217] "ADN93476.1"     "XP_004612266.1" "MER0417759"     "XP_031814825.1"
    ## [221] "XP_027691156.1" "XP_020863153.1" "XP_007500935.1" "XP_032631197.1"
    ## [225] "XP_030407881.1" "XP_007070561.1" "XP_023964517.1" "XP_006122891.1"
    ## [229] "XP_019350687.1" "XP_025066628.1" "XP_019384826.1" "XP_019381060.1"
    ## [233] "XP_029855025.1" "XP_009816127.1" "XP_009703695.1" "XP_005231984.2"
    ## [237] "XP_005443093.2" "XP_009925641.1" "XP_010579828.1" "XP_010012481.1"
    ## [241] "XP_009954393.1" "XP_009909849.1" "XP_010120523.1" "XP_012949915.2"
    ## [245] "XP_032058386.1" "XP_013039300.1" "XP_009887331.1" "XP_021154486.1"
    ## [249] "XP_015742063.1" "XP_009563864.1" "XP_010156467.1" "XP_009574896.1"
    ## [253] "XP_005151516.2" "XP_008937519.1" "XP_010178703.1" "XP_009474590.1"
    ## [257] "XP_021240731.1" "XP_416822.2"    "XP_031451919.1" "XP_009938970.1"
    ## [261] "XP_009478920.1" "XP_010290019.1" "XP_009509070.1" "XP_010084373.1"
    ## [265] "XP_030332639.1" "XP_009978415.1" "XP_009867056.1" "XP_009638257.1"
    ## [269] "XP_010206054.1" "XP_010136813.1" "XP_009992128.1" "XP_009082150.1"
    ## [273] "XP_010169238.1" "XP_014815705.1" "XP_017583883.1" "XP_010392735.2"
    ## [277] "XP_031956594.1" "XP_032536093.1" "XP_027494818.1" "XP_027757151.1"
    ## [281] "XP_017667729.1" "XP_017939494.2" "XP_027544864.1" "XP_027593974.1"
    ## [285] "XP_005491832.2" "XP_030811385.1" "XP_005426221.1" "XP_009087922.1"
    ## [289] "XP_002194303.4" "XP_021388026.1" "XP_014731370.1" "XP_032907631.1"
    ## [293] "XP_023774184.1" "XP_015486815.1" "XP_005516712.1" "XP_005037422.1"
    ## [297] "XP_008492997.2" "XP_009275140.1" "XP_009323767.1" "XP_026705725.1"
    ## [301] "XP_032865981.1" "XP_019467554.1" "XP_025942946.1" "XP_013805736.1"
    ## [305] "XP_025976569.1" "XP_025891105.1" "XP_010217584.1" "XP_009667495.1"
    ## [309] "XP_020642422.1" "XP_008105455.1" "XP_032082934.1" "XP_013926936.1"
    ## [313] "XP_029140508.1" "XP_026530754.1" "XP_026570054.1" "XP_007431942.2"
    ## [317] "XP_029459086.1" "XP_030058174.1" "XP_002938293.2" "XP_018418558.1"
    ## [321] "XP_032888812.1" "XP_028655640.1" "MER0418721"     "XP_032835032.1"

``` r
names(A)[names(A) == "Parsed.325.sequences"]= "AccessionNumProtein"
A = merge(A, ACE2)

names(A)[names(A)=="X"]="AA30"

names(A)[names(A)=="X.1"]="AA83"

DF = read.csv("docking-results.csv")

DF$species = str_replace(DF$species, pattern = "_", replacement = " ")

DF$species=capitalize(DF$species)

names(DF)[names(DF)=="species"]="Species"
A = merge(A, DF)
#rename field to merge

write.csv(A, file = "docking_results_AA_30_83.csv")
# glm(haddock_score_mean ~ AA_30_positive, family=binomial, data=A)
```

\#\#try to source from
github

``` r
# devtools::source_url("https://github.com/HanLabDiseaseEcology/gbm/blob/master/code/gridSearch.R")
# devtools::source_url("https://raw.github.com/HanLabDiseaseEcology/gbm/blob/master/code/gridSearch.R")
##?raw=TRUE
# 
# devtools::source_url("https://github.com/fischhoff/gbm/tree/master/code/gridSearch.R")
# 
# devtools::source_url("https://github.com/fischhoff/gbm/tree/master/code/gridSearch.R?raw=TRUE")

source_https <- function(u, unlink.tmp.certs = FALSE) {
  # load package
  require(RCurl)

  # read script lines from website using a security certificate
  if(!file.exists("cacert.pem")) download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile = "cacert.pem")
  script <- getURL(u, followlocation = TRUE, cainfo = "cacert.pem")
  if(unlink.tmp.certs) unlink("cacert.pem")

  # parase lines and evealuate in the global environement
  eval(parse(text = script), envir= .GlobalEnv)
}

# source_https("https://github.com/fischhoff/gbm/tree/master/code/gridSearch.R")
# source_https("https://github.com/fischhoff/gbm/tree/master/code/gridSearch.R")
# source_https("https://raw.github.com/fischhoff/gbm/tree/master/code/gridSearch.R")
# source_https("https://raw.github.com/tonybreyal/Blog-Reference-Functions/master/R/htmlToText/htmlToText.R", unlink.tmp.certs = TRUE)
```
