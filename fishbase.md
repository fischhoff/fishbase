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

    ## ── Attaching packages ──────────────────────────────────────────────────────────────────────────────── tidyverse 1.3.0 ──

    ## ✓ tibble  3.0.1     ✓ purrr   0.3.4
    ## ✓ readr   1.3.1     ✓ forcats 0.5.0

    ## ── Conflicts ─────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
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
    ## [21] "BrainWeight"  "Number"       "TS"           "Locality"     "TS"          
    ## [1] "kept fields"
    ## [1] "Species"    "LifeStage"  "BodyWeight" "EncCoeff"   "EncIndex"  
    ## [6] "SL"         "TL"        
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
    ## [1] "LastModified" "SpecCode"     "Comment_r"    "LastModified" "SpecCode"    
    ## [6] "Method_ab"    "nCells"       "LengthType"  
    ## [1] "kept fields"
    ##  [1] "Species"           "MaxLengthTL"       "TLObserved"       
    ##  [4] "Troph"             "seTroph"           "TrophObserved"    
    ##  [7] "TrophPredicted"    "seTrophPredicted"  "a"                
    ## [10] "sd_log10a"         "b"                 "sd_b"             
    ## [13] "prior_r"           "lcl_r"             "ucl_r"            
    ## [16] "n_r"               "K"                 "SD_logK"          
    ## [19] "Linf"              "SD_logLinf"        "Winf"             
    ## [22] "ComDepthMin"       "ComDepthMax"       "ComDepMinObserved"
    ## [25] "ComDepMaxObserved" "DepthMin"          "DepthMax"         
    ## [28] "DepthMinEstimate"  "DepthMaxEstimate"  "PredPreyRatioMin" 
    ## [31] "PredPreyRatioMax"  "AgeMin"            "AgeMax"           
    ## [34] "TempPrefMin"       "TempPrefMean"      "TempPrefMax"      
    ## [37] "MaxLengthSL"       "KObserved"        
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

    ##                         Species   BodyWeight_brains  EncCoeff_brains 
    ##  Acanthochromis polyacanthus: 1   Min.   :   0.167   Min.   : 0.771  
    ##  Amblyraja radiata          : 1   1st Qu.:   8.719   1st Qu.: 1.734  
    ##  Amphiprion ocellaris       : 1   Median :  95.750   Median : 2.447  
    ##  Anabas testudineus         : 1   Mean   : 662.366   Mean   : 6.650  
    ##  Anarrhichthys ocellatus    : 1   3rd Qu.: 601.768   3rd Qu.: 7.425  
    ##  Archocentrus centrarchus   : 1   Max.   :4353.598   Max.   :27.139  
    ##  (Other)                    :66   NA's   :50         NA's   :50      
    ##  EncIndex_brains    SL_brains        TL_brains     record_count_species_brains
    ##  Min.   : 18.50   Min.   : 3.212   Min.   : 9.70   Min.   :  1.000            
    ##  1st Qu.: 30.75   1st Qu.: 7.796   1st Qu.:18.68   1st Qu.:  1.000            
    ##  Median : 40.50   Median :17.568   Median :22.60   Median :  1.000            
    ##  Mean   : 56.26   Mean   :20.233   Mean   :28.20   Mean   :  7.569            
    ##  3rd Qu.: 73.66   3rd Qu.:21.208   3rd Qu.:27.13   3rd Qu.:  2.000            
    ##  Max.   :126.00   Max.   :63.500   Max.   :73.50   Max.   :323.000            
    ##  NA's   :65       NA's   :64       NA's   :65                                 
    ##    range_area        SupraLittoralZone_ecology Saltmarshes_ecology
    ##  Min.   :  2995431   Min.   :0.00000           Min.   :0.00000    
    ##  1st Qu.: 29715144   1st Qu.:0.00000           1st Qu.:0.00000    
    ##  Median : 53640249   Median :0.00000           Median :0.00000    
    ##  Mean   : 81545386   Mean   :0.01639           Mean   :0.01639    
    ##  3rd Qu.:117983522   3rd Qu.:0.00000           3rd Qu.:0.00000    
    ##  Max.   :379087532   Max.   :1.00000           Max.   :1.00000    
    ##                      NA's   :11                NA's   :11         
    ##  LittoralZone_ecology Caves_ecology     Oceanic_ecology  Epipelagic_ecology
    ##  Min.   :0.00000      Min.   :0.00000   Min.   :0.0000   Min.   :0.00000   
    ##  1st Qu.:0.00000      1st Qu.:0.00000   1st Qu.:0.0000   1st Qu.:0.00000   
    ##  Median :0.00000      Median :0.00000   Median :0.0000   Median :0.00000   
    ##  Mean   :0.01639      Mean   :0.01639   Mean   :0.3443   Mean   :0.09836   
    ##  3rd Qu.:0.00000      3rd Qu.:0.00000   3rd Qu.:1.0000   3rd Qu.:0.00000   
    ##  Max.   :1.00000      Max.   :1.00000   Max.   :1.0000   Max.   :1.00000   
    ##  NA's   :11           NA's   :11        NA's   :11       NA's   :11        
    ##  Mesopelagic_ecology Mangroves_ecology MarshesSwamps_ecology  Cave_ecology    
    ##  Min.   :0.00000     Min.   :0.00000   Min.   :0.00000       Min.   :0.00000  
    ##  1st Qu.:0.00000     1st Qu.:0.00000   1st Qu.:0.00000       1st Qu.:0.00000  
    ##  Median :0.00000     Median :0.00000   Median :0.00000       Median :0.00000  
    ##  Mean   :0.01639     Mean   :0.08197   Mean   :0.08197       Mean   :0.03279  
    ##  3rd Qu.:0.00000     3rd Qu.:0.00000   3rd Qu.:0.00000       3rd Qu.:0.00000  
    ##  Max.   :1.00000     Max.   :1.00000   Max.   :1.00000       Max.   :1.00000  
    ##  NA's   :11          NA's   :11        NA's   :11            NA's   :11       
    ##  Solitary_ecology  Shoaling_ecology  Benthic_ecology   Mobile_ecology   
    ##  Min.   :0.00000   Min.   :0.00000   Min.   :0.00000   Min.   :0.00000  
    ##  1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000  
    ##  Median :0.00000   Median :0.00000   Median :0.00000   Median :0.00000  
    ##  Mean   :0.01639   Mean   :0.01639   Mean   :0.01639   Mean   :0.01639  
    ##  3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000  
    ##  Max.   :1.00000   Max.   :1.00000   Max.   :1.00000   Max.   :1.00000  
    ##  NA's   :11        NA's   :11        NA's   :11        NA's   :11       
    ##  SoftBottom_ecology  Sand_ecology      Mud_ecology      HardBottom_ecology
    ##  Min.   :0.0000     Min.   :0.00000   Min.   :0.00000   Min.   :0.00000   
    ##  1st Qu.:0.0000     1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000   
    ##  Median :0.0000     Median :0.00000   Median :0.00000   Median :0.00000   
    ##  Mean   :0.1803     Mean   :0.06557   Mean   :0.06557   Mean   :0.09836   
    ##  3rd Qu.:0.0000     3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000   
    ##  Max.   :1.0000     Max.   :1.00000   Max.   :1.00000   Max.   :1.00000   
    ##  NA's   :11         NA's   :11        NA's   :11        NA's   :11        
    ##  Rocky_ecology    Rubble_ecology    Macrophyte_ecology SeaGrassBeds_ecology
    ##  Min.   :0.0000   Min.   :0.00000   Min.   :0.00000    Min.   :0.00000     
    ##  1st Qu.:0.0000   1st Qu.:0.00000   1st Qu.:0.00000    1st Qu.:0.00000     
    ##  Median :0.0000   Median :0.00000   Median :0.00000    Median :0.00000     
    ##  Mean   :0.1311   Mean   :0.01639   Mean   :0.01639    Mean   :0.09836     
    ##  3rd Qu.:0.0000   3rd Qu.:0.00000   3rd Qu.:0.00000    3rd Qu.:0.00000     
    ##  Max.   :1.0000   Max.   :1.00000   Max.   :1.00000    Max.   :1.00000     
    ##  NA's   :11       NA's   :11        NA's   :11         NA's   :11          
    ##  CoralReefs_ecology ReefFlats_ecology Lagoons_ecology   Burrows_ecology  
    ##  Min.   :0.0000     Min.   :0.00000   Min.   :0.00000   Min.   :0.00000  
    ##  1st Qu.:0.0000     1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000  
    ##  Median :0.0000     Median :0.00000   Median :0.00000   Median :0.00000  
    ##  Mean   :0.1967     Mean   :0.01639   Mean   :0.01639   Mean   :0.03279  
    ##  3rd Qu.:0.0000     3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000  
    ##  Max.   :1.0000     Max.   :1.00000   Max.   :1.00000   Max.   :1.00000  
    ##  NA's   :11         NA's   :11        NA's   :11        NA's   :11       
    ##  Vegetation_ecology Stems_ecology     Neritic_ecology  Intertidal_ecology
    ##  Min.   :0.00000    Min.   :0.00000   Min.   :0.0000   Min.   :0.0000    
    ##  1st Qu.:0.00000    1st Qu.:0.00000   1st Qu.:0.0000   1st Qu.:0.0000    
    ##  Median :0.00000    Median :0.00000   Median :0.0000   Median :0.0000    
    ##  Mean   :0.04918    Mean   :0.01639   Mean   :0.1905   Mean   :0.1587    
    ##  3rd Qu.:0.00000    3rd Qu.:0.00000   3rd Qu.:0.0000   3rd Qu.:0.0000    
    ##  Max.   :1.00000    Max.   :1.00000   Max.   :1.0000   Max.   :1.0000    
    ##  NA's   :11         NA's   :11        NA's   :9        NA's   :9         
    ##  Hadopelagic_ecology Estuaries_ecology Stream_ecology   Lakes_ecology  
    ##  Min.   :0.00000     Min.   :0.0000    Min.   :0.0000   Min.   :0.000  
    ##  1st Qu.:0.00000     1st Qu.:0.0000    1st Qu.:0.0000   1st Qu.:0.000  
    ##  Median :0.00000     Median :0.0000    Median :0.0000   Median :0.000  
    ##  Mean   :0.01587     Mean   :0.3968    Mean   :0.4921   Mean   :0.381  
    ##  3rd Qu.:0.00000     3rd Qu.:1.0000    3rd Qu.:1.0000   3rd Qu.:1.000  
    ##  Max.   :1.00000     Max.   :1.0000    Max.   :1.0000   Max.   :1.000  
    ##  NA's   :9           NA's   :9         NA's   :9        NA's   :9      
    ##  Schooling_ecology TidePools_ecology SubLittoral_ecology Bathypelagic_ecology
    ##  Min.   :0.00000   Min.   :0         Min.   :0           Min.   :0           
    ##  1st Qu.:0.00000   1st Qu.:0         1st Qu.:0           1st Qu.:0           
    ##  Median :0.00000   Median :0         Median :0           Median :0           
    ##  Mean   :0.04762   Mean   :0         Mean   :0           Mean   :0           
    ##  3rd Qu.:0.00000   3rd Qu.:0         3rd Qu.:0           3rd Qu.:0           
    ##  Max.   :1.00000   Max.   :0         Max.   :0           Max.   :0           
    ##  NA's   :9         NA's   :9         NA's   :9           NA's   :9           
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
    ##  record_count_species_distribution MaxLengthTL_estimate TLObserved_estimate
    ##  Min.   : 1.00                     Min.   :  4.00       Min.   :0          
    ##  1st Qu.: 1.00                     1st Qu.: 11.00       1st Qu.:0          
    ##  Median : 2.00                     Median : 29.75       Median :0          
    ##  Mean   : 4.75                     Mean   : 62.65       Mean   :0          
    ##  3rd Qu.: 5.00                     3rd Qu.: 93.25       3rd Qu.:0          
    ##  Max.   :42.00                     Max.   :305.00       Max.   :0          
    ##                                                                            
    ##  Troph_estimate  seTroph_estimate TrophObserved_estimate   a_estimate       
    ##  Min.   :2.000   Min.   :0.0000   Min.   :0              Min.   :0.0006457  
    ##  1st Qu.:2.890   1st Qu.:0.2097   1st Qu.:0              1st Qu.:0.0057544  
    ##  Median :3.240   Median :0.3550   Median :0              Median :0.0093325  
    ##  Mean   :3.255   Mean   :0.3413   Mean   :0              Mean   :0.0104698  
    ##  3rd Qu.:3.705   3rd Qu.:0.4500   3rd Qu.:0              3rd Qu.:0.0144544  
    ##  Max.   :4.660   Max.   :0.7800   Max.   :0              Max.   :0.0275423  
    ##                                                          NA's   :3          
    ##  sd_log10a_estimate   b_estimate    sd_b_estimate     prior_r_estimate
    ##  Min.   :0.0247     Min.   :2.830   Min.   :0.01530   Min.   :0.2822  
    ##  1st Qu.:0.0929     1st Qu.:2.990   1st Qu.:0.06270   1st Qu.:0.2937  
    ##  Median :0.1260     Median :3.040   Median :0.08140   Median :0.4869  
    ##  Mean   :0.1280     Mean   :3.043   Mean   :0.07364   Mean   :0.4467  
    ##  3rd Qu.:0.1730     3rd Qu.:3.100   3rd Qu.:0.09310   3rd Qu.:0.5695  
    ##  Max.   :0.2160     Max.   :3.210   Max.   :0.11800   Max.   :0.5914  
    ##  NA's   :3          NA's   :3       NA's   :3         NA's   :64      
    ##  lcl_r_estimate   ucl_r_estimate    n_r_estimate     K_estimate    
    ##  Min.   :0.1635   Min.   :0.4462   Min.   : 1.00   Min.   :0.0600  
    ##  1st Qu.:0.1881   1st Qu.:0.4874   1st Qu.: 3.75   1st Qu.:0.1850  
    ##  Median :0.3213   Median :0.7303   Median : 6.00   Median :0.4450  
    ##  Mean   :0.2891   Mean   :0.6861   Mean   :15.12   Mean   :0.6026  
    ##  3rd Qu.:0.3759   3rd Qu.:0.8542   3rd Qu.:19.75   3rd Qu.:0.7400  
    ##  Max.   :0.3903   Max.   :0.8871   Max.   :48.00   Max.   :2.5700  
    ##  NA's   :64       NA's   :64       NA's   :64      NA's   :10      
    ##  Winf_estimate     ComDepthMin_estimate ComDepthMax_estimate
    ##  Min.   :    0.7   Min.   :  0.00       Min.   :  3.00      
    ##  1st Qu.:  609.0   1st Qu.:  2.00       1st Qu.: 15.00      
    ##  Median : 2242.5   Median :  6.00       Median : 26.00      
    ##  Mean   :10136.1   Mean   : 17.52       Mean   : 70.97      
    ##  3rd Qu.: 8416.5   3rd Qu.: 18.00       3rd Qu.: 89.25      
    ##  Max.   :60447.4   Max.   :150.00       Max.   :440.00      
    ##  NA's   :46        NA's   :39           NA's   :38          
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
    ##  TempPrefMax_estimate MaxLengthSL_estimate KObserved_estimate
    ##  Min.   : 2.40        Min.   :  3.280      Min.   :0         
    ##  1st Qu.:13.50        1st Qu.:  8.815      1st Qu.:0         
    ##  Median :23.70        Median : 24.135      Median :0         
    ##  Mean   :21.27        Mean   : 52.217      Mean   :0         
    ##  3rd Qu.:28.95        3rd Qu.: 78.885      3rd Qu.:0         
    ##  Max.   :29.30        Max.   :250.000      Max.   :0         
    ##  NA's   :45                                                  
    ##  record_count_species_estimate
    ##  Min.   :1                    
    ##  1st Qu.:1                    
    ##  Median :1                    
    ##  Mean   :1                    
    ##  3rd Qu.:1                    
    ##  Max.   :1                    
    ## 

``` r
names(out)[str_which(names(out),table_name)]
```

    ##  [1] "MaxLengthTL_estimate"          "TLObserved_estimate"          
    ##  [3] "Troph_estimate"                "seTroph_estimate"             
    ##  [5] "TrophObserved_estimate"        "a_estimate"                   
    ##  [7] "sd_log10a_estimate"            "b_estimate"                   
    ##  [9] "sd_b_estimate"                 "prior_r_estimate"             
    ## [11] "lcl_r_estimate"                "ucl_r_estimate"               
    ## [13] "n_r_estimate"                  "K_estimate"                   
    ## [15] "Winf_estimate"                 "ComDepthMin_estimate"         
    ## [17] "ComDepthMax_estimate"          "ComDepMinObserved_estimate"   
    ## [19] "ComDepMaxObserved_estimate"    "DepthMin_estimate"            
    ## [21] "DepthMax_estimate"             "DepthMinEstimate_estimate"    
    ## [23] "DepthMaxEstimate_estimate"     "PredPreyRatioMin_estimate"    
    ## [25] "PredPreyRatioMax_estimate"     "AgeMin_estimate"              
    ## [27] "AgeMax_estimate"               "TempPrefMin_estimate"         
    ## [29] "TempPrefMean_estimate"         "TempPrefMax_estimate"         
    ## [31] "MaxLengthSL_estimate"          "KObserved_estimate"           
    ## [33] "record_count_species_estimate"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  MaxLengthTL_estimate TLObserved_estimate Troph_estimate  seTroph_estimate
    ##  Min.   :  4.00       Min.   :0           Min.   :2.000   Min.   :0.0000  
    ##  1st Qu.: 11.00       1st Qu.:0           1st Qu.:2.890   1st Qu.:0.2097  
    ##  Median : 29.75       Median :0           Median :3.240   Median :0.3550  
    ##  Mean   : 62.65       Mean   :0           Mean   :3.255   Mean   :0.3413  
    ##  3rd Qu.: 93.25       3rd Qu.:0           3rd Qu.:3.705   3rd Qu.:0.4500  
    ##  Max.   :305.00       Max.   :0           Max.   :4.660   Max.   :0.7800  
    ##                                                                           
    ##  TrophObserved_estimate   a_estimate        sd_log10a_estimate   b_estimate   
    ##  Min.   :0              Min.   :0.0006457   Min.   :0.0247     Min.   :2.830  
    ##  1st Qu.:0              1st Qu.:0.0057544   1st Qu.:0.0929     1st Qu.:2.990  
    ##  Median :0              Median :0.0093325   Median :0.1260     Median :3.040  
    ##  Mean   :0              Mean   :0.0104698   Mean   :0.1280     Mean   :3.043  
    ##  3rd Qu.:0              3rd Qu.:0.0144544   3rd Qu.:0.1730     3rd Qu.:3.100  
    ##  Max.   :0              Max.   :0.0275423   Max.   :0.2160     Max.   :3.210  
    ##                         NA's   :3           NA's   :3          NA's   :3      
    ##  sd_b_estimate     prior_r_estimate lcl_r_estimate   ucl_r_estimate  
    ##  Min.   :0.01530   Min.   :0.2822   Min.   :0.1635   Min.   :0.4462  
    ##  1st Qu.:0.06270   1st Qu.:0.2937   1st Qu.:0.1881   1st Qu.:0.4874  
    ##  Median :0.08140   Median :0.4869   Median :0.3213   Median :0.7303  
    ##  Mean   :0.07364   Mean   :0.4467   Mean   :0.2891   Mean   :0.6861  
    ##  3rd Qu.:0.09310   3rd Qu.:0.5695   3rd Qu.:0.3759   3rd Qu.:0.8542  
    ##  Max.   :0.11800   Max.   :0.5914   Max.   :0.3903   Max.   :0.8871  
    ##  NA's   :3         NA's   :64       NA's   :64       NA's   :64      
    ##   n_r_estimate     K_estimate     Winf_estimate     ComDepthMin_estimate
    ##  Min.   : 1.00   Min.   :0.0600   Min.   :    0.7   Min.   :  0.00      
    ##  1st Qu.: 3.75   1st Qu.:0.1850   1st Qu.:  609.0   1st Qu.:  2.00      
    ##  Median : 6.00   Median :0.4450   Median : 2242.5   Median :  6.00      
    ##  Mean   :15.12   Mean   :0.6026   Mean   :10136.1   Mean   : 17.52      
    ##  3rd Qu.:19.75   3rd Qu.:0.7400   3rd Qu.: 8416.5   3rd Qu.: 18.00      
    ##  Max.   :48.00   Max.   :2.5700   Max.   :60447.4   Max.   :150.00      
    ##  NA's   :64      NA's   :10       NA's   :46        NA's   :39          
    ##  ComDepthMax_estimate ComDepMinObserved_estimate ComDepMaxObserved_estimate
    ##  Min.   :  3.00       Min.   :0                  Min.   :0                 
    ##  1st Qu.: 15.00       1st Qu.:0                  1st Qu.:0                 
    ##  Median : 26.00       Median :0                  Median :0                 
    ##  Mean   : 70.97       Mean   :0                  Mean   :0                 
    ##  3rd Qu.: 89.25       3rd Qu.:0                  3rd Qu.:0                 
    ##  Max.   :440.00       Max.   :0                  Max.   :0                 
    ##  NA's   :38                                                                
    ##  DepthMin_estimate DepthMax_estimate DepthMinEstimate_estimate
    ##  Min.   : 0.000    Min.   :   4      Min.   :0                
    ##  1st Qu.: 0.000    1st Qu.:  30      1st Qu.:0                
    ##  Median : 1.000    Median :  50      Median :0                
    ##  Mean   : 2.048    Mean   : 181      Mean   :0                
    ##  3rd Qu.: 1.000    3rd Qu.: 200      3rd Qu.:0                
    ##  Max.   :15.000    Max.   :1540      Max.   :0                
    ##  NA's   :30        NA's   :38                                 
    ##  DepthMaxEstimate_estimate PredPreyRatioMin_estimate PredPreyRatioMax_estimate
    ##  Min.   :0                 Min.   :  1.920           Min.   :   3.819         
    ##  1st Qu.:0                 1st Qu.:  4.602           1st Qu.: 106.813         
    ##  Median :0                 Median :  7.065           Median : 430.254         
    ##  Mean   :0                 Mean   : 18.581           Mean   :1210.586         
    ##  3rd Qu.:0                 3rd Qu.: 11.004           3rd Qu.:1000.514         
    ##  Max.   :0                 Max.   :143.670           Max.   :7174.060         
    ##                                                                               
    ##  AgeMin_estimate   AgeMax_estimate  TempPrefMin_estimate TempPrefMean_estimate
    ##  Min.   :0.01751   Min.   : 0.220   Min.   :-1.70        Min.   :-0.60        
    ##  1st Qu.:0.46518   1st Qu.: 4.985   1st Qu.: 6.45        1st Qu.: 9.15        
    ##  Median :1.03007   Median :12.400   Median :13.50        Median :19.00        
    ##  Mean   :1.08635   Mean   :14.534   Mean   :13.58        Mean   :18.02        
    ##  3rd Qu.:1.39662   3rd Qu.:25.000   3rd Qu.:22.50        3rd Qu.:27.50        
    ##  Max.   :3.49000   Max.   :41.000   Max.   :28.30        Max.   :28.80        
    ##  NA's   :40        NA's   :45       NA's   :45           NA's   :45           
    ##  TempPrefMax_estimate MaxLengthSL_estimate KObserved_estimate
    ##  Min.   : 2.40        Min.   :  3.280      Min.   :0         
    ##  1st Qu.:13.50        1st Qu.:  8.815      1st Qu.:0         
    ##  Median :23.70        Median : 24.135      Median :0         
    ##  Mean   :21.27        Mean   : 52.217      Mean   :0         
    ##  3rd Qu.:28.95        3rd Qu.: 78.885      3rd Qu.:0         
    ##  Max.   :29.30        Max.   :250.000      Max.   :0         
    ##  NA's   :45                                                  
    ##  record_count_species_estimate
    ##  Min.   :1                    
    ##  1st Qu.:1                    
    ##  Median :1                    
    ##  Mean   :1                    
    ##  3rd Qu.:1                    
    ##  Max.   :1                    
    ## 

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
    ## [25] "r2"                "Number"            "Locality"         
    ## [28] "FecundityType"     "LengthTypeFecMin"  "LengthTypeFecMax" 
    ## [31] "LengthTypeFecMean" "FecundityType"     "LengthType"       
    ## [1] "kept fields"
    ##  [1] "Species"          "FecundityMin"     "WeightMin"        "LengthFecunMin"  
    ##  [5] "FecundityMax"     "WeightMax"        "LengthFecunMax"   "FecundityMean"   
    ##  [9] "WeightMean"       "LengthFecunMean"  "RelFecundityMin"  "RelFecundityMean"
    ## [13] "RelFecundityMax"  "LengthMin"        "LengthMax"        "a"               
    ## [17] "b"                "SEa"              "SEb"              "SDa"             
    ## [21] "SDb"              "LCLa"             "UCLa"             "LCLb"            
    ## [25] "UCLb"             "SpawningCycles"  
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
    ##  [3] "LengthFecunMin_fecundity"       "FecundityMax_fecundity"        
    ##  [5] "WeightMax_fecundity"            "LengthFecunMax_fecundity"      
    ##  [7] "FecundityMean_fecundity"        "RelFecundityMin_fecundity"     
    ##  [9] "RelFecundityMean_fecundity"     "RelFecundityMax_fecundity"     
    ## [11] "LengthMin_fecundity"            "LengthMax_fecundity"           
    ## [13] "a_fecundity"                    "b_fecundity"                   
    ## [15] "SEa_fecundity"                  "SEb_fecundity"                 
    ## [17] "LCLa_fecundity"                 "UCLa_fecundity"                
    ## [19] "LCLb_fecundity"                 "UCLb_fecundity"                
    ## [21] "SpawningCycles_fecundity"       "record_count_species_fecundity"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  FecundityMin_fecundity WeightMin_fecundity LengthFecunMin_fecundity
    ##  Min.   :       7       Min.   :    42.38   Min.   : 10.50          
    ##  1st Qu.:     200       1st Qu.:   575.46   1st Qu.: 15.27          
    ##  Median :     600       Median :  2350.91   Median : 28.00          
    ##  Mean   :  842575       Mean   : 18320.44   Mean   : 35.68          
    ##  3rd Qu.:   17000       3rd Qu.:  3933.85   3rd Qu.: 45.36          
    ##  Max.   :15300000       Max.   :100733.33   Max.   :102.00          
    ##  NA's   :39             NA's   :66          NA's   :62              
    ##  FecundityMax_fecundity WeightMax_fecundity LengthFecunMax_fecundity
    ##  Min.   :      20       Min.   :  165       Min.   : 12.40          
    ##  1st Qu.:     360       1st Qu.:  500       1st Qu.: 25.14          
    ##  Median :    2673       Median : 3548       Median : 41.59          
    ##  Mean   : 3134143       Mean   : 4720       Mean   : 54.05          
    ##  3rd Qu.:   81251       3rd Qu.: 4383       3rd Qu.: 69.99          
    ##  Max.   :47700000       Max.   :15003       Max.   :157.00          
    ##  NA's   :42             NA's   :67          NA's   :62              
    ##  FecundityMean_fecundity RelFecundityMin_fecundity RelFecundityMean_fecundity
    ##  Min.   :458             Min.   :   2.00           Min.   : 23.0             
    ##  1st Qu.:458             1st Qu.:  17.75           1st Qu.:193.1             
    ##  Median :458             Median : 229.68           Median :415.9             
    ##  Mean   :458             Mean   : 454.12           Mean   :388.4             
    ##  3rd Qu.:458             3rd Qu.: 591.81           3rd Qu.:611.2             
    ##  Max.   :458             Max.   :1690.89           Max.   :699.0             
    ##  NA's   :71              NA's   :64                NA's   :68                
    ##  RelFecundityMax_fecundity LengthMin_fecundity LengthMax_fecundity
    ##  Min.   :  13.0            Min.   : 4.50       Min.   : 12.80     
    ##  1st Qu.: 412.2            1st Qu.:10.60       1st Qu.: 18.20     
    ##  Median : 793.7            Median :16.70       Median : 37.80     
    ##  Mean   :1424.5            Mean   :21.74       Mean   : 45.47     
    ##  3rd Qu.:1408.1            3rd Qu.:31.40       3rd Qu.: 60.40     
    ##  Max.   :5048.7            Max.   :44.55       Max.   :105.36     
    ##  NA's   :66                NA's   :63          NA's   :63         
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
#"Length1"
T = length_weight()

length(which(is.na(T$Type)))#mostly this is empty
```

    ## [1] 30179

``` r
table(T$LmaxCompare)
```

    ## 
    ##  no  No yes Yes 
    ## 163  32 196 137

``` r
table(T$Type)
```

    ## 
    ##    AF    CM    CO    FL    LP    ND    NG    OT    PC    SL    TL    WD 
    ##     2     1     2  2484     1     6    11   100     1  2733 10500    62

``` r
#see what's in this table
T = length_length()
table(T$Length1)#different types of length measures
```

    ## 
    ##    FL Other    SL    TL    WD 
    ##  3013   128  7656 14134     3

``` r
table(T$Length2)#different types of length measures
```

    ## 
    ##    FL Other    SL    TL    WD 
    ##  9127    37  7953  7803    14

``` r
#can't tell which length type is being measured

table(T$Type)#mostly this is empty
```

    ## 
    ##    FL other Other    SL    TL 
    ##    41     6     3   176  2421

``` r
rm(table_out)
T = length_weight()

#can't take out these rows because it will remove species we need
# ok = NULL
# ok = c(ok, which(is.na(T$Type)))#assume if it's empty it's standard
# ok = c(ok, which(T$Type == "SL"))
# T = T[ok,]

ok = NULL
ok = c(ok, which(is.na(T$Type)))#assume if it's empty it's standard
ok = c(ok, which(T$Type == "SL"))
T$LengthMax[-ok]=NA
T$LengthMin[-ok]=NA

table_name = "length_weight"

load("DF.Rdata")

load("process_table.Rdata")
load("sum_or_mean.Rdata")
load("keep_real_binary.Rdata")
load("non_biological.Rdata")
table_out = process_table(T = T, DF = DF,exclude = non_biological, threshold_frac= 0,table_name = table_name, part = "part")
```

    ## [1] "removed fields"
    ##  [1] "SpecCode"     "StockCode"    "PopLWRef"     "DataRef"      "Entered"     
    ##  [6] "DateEntered"  "Expert"       "Comment"      "Modified"     "DateModified"
    ## [11] "DateChecked"  "SpecCode"     "StockCode"    "FamCode"      "C_Code"      
    ## [16] "Sex"          "Locality"     "AutoCtr"      "LmaxCompare"  "EsQ"         
    ## [21] "Number"       "FamCode"      "TS"           "Locality"     "Method"      
    ## [26] "DataRef"      "Type"         "SpecimenType" "TS"          
    ## [1] "kept fields"
    ##  [1] "Species"            "LengthMin"          "LengthMax"         
    ##  [4] "a"                  "aTL"                "b"                 
    ##  [7] "CoeffDetermination" "SEa"                "SEb"               
    ## [10] "SDa"                "SDb"                "LCLa"              
    ## [13] "UCLa"               "LCLb"               "UCLb"              
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

    ##  [1] "LengthMin_length_weight"            "LengthMax_length_weight"           
    ##  [3] "a_length_weight"                    "aTL_length_weight"                 
    ##  [5] "b_length_weight"                    "CoeffDetermination_length_weight"  
    ##  [7] "SEa_length_weight"                  "SEb_length_weight"                 
    ##  [9] "SDa_length_weight"                  "LCLa_length_weight"                
    ## [11] "UCLa_length_weight"                 "LCLb_length_weight"                
    ## [13] "UCLb_length_weight"                 "record_count_species_length_weight"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  LengthMin_length_weight LengthMax_length_weight a_length_weight   
    ##  Min.   : 0.900          Min.   :  3.500         Min.   :0.000425  
    ##  1st Qu.: 3.450          1st Qu.:  9.275         1st Qu.:0.008837  
    ##  Median : 6.917          Median : 17.673         Median :0.018150  
    ##  Mean   :10.078          Mean   : 26.537         Mean   :0.018959  
    ##  3rd Qu.:14.583          3rd Qu.: 26.750         3rd Qu.:0.026135  
    ##  Max.   :43.500          Max.   :121.000         Max.   :0.053933  
    ##  NA's   :52              NA's   :52              NA's   :24        
    ##  aTL_length_weight b_length_weight CoeffDetermination_length_weight
    ##  Min.   :0.00025   Min.   :2.530   Min.   :0.8100                  
    ##  1st Qu.:0.00632   1st Qu.:2.890   1st Qu.:0.9287                  
    ##  Median :0.01350   Median :3.010   Median :0.9559                  
    ##  Mean   :0.01552   Mean   :3.006   Mean   :0.9431                  
    ##  3rd Qu.:0.02380   3rd Qu.:3.090   3rd Qu.:0.9747                  
    ##  Max.   :0.04055   Max.   :3.388   Max.   :0.9960                  
    ##  NA's   :45        NA's   :24      NA's   :30                      
    ##  SEa_length_weight SEb_length_weight SDa_length_weight LCLa_length_weight
    ##  Min.   :0.00100   Min.   :0.0110    Min.   :0.04400   Min.   :0.00100   
    ##  1st Qu.:0.00500   1st Qu.:0.0540    1st Qu.:0.04658   1st Qu.:0.00653   
    ##  Median :0.03533   Median :0.0920    Median :0.04917   Median :0.01070   
    ##  Mean   :0.08190   Mean   :0.1141    Mean   :0.04917   Mean   :0.01346   
    ##  3rd Qu.:0.13300   3rd Qu.:0.1650    3rd Qu.:0.05175   3rd Qu.:0.01617   
    ##  Max.   :0.26100   Max.   :0.2600    Max.   :0.05433   Max.   :0.05090   
    ##  NA's   :65        NA's   :59        NA's   :70        NA's   :42        
    ##  UCLa_length_weight LCLb_length_weight UCLb_length_weight
    ##  Min.   :0.00279    Min.   :2.344      Min.   :2.855     
    ##  1st Qu.:0.01834    1st Qu.:2.714      1st Qu.:3.107     
    ##  Median :0.02747    Median :2.835      Median :3.152     
    ##  Mean   :0.03543    Mean   :2.856      Mean   :3.208     
    ##  3rd Qu.:0.03530    3rd Qu.:2.969      3rd Qu.:3.292     
    ##  Max.   :0.16600    Max.   :3.326      Max.   :3.760     
    ##  NA's   :42         NA's   :42         NA's   :42        
    ##  record_count_species_length_weight
    ##  Min.   :  1.000                   
    ##  1st Qu.:  1.000                   
    ##  Median :  2.000                   
    ##  Mean   :  7.708                   
    ##  3rd Qu.:  5.000                   
    ##  Max.   :113.000                   
    ## 

``` r
save(out, file = "out.Rdata")

save(out, file = paste0("out", "_", table_name, ".Rdata"))
```

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
    ##  [1] "SpecCode"            "autoctr"             "StockCode"          
    ##  [4] "MorphDatRefNo"       "OtherRef1"           "OtherRef2"          
    ##  [7] "RemarkSex"           "SimilarSpec1Remarks" "SimilarSpec2Remarks"
    ## [10] "Entered"             "DateEntered"         "Expert"             
    ## [13] "CommentonTeeth"      "Modified"            "DateModified"       
    ## [16] "DateChecked"         "SpecCode"            "StockCode"          
    ## [19] "SexualAttributes"    "SexMorphology"       "SexColors"          
    ## [22] "RemarkSex"           "MandibleTeethT2"     "MaxillaTeethT2"     
    ## [25] "VomerineTeethT2"     "PalatineTeethT2"     "PharyngealTeethT2"  
    ## [28] "Pspines2"            "VPosition2"          "SimilarSpecies2"    
    ## [31] "SimilarSpec2Remarks" "OtherRef2"           "BodyShapeII"        
    ## [34] "HorStripesTTII"      "VerStripesTTII"      "VerStripesTTIII"    
    ## [37] "DiaStripesTTII"      "DiaStripesTTIII"     "CurStripesTTII"     
    ## [40] "CurStripesTTIII"     "SpotsTTII"           "SpotsTTIII"         
    ## [43] "DorsalFinII"         "CaudalFinII"         "AnalFinII"          
    ## [46] "VerStripesTTIII"     "DiaStripesTTIII"     "CurStripesTTIII"    
    ## [49] "SpotsTTIII"          "LateralLinesNo"      "ScalesLateralmin"   
    ## [52] "ScalesLateralmax"    "LatSeriesMin"        "LatSeriesMax"       
    ## [55] "TS"                  "AppearancePic"       "VomerineTeethT1"    
    ## [58] "VomerineTeethT2"     "PalatineTeethT1"     "PharyngealTeethT2"  
    ## [61] "PalatineTeethT2"     "HorStripesTTII"      "VerStripesTTII"     
    ## [64] "VerStripesTTIII"     "VerStripesTTIII"     "DiaStripesTTII"     
    ## [67] "DiaStripesTTIII"     "DiaStripesTTIII"     "CurStripesTTII"     
    ## [70] "CurStripesTTIII"     "CurStripesTTIII"     "SpotsTTII"          
    ## [73] "SpotsTTIII"          "SpotsTTIII"          "DorsalFinII"        
    ## [76] "CaudalFinII"         "AnalFinII"           "EaseofID"           
    ## [79] "AddChars"            "TypeofMouth"         "PharyngealTeethT1"  
    ## [82] "Lipsteeth"           "DermalTeeth"         "MandibleTeethT2"    
    ## [85] "MaxillaTeethT2"      "DermalTeeth"         "BarbelsType"        
    ## [88] "Vertebrae"           "VertebraePreanMin"   "VertebraePreanMax"  
    ## [91] "VertebraeTotalMin"   "VertebraeTotalMax"   "SimilarSpecies1"    
    ## [94] "SimilarSpecies2"     "TypeofEyes"          "TypeofMouth"        
    ## [97] "TypeofScales"        "BarbelsType"         "TS"                 
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
    ## [82] "StandardLengthCm"   "Forklength"         "Totallength"       
    ## [85] "HeadLength"         "PreDorsalLength"    "PrePelvicsLength"  
    ## [88] "PreAnalLength"      "PostHeadDepth"      "PostTrunkDepth"    
    ## [91] "MaximumDepth"       "PeduncleDepth"      "PeduncleLength"    
    ## [94] "CaudalHeight"       "PreorbitalLength"   "EyeLength"         
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
    ##  [48] "HeadLength_morphology"                                            
    ##  [49] "PreDorsalLength_morphology"                                       
    ##  [50] "PrePelvicsLength_morphology"                                      
    ##  [51] "PreAnalLength_morphology"                                         
    ##  [52] "PostHeadDepth_morphology"                                         
    ##  [53] "PostTrunkDepth_morphology"                                        
    ##  [54] "MaximumDepth_morphology"                                          
    ##  [55] "PeduncleDepth_morphology"                                         
    ##  [56] "PeduncleLength_morphology"                                        
    ##  [57] "CaudalHeight_morphology"                                          
    ##  [58] "PreorbitalLength_morphology"                                      
    ##  [59] "EyeLength_morphology"                                             
    ##  [60] "StrikingFeaturesnone_morphology"                                  
    ##  [61] "StrikingFeaturesother..see.diagnosis._morphology"                 
    ##  [62] "StrikingFeaturesstriking.eyes_morphology"                         
    ##  [63] "StrikingFeaturesstriking.fins_morphology"                         
    ##  [64] "StrikingFeaturesstriking.shape.of.body_morphology"                
    ##  [65] "BodyShapeIeel.like_morphology"                                    
    ##  [66] "BodyShapeIelongated_morphology"                                   
    ##  [67] "BodyShapeIfusiform...normal_morphology"                           
    ##  [68] "BodyShapeIother_morphology"                                       
    ##  [69] "BodyShapeIshort.and...or.deep_morphology"                         
    ##  [70] "Foreheadclearly.concave_morphology"                               
    ##  [71] "Foreheadclearly.convex_morphology"                                
    ##  [72] "Foreheadmore.or.less.straight_morphology"                         
    ##  [73] "PosofMouthsub.terminal.inferior_morphology"                       
    ##  [74] "PosofMouthsuperior_morphology"                                    
    ##  [75] "PosofMouthterminal_morphology"                                    
    ##  [76] "MandibleTeethabsent_morphology"                                   
    ##  [77] "MandibleTeethpresent_morphology"                                  
    ##  [78] "MandibleTeethT1bicuspidate_morphology"                            
    ##  [79] "MandibleTeethT1canine.like_morphology"                            
    ##  [80] "MandibleTeethT1conical_morphology"                                
    ##  [81] "MandibleTeethT1tricuspidate_morphology"                           
    ##  [82] "MaxillaTeethabsent_morphology"                                    
    ##  [83] "MaxillaTeethpresent_morphology"                                   
    ##  [84] "MaxillaTeethT1canine.like_morphology"                             
    ##  [85] "MaxillaTeethT1conical_morphology"                                 
    ##  [86] "MaxillaTeethT1tricuspidate_morphology"                            
    ##  [87] "VomerineTeeth_morphology"                                         
    ##  [88] "Palatine_morphology"                                              
    ##  [89] "PharyngealTeethabsent_morphology"                                 
    ##  [90] "PharyngealTeethpresent_morphology"                                
    ##  [91] "TeethonTongue_morphology"                                         
    ##  [92] "Scutesabsent_morphology"                                          
    ##  [93] "Scutesalong.belly_morphology"                                     
    ##  [94] "HorStripesTTI_morphology"                                         
    ##  [95] "VerStripesTTIabsent_morphology"                                   
    ##  [96] "VerStripesTTIpresent_morphology"                                  
    ##  [97] "DiaStripesTTI_morphology"                                         
    ##  [98] "CurStripesTTI_morphology"                                         
    ##  [99] "SpotsTTImore.than.one.spot_morphology"                            
    ## [100] "SpotsTTIno.spots_morphology"                                      
    ## [101] "SpotsTTIone.spot.only_morphology"                                 
    ## [102] "DorsalFinImore.than.one.spot.or.stripe_morphology"                
    ## [103] "DorsalFinIno.spots.or.stripes_morphology"                         
    ## [104] "DorsalFinIone.spot.or.stripe_morphology"                          
    ## [105] "CaudalFinImore.than.one.spot.or.stripe_morphology"                
    ## [106] "CaudalFinIno.spots.or.stripes_morphology"                         
    ## [107] "CaudalFinIone.spot.or.stripe_morphology"                          
    ## [108] "AnalFinImore.than.one.spot.or.stripe_morphology"                  
    ## [109] "AnalFinIno.spots.or.stripes_morphology"                           
    ## [110] "AnalFinIone.spot.or.stripe_morphology"                            
    ## [111] "Spiracle_morphology"                                              
    ## [112] "DorsalAttributescontinuous.with.caudal.fin_morphology"            
    ## [113] "DorsalAttributesextending.over.most.of.the.back.length_morphology"
    ## [114] "DorsalAttributesgreatly.reduced.or.absent_morphology"             
    ## [115] "DorsalAttributesmodified.to.suction.disc_morphology"              
    ## [116] "DorsalAttributesno.striking.attributes_morphology"                
    ## [117] "DorsalAttributesother_morphology"                                 
    ## [118] "Adifin_morphology"                                                
    ## [119] "CShapeforked_morphology"                                          
    ## [120] "CShapemore.or.less.truncate_morphology"                           
    ## [121] "CShapeother..see.remark._morphology"                              
    ## [122] "CShapepointed_morphology"                                         
    ## [123] "Attributesconfluent_morphology"                                   
    ## [124] "Attributesmore.or.less.normal_morphology"                         
    ## [125] "PectoralAttributesabsent_morphology"                              
    ## [126] "PectoralAttributesmore.or.less.normal_morphology"                 
    ## [127] "PectoralAttributestransformed.to..aerofoils._morphology"          
    ## [128] "PectoralAttributesused.for.locomotion_morphology"                 
    ## [129] "PectoralAttributesvery.large...lobe.like_morphology"              
    ## [130] "PelvicsAttributesmore.or.less.normal_morphology"                  
    ## [131] "PelvicsAttributessuppressed.absent_morphology"                    
    ## [132] "VPositionabdominal_morphology"                                    
    ## [133] "VPositionabsent_morphology"                                       
    ## [134] "VPositionjugular_morphology"                                      
    ## [135] "VPositionthoracic_morphology"                                     
    ## [136] "record_count_species_morphology"

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
    ##  Totallength_morphology HeadLength_morphology PreDorsalLength_morphology
    ##  Min.   :108.5          Min.   :20.00         Min.   :29.60             
    ##  1st Qu.:109.8          1st Qu.:21.15         1st Qu.:35.05             
    ##  Median :111.0          Median :22.30         Median :40.50             
    ##  Mean   :111.0          Mean   :23.03         Mean   :40.50             
    ##  3rd Qu.:112.3          3rd Qu.:24.55         3rd Qu.:45.95             
    ##  Max.   :113.6          Max.   :26.80         Max.   :51.40             
    ##  NA's   :70             NA's   :69            NA's   :70                
    ##  PrePelvicsLength_morphology PreAnalLength_morphology PostHeadDepth_morphology
    ##  Min.   :27.50               Min.   :47.90            Min.   :19.70           
    ##  1st Qu.:34.35               1st Qu.:54.67            1st Qu.:20.57           
    ##  Median :41.20               Median :61.45            Median :21.45           
    ##  Mean   :41.20               Mean   :61.45            Mean   :21.45           
    ##  3rd Qu.:48.05               3rd Qu.:68.22            3rd Qu.:22.32           
    ##  Max.   :54.90               Max.   :75.00            Max.   :23.20           
    ##  NA's   :70                  NA's   :70               NA's   :70              
    ##  PostTrunkDepth_morphology MaximumDepth_morphology PeduncleDepth_morphology
    ##  Min.   :15.20             Min.   :24.20           Min.   :5.60            
    ##  1st Qu.:17.02             1st Qu.:26.15           1st Qu.:6.05            
    ##  Median :18.85             Median :37.60           Median :6.50            
    ##  Mean   :18.85             Mean   :38.07           Mean   :6.50            
    ##  3rd Qu.:20.68             3rd Qu.:47.70           3rd Qu.:6.95            
    ##  Max.   :22.50             Max.   :55.60           Max.   :7.40            
    ##  NA's   :70                NA's   :66              NA's   :70              
    ##  PeduncleLength_morphology CaudalHeight_morphology PreorbitalLength_morphology
    ##  Min.   :11.30             Min.   :16.20           Min.   :31.60              
    ##  1st Qu.:11.88             1st Qu.:17.07           1st Qu.:33.88              
    ##  Median :12.45             Median :17.95           Median :36.15              
    ##  Mean   :12.45             Mean   :17.95           Mean   :36.15              
    ##  3rd Qu.:13.03             3rd Qu.:18.82           3rd Qu.:38.42              
    ##  Max.   :13.60             Max.   :19.70           Max.   :40.70              
    ##  NA's   :70                NA's   :70              NA's   :70                 
    ##  EyeLength_morphology StrikingFeaturesnone_morphology
    ##  Min.   :16.30        0   : 4                        
    ##  1st Qu.:16.82        1   :20                        
    ##  Median :17.35        NA's:48                        
    ##  Mean   :17.35                                       
    ##  3rd Qu.:17.88                                       
    ##  Max.   :18.40                                       
    ##  NA's   :70                                          
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
    ## [17] "TestCode"       "Sex"            "Number"         "FamilyOxRef"   
    ## [21] "TS"             "DataRef"        "TS"             "MetabolicLevel"
    ## [1] "kept fields"
    ## [1] "Species"       "Weight"        "Temp"          "Salinity"     
    ## [5] "Oxygen"        "Oxygenmgl"     "OxygenCons"    "AppliedStress"
    ## [9] "SwimmingSpeed"
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

    ##  [1] "Weight_oxygen"                      "Temp_oxygen"                       
    ##  [3] "Salinity_oxygen"                    "Oxygen_oxygen"                     
    ##  [5] "Oxygenmgl_oxygen"                   "OxygenCons_oxygen"                 
    ##  [7] "SwimmingSpeed_oxygen"               "AppliedStressfeeding_oxygen"       
    ##  [9] "AppliedStresshigh.ph_oxygen"        "AppliedStresshypercapnia_oxygen"   
    ## [11] "AppliedStresshypoxia_oxygen"        "AppliedStresslow.ph_oxygen"        
    ## [13] "AppliedStressnone.specified_oxygen" "AppliedStressother_oxygen"         
    ## [15] "AppliedStressother.stress_oxygen"   "AppliedStressphotoperiod_oxygen"   
    ## [17] "AppliedStresssalinity_oxygen"       "AppliedStresssedative_oxygen"      
    ## [19] "AppliedStresstemperature_oxygen"    "AppliedStresstoxins_oxygen"        
    ## [21] "record_count_species_oxygen"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  Weight_oxygen        Temp_oxygen      Salinity_oxygen  Oxygen_oxygen   
    ##  Min.   :   0.2229   Min.   : 0.6167   Min.   : 0.000   Min.   : 49.75  
    ##  1st Qu.:   4.9562   1st Qu.:18.4688   1st Qu.: 0.000   1st Qu.:100.00  
    ##  Median :  42.8215   Median :23.0000   Median : 0.000   Median :116.00  
    ##  Mean   : 214.2989   Mean   :21.5638   Mean   : 6.457   Mean   :111.98  
    ##  3rd Qu.: 164.5378   3rd Qu.:25.9615   3rd Qu.: 5.840   3rd Qu.:126.21  
    ##  Max.   :1900.0000   Max.   :30.3333   Max.   :34.543   Max.   :182.25  
    ##  NA's   :44          NA's   :44        NA's   :51       NA's   :55      
    ##  Oxygenmgl_oxygen OxygenCons_oxygen SwimmingSpeed_oxygen
    ##  Min.   : 2.466   Min.   :  50.63   Min.   :1.695       
    ##  1st Qu.: 5.900   1st Qu.: 166.82   1st Qu.:1.990       
    ##  Median : 6.200   Median : 222.71   Median :2.286       
    ##  Mean   : 6.569   Mean   : 371.97   Mean   :2.164       
    ##  3rd Qu.: 7.260   3rd Qu.: 546.11   3rd Qu.:2.399       
    ##  Max.   :12.387   Max.   :1222.80   Max.   :2.511       
    ##  NA's   :59       NA's   :44        NA's   :69          
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
    ## [29] "r2"              "r2_M"            "Comment2"        "Number"         
    ## [33] "Number_M"        "TS"              "Locality"        "MethodGrowth"   
    ## [37] "MethodM"         "Data"            "DataSourceRef"   "AssumedDistLoo" 
    ## [41] "AssumedDistK"    "Type"            "TypeLm"          "Auxim"          
    ## [45] "SourceWinfinity" "Mquality"        "TypeLm"          "GrowthEnviron"  
    ## [49] "TS"             
    ## [1] "kept fields"
    ##  [1] "Species"      "Loo"          "SE_Loo"       "SD_Loo"       "LCL_Loo"     
    ##  [6] "UCL_Loo"      "TLinfinity"   "K"            "SE_K"         "SD_K"        
    ## [11] "LCL_K"        "UCL_K"        "to"           "SE_to"        "SD_to"       
    ## [16] "LCL_to"       "UCL_to"       "Winfinity"    "LinfLmax"     "LogKLogLoo"  
    ## [21] "b"            "C"            "tmax"         "tm"           "M"           
    ## [26] "SE_M"         "SD_M"         "LCL_M"        "UCL_M"        "AssumedDistM"
    ## [31] "Lm"           "LmLoo"        "LmMale"       "LmLooMale"    "LmFemale"    
    ## [36] "LmLooFemale"  "Temperature"  "DeltaT"       "Rm"          
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
    ##  [3] "Loo_popgrowth"                  "SE_Loo_popgrowth"              
    ##  [5] "SD_Loo_popgrowth"               "TLinfinity_popgrowth"          
    ##  [7] "K_popgrowth"                    "SE_K_popgrowth"                
    ##  [9] "SD_K_popgrowth"                 "LCL_K_popgrowth"               
    ## [11] "UCL_K_popgrowth"                "SE_to_popgrowth"               
    ## [13] "SD_to_popgrowth"                "LCL_to_popgrowth"              
    ## [15] "UCL_to_popgrowth"               "Winfinity_popgrowth"           
    ## [17] "LogKLogLoo_popgrowth"           "b_popgrowth"                   
    ## [19] "C_popgrowth"                    "tmax_popgrowth"                
    ## [21] "tm_popgrowth"                   "M_popgrowth"                   
    ## [23] "Lm_popgrowth"                   "LmLoo_popgrowth"               
    ## [25] "LmMale_popgrowth"               "LmLooMale_popgrowth"           
    ## [27] "LmFemale_popgrowth"             "LmLooFemale_popgrowth"         
    ## [29] "Temperature_popgrowth"          "DeltaT_popgrowth"              
    ## [31] "Rm_popgrowth"                   "record_count_species_popgrowth"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##   to_popgrowth LinfLmax_popgrowth Loo_popgrowth    SE_Loo_popgrowth
    ##  Min.   :1     Min.   :0.0000     Min.   :  3.70   Min.   : 1.100  
    ##  1st Qu.:1     1st Qu.:0.0000     1st Qu.: 20.55   1st Qu.: 2.710  
    ##  Median :1     Median :0.0000     Median : 44.26   Median : 4.320  
    ##  Mean   :1     Mean   :0.4706     Mean   : 54.90   Mean   : 6.173  
    ##  3rd Qu.:1     3rd Qu.:1.0000     3rd Qu.: 92.70   3rd Qu.: 8.710  
    ##  Max.   :1     Max.   :1.0000     Max.   :148.77   Max.   :13.100  
    ##  NA's   :66    NA's   :38         NA's   :38       NA's   :69      
    ##  SD_Loo_popgrowth TLinfinity_popgrowth  K_popgrowth      SE_K_popgrowth   
    ##  Min.   :1.162    Min.   :  3.70       Min.   : 0.1090   Min.   :0.03600  
    ##  1st Qu.:1.162    1st Qu.: 28.61       1st Qu.: 0.1923   1st Qu.:0.04300  
    ##  Median :1.162    Median : 45.88       Median : 0.3340   Median :0.05000  
    ##  Mean   :1.162    Mean   : 62.32       Mean   : 1.2207   Mean   :0.08533  
    ##  3rd Qu.:1.162    3rd Qu.: 99.41       3rd Qu.: 1.0573   3rd Qu.:0.11000  
    ##  Max.   :1.162    Max.   :161.49       Max.   :12.6000   Max.   :0.17000  
    ##  NA's   :71       NA's   :44           NA's   :38        NA's   :69       
    ##  SD_K_popgrowth   LCL_K_popgrowth  UCL_K_popgrowth  SE_to_popgrowth 
    ##  Min.   :0.1081   Min.   :0.1211   Min.   :0.1241   Min.   :0.2600  
    ##  1st Qu.:0.1081   1st Qu.:0.1719   1st Qu.:0.1798   1st Qu.:0.2900  
    ##  Median :0.1081   Median :0.2227   Median :0.2354   Median :0.3200  
    ##  Mean   :0.1081   Mean   :0.2227   Mean   :0.2354   Mean   :0.3353  
    ##  3rd Qu.:0.1081   3rd Qu.:0.2735   3rd Qu.:0.2910   3rd Qu.:0.3730  
    ##  Max.   :0.1081   Max.   :0.3243   Max.   :0.3467   Max.   :0.4260  
    ##  NA's   :71       NA's   :70       NA's   :70       NA's   :69      
    ##  SD_to_popgrowth  LCL_to_popgrowth   UCL_to_popgrowth   Winfinity_popgrowth
    ##  Min.   :0.6914   Min.   :-0.72650   Min.   :-0.60400   Min.   :    0.7    
    ##  1st Qu.:0.6914   1st Qu.:-0.55321   1st Qu.:-0.45383   1st Qu.:  730.1    
    ##  Median :0.6914   Median :-0.37992   Median :-0.30367   Median : 2271.1    
    ##  Mean   :0.6914   Mean   :-0.37992   Mean   :-0.30367   Mean   : 8338.4    
    ##  3rd Qu.:0.6914   3rd Qu.:-0.20662   3rd Qu.:-0.15350   3rd Qu.: 6403.1    
    ##  Max.   :0.6914   Max.   :-0.03333   Max.   :-0.00333   Max.   :60447.4    
    ##  NA's   :71       NA's   :70         NA's   :70         NA's   :54         
    ##  LogKLogLoo_popgrowth  b_popgrowth     C_popgrowth     tmax_popgrowth  
    ##  Min.   :-0.62014     Min.   :2.843   Min.   :0.2000   Min.   : 3.000  
    ##  1st Qu.:-0.40683     1st Qu.:2.987   1st Qu.:0.3500   1st Qu.: 8.062  
    ##  Median :-0.36202     Median :3.000   Median :0.5000   Median :10.692  
    ##  Mean   :-0.12938     Mean   :3.013   Mean   :0.5667   Mean   :11.772  
    ##  3rd Qu.:-0.03473     3rd Qu.:3.030   3rd Qu.:0.7500   3rd Qu.:13.628  
    ##  Max.   : 1.41348     Max.   :3.166   Max.   :1.0000   Max.   :29.000  
    ##  NA's   :51           NA's   :55      NA's   :69       NA's   :56      
    ##   tm_popgrowth    M_popgrowth      Lm_popgrowth   LmLoo_popgrowth 
    ##  Min.   :1.000   Min.   :0.1500   Min.   :13.85   Min.   :0.3000  
    ##  1st Qu.:2.314   1st Qu.:0.2783   1st Qu.:24.43   1st Qu.:0.4650  
    ##  Median :2.500   Median :0.3814   Median :33.50   Median :0.5550  
    ##  Mean   :2.961   Mean   :0.4203   Mean   :33.21   Mean   :0.5474  
    ##  3rd Qu.:4.100   3rd Qu.:0.4000   3rd Qu.:38.65   3rd Qu.:0.6200  
    ##  Max.   :4.889   Max.   :1.4000   Max.   :61.25   Max.   :0.8115  
    ##  NA's   :67      NA's   :59       NA's   :60      NA's   :63      
    ##  LmMale_popgrowth LmLooMale_popgrowth LmFemale_popgrowth LmLooFemale_popgrowth
    ##  Min.   : 8.69    Min.   :0.430       Min.   :15.00      Min.   :0.3967       
    ##  1st Qu.:14.59    1st Qu.:0.470       1st Qu.:15.20      1st Qu.:0.4192       
    ##  Median :25.05    Median :0.530       Median :39.83      Median :0.4533       
    ##  Mean   :29.62    Mean   :0.514       Mean   :40.01      Mean   :0.4558       
    ##  3rd Qu.:47.38    3rd Qu.:0.545       3rd Qu.:59.00      3rd Qu.:0.4900       
    ##  Max.   :53.00    Max.   :0.595       Max.   :71.00      Max.   :0.5200       
    ##  NA's   :66       NA's   :67          NA's   :67         NA's   :68           
    ##  Temperature_popgrowth DeltaT_popgrowth  Rm_popgrowth   
    ##  Min.   :-1.00         Min.   : 5.80    Min.   :0.1500  
    ##  1st Qu.:12.10         1st Qu.:10.90    1st Qu.:0.4000  
    ##  Median :18.86         Median :16.00    Median :0.5965  
    ##  Mean   :17.89         Mean   :13.62    Mean   :0.7117  
    ##  3rd Qu.:25.00         3rd Qu.:17.52    3rd Qu.:0.7910  
    ##  Max.   :28.00         Max.   :19.05    Max.   :1.6210  
    ##  NA's   :46            NA's   :69       NA's   :67      
    ##  record_count_species_popgrowth
    ##  Min.   :  1.000               
    ##  1st Qu.:  1.000               
    ##  Median :  1.000               
    ##  Mean   :  8.667               
    ##  3rd Qu.:  4.250               
    ##  Max.   :124.000               
    ## 

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
    ## [21] "TS"             "Locality"       "MaxLengthType"  "PredatorName"  
    ## [25] "PredatorGroup"  "StomachContent" "TS"            
    ## [1] "kept fields"
    ## [1] "Species"       "Predatstage"   "PredatorI"     "PreyStage"    
    ## [5] "DietP"         "MaxLength"     "PredatTroph"   "PredatseTroph"
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

    ##  [1] "DietP_predators"                    "MaxLength_predators"               
    ##  [3] "PredatTroph_predators"              "PredatseTroph_predators"           
    ##  [5] "Predatstageadults_predators"        "Predatstagejuv..adults_predators"  
    ##  [7] "Predatstagelarvae_predators"        "Predatstagerecruits.juv._predators"
    ##  [9] "PredatorIbirds_predators"           "PredatorIcrustaceans_predators"    
    ## [11] "PredatorIfinfish_predators"         "PredatorIherps_predators"          
    ## [13] "PredatorIinsects_predators"         "PredatorImammals_predators"        
    ## [15] "PredatorImollusks_predators"        "PredatorIother_predators"          
    ## [17] "PreyStageadults_predators"          "PreyStageeggs_predators"           
    ## [19] "PreyStagejuv..adults_predators"     "PreyStagelarvae_predators"         
    ## [21] "PreyStagerecruits.juv._predators"   "record_count_species_predators"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##  DietP_predators MaxLength_predators PredatTroph_predators
    ##  Min.   : 0.10   Min.   :13.20       Min.   :3.212        
    ##  1st Qu.: 1.05   1st Qu.:31.50       1st Qu.:3.500        
    ##  Median :11.93   Median :67.00       Median :3.500        
    ##  Mean   :24.17   Mean   :54.35       Mean   :3.504        
    ##  3rd Qu.:42.04   3rd Qu.:73.88       3rd Qu.:3.500        
    ##  Max.   :71.00   Max.   :89.50       Max.   :3.765        
    ##  NA's   :65      NA's   :65          NA's   :54           
    ##  PredatseTroph_predators Predatstageadults_predators
    ##  Min.   :0.3400          0   :19                    
    ##  1st Qu.:0.7099          1   :10                    
    ##  Median :0.8000          NA's:43                    
    ##  Mean   :0.7335                                     
    ##  3rd Qu.:0.8000                                     
    ##  Max.   :0.8033                                     
    ##  NA's   :54                                         
    ##  Predatstagejuv..adults_predators Predatstagelarvae_predators
    ##  0   : 2                          0   :28                    
    ##  1   :27                          1   : 1                    
    ##  NA's:43                          NA's:43                    
    ##                                                              
    ##                                                              
    ##                                                              
    ##                                                              
    ##  Predatstagerecruits.juv._predators PredatorIbirds_predators
    ##  0   :23                            0   :18                 
    ##  1   : 6                            1   :11                 
    ##  NA's:43                            NA's:43                 
    ##                                                             
    ##                                                             
    ##                                                             
    ##                                                             
    ##  PredatorIcrustaceans_predators PredatorIfinfish_predators
    ##  0   :28                        0   : 3                   
    ##  1   : 1                        1   :26                   
    ##  NA's:43                        NA's:43                   
    ##                                                           
    ##                                                           
    ##                                                           
    ##                                                           
    ##  PredatorIherps_predators PredatorIinsects_predators PredatorImammals_predators
    ##  0   :28                  0   :25                    0   :25                   
    ##  1   : 1                  1   : 4                    1   : 4                   
    ##  NA's:43                  NA's:43                    NA's:43                   
    ##                                                                                
    ##                                                                                
    ##                                                                                
    ##                                                                                
    ##  PredatorImollusks_predators PredatorIother_predators PreyStageadults_predators
    ##  0   :26                     0   :27                  0   :25                  
    ##  1   : 3                     1   : 2                  1   : 4                  
    ##  NA's:43                     NA's:43                  NA's:43                  
    ##                                                                                
    ##                                                                                
    ##                                                                                
    ##                                                                                
    ##  PreyStageeggs_predators PreyStagejuv..adults_predators
    ##  0   :24                 0   : 4                       
    ##  1   : 5                 1   :25                       
    ##  NA's:43                 NA's:43                       
    ##                                                        
    ##                                                        
    ##                                                        
    ##                                                        
    ##  PreyStagelarvae_predators PreyStagerecruits.juv._predators
    ##  0   :25                   0   :18                         
    ##  1   : 4                   1   :11                         
    ##  NA's:43                   NA's:43                         
    ##                                                            
    ##                                                            
    ##                                                            
    ##                                                            
    ##  record_count_species_predators
    ##  Min.   : 1.000                
    ##  1st Qu.: 1.000                
    ##  Median : 1.000                
    ##  Mean   : 3.556                
    ##  3rd Qu.: 2.000                
    ##  Max.   :48.000                
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
    ##  [1] "SpecCode"         "autoctr"          "StockCode"        "SpawningRefNo"   
    ##  [5] "SourceRef"        "SexRmodRef"       "FecundityRef"     "SpCycleRef"      
    ##  [9] "GestationMinRef"  "GestationMaxRef"  "LengthOffMinRef"  "LengthOffMaxRef" 
    ## [13] "FecunMinRef"      "FecunMeanRef"     "FecunMaxRef"      "SpawnMinRef"     
    ## [17] "SpawnMeanRef"     "SpawnMaxRef"      "Entered"          "Dateentered"     
    ## [21] "Expert"           "Datechecked"      "FecComment"       "Modified"        
    ## [25] "AddInfos"         "Datemodified"     "SpecCode"         "StockCode"       
    ## [29] "C_Code"           "E_CODE"           "SexRatiomid"      "SexRmodRef"      
    ## [33] "Number"           "TS"               "LengthTypeFecMin" "LengthTypeFecMax"
    ## [37] "LengthType"       "Spawningarea"     "TS"              
    ## [1] "kept fields"
    ##  [1] "Species"            "SpawningGround"     "Jan"               
    ##  [4] "Feb"                "Mar"                "Apr"               
    ##  [7] "May"                "Jun"                "Jul"               
    ## [10] "Aug"                "Sep"                "Oct"               
    ## [13] "Nov"                "Dec"                "GSI"               
    ## [16] "PercentFemales"     "TempLow"            "TempHigh"          
    ## [19] "FecundityMin"       "WeightMin"          "LengthFecunMin"    
    ## [22] "FecundityMax"       "WeightMax"          "LengthFecunMax"    
    ## [25] "SpawningCycles"     "GestationMin"       "GestationMax"      
    ## [28] "LengthOffspringMin" "LengthOffspringMax" "RelFecundityMin"   
    ## [31] "RelFecundityMean"   "RelFecundityMax"    "LengthMin"         
    ## [34] "LengthMax"          "a"                  "b"                 
    ## [37] "CorrCoeff"          "Dailyspawnmin"      "Dailyspawnmean"    
    ## [40] "Dailyspawnmax"     
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
    ## [19] "LengthFecunMin_spawning"           "FecundityMax_spawning"            
    ## [21] "WeightMax_spawning"                "LengthFecunMax_spawning"          
    ## [23] "SpawningCycles_spawning"           "GestationMin_spawning"            
    ## [25] "GestationMax_spawning"             "LengthOffspringMin_spawning"      
    ## [27] "RelFecundityMin_spawning"          "RelFecundityMean_spawning"        
    ## [29] "RelFecundityMax_spawning"          "LengthMin_spawning"               
    ## [31] "LengthMax_spawning"                "a_spawning"                       
    ## [33] "b_spawning"                        "CorrCoeff_spawning"               
    ## [35] "Dailyspawnmin_spawning"            "Dailyspawnmax_spawning"           
    ## [37] "SpawningGroundcoastal_spawning"    "SpawningGroundestuarine_spawning" 
    ## [39] "SpawningGroundlacustrine_spawning" "SpawningGroundriverine_spawning"  
    ## [41] "SpawningGroundshelf_spawning"      "record_count_species_spawning"

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
    ##  FecundityMin_spawning WeightMin_spawning  LengthFecunMin_spawning
    ##  Min.   :      20      Min.   :    34.10   Min.   : 10.80         
    ##  1st Qu.:     367      1st Qu.:    81.78   1st Qu.: 13.10         
    ##  Median :    3518      Median :  1600.00   Median : 22.00         
    ##  Mean   : 1290787      Mean   : 51393.08   Mean   : 33.08         
    ##  3rd Qu.:   48626      3rd Qu.:  4561.50   3rd Qu.: 43.00         
    ##  Max.   :15300000      Max.   :300000.00   Max.   :102.00         
    ##  NA's   :50            NA's   :66          NA's   :63             
    ##  FecundityMax_spawning WeightMax_spawning LengthFecunMax_spawning
    ##  Min.   :      25      Min.   :  165      Min.   : 12.40         
    ##  1st Qu.:     954      1st Qu.:  500      1st Qu.: 25.00         
    ##  Median :   13798      Median : 4195      Median : 25.70         
    ##  Mean   : 4484567      Mean   : 7556      Mean   : 57.00         
    ##  3rd Qu.:  286667      3rd Qu.: 8450      3rd Qu.: 80.33         
    ##  Max.   :47700000      Max.   :24469      Max.   :157.00         
    ##  NA's   :51            NA's   :67         NA's   :63             
    ##  SpawningCycles_spawning GestationMin_spawning GestationMax_spawning
    ##  Min.   :1.000           Min.   :8.00          Min.   :18           
    ##  1st Qu.:1.000           1st Qu.:8.25          1st Qu.:18           
    ##  Median :1.000           Median :8.50          Median :18           
    ##  Mean   :1.115           Mean   :8.50          Mean   :18           
    ##  3rd Qu.:1.000           3rd Qu.:8.75          3rd Qu.:18           
    ##  Max.   :2.500           Max.   :9.00          Max.   :18           
    ##  NA's   :59              NA's   :70            NA's   :71           
    ##  LengthOffspringMin_spawning RelFecundityMin_spawning RelFecundityMean_spawning
    ##  Min.   :15                  Min.   :   2.0           Min.   :249.8            
    ##  1st Qu.:15                  1st Qu.: 200.6           1st Qu.:369.1            
    ##  Median :15                  Median : 461.8           Median :488.4            
    ##  Mean   :15                  Mean   : 974.9           Mean   :488.4            
    ##  3rd Qu.:15                  3rd Qu.: 897.7           3rd Qu.:607.7            
    ##  Max.   :15                  Max.   :3767.2           Max.   :727.0            
    ##  NA's   :71                  NA's   :66               NA's   :70               
    ##  RelFecundityMax_spawning LengthMin_spawning LengthMax_spawning
    ##  Min.   :  399.0          Min.   : 4.50      Min.   :12.80     
    ##  1st Qu.:  477.0          1st Qu.: 7.70      1st Qu.:15.85     
    ##  Median :  718.5          Median :16.70      Median :37.80     
    ##  Mean   : 3281.5          Mean   :20.71      Mean   :43.29     
    ##  3rd Qu.: 3523.0          3rd Qu.:32.70      3rd Qu.:67.70     
    ##  Max.   :11290.0          Max.   :43.00      Max.   :85.33     
    ##  NA's   :68               NA's   :65         NA's   :65        
    ##    a_spawning        b_spawning    CorrCoeff_spawning Dailyspawnmin_spawning
    ##  Min.   :0.08371   Min.   :2.010   Min.   :0.5400     Min.   :0.2           
    ##  1st Qu.:0.97700   1st Qu.:3.027   1st Qu.:0.7000     1st Qu.:0.2           
    ##  Median :2.71667   Median :3.298   Median :0.8310     Median :0.2           
    ##  Mean   :3.03950   Mean   :3.148   Mean   :0.7754     Mean   :0.2           
    ##  3rd Qu.:4.29015   3rd Qu.:3.360   3rd Qu.:0.8750     3rd Qu.:0.2           
    ##  Max.   :7.13000   Max.   :4.043   Max.   :0.9066     Max.   :0.2           
    ##  NA's   :67        NA's   :67      NA's   :65         NA's   :71            
    ##  Dailyspawnmax_spawning SpawningGroundcoastal_spawning
    ##  Min.   :0.5            0   :12                       
    ##  1st Qu.:0.5            1   : 3                       
    ##  Median :0.5            NA's:57                       
    ##  Mean   :0.5                                          
    ##  3rd Qu.:0.5                                          
    ##  Max.   :0.5                                          
    ##  NA's   :71                                           
    ##  SpawningGroundestuarine_spawning SpawningGroundlacustrine_spawning
    ##  0   :13                          0   :13                          
    ##  1   : 2                          1   : 2                          
    ##  NA's:57                          NA's:57                          
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##                                                                    
    ##  SpawningGroundriverine_spawning SpawningGroundshelf_spawning
    ##  0   : 9                         0   :13                     
    ##  1   : 6                         1   : 2                     
    ##  NA's:57                         NA's:57                     
    ##                                                              
    ##                                                              
    ##                                                              
    ##                                                              
    ##  record_count_species_spawning
    ##  Min.   : 1.000               
    ##  1st Qu.: 1.000               
    ##  Median : 1.000               
    ##  Mean   : 3.444               
    ##  3rd Qu.: 2.000               
    ##  Max.   :61.000               
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
    ## [13] "SpecCode"        "StockCode"       "TS"              "DataRef"        
    ## [17] "LengthType"      "LengthTypeSpeed" "Reliable"        "TS"             
    ## [1] "kept fields"
    ## [1] "Species" "Length"  "SpeedLS" "Speedms" "Mode"    "SLa"     "SLb"    
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

    ## [1] "Length_speed"               "SpeedLS_speed"             
    ## [3] "Speedms_speed"              "SLa_speed"                 
    ## [5] "SLb_speed"                  "Modeburst_speed"           
    ## [7] "Modeother_speed"            "Modesustained_speed"       
    ## [9] "record_count_species_speed"

``` r
summary(out[,str_which(names(out),table_name)])
```

    ##   Length_speed   SpeedLS_speed   Speedms_speed      SLa_speed    SLb_speed     
    ##  Min.   :11.17   Min.   :1.695   Min.   :0.4577   Min.   :0    Min.   :0.8320  
    ##  1st Qu.:25.00   1st Qu.:6.256   1st Qu.:0.9582   1st Qu.:0    1st Qu.:0.8605  
    ##  Median :25.50   Median :6.970   Median :1.5237   Median :0    Median :0.8850  
    ##  Mean   :23.11   Mean   :6.443   Mean   :1.3160   Mean   :0    Mean   :0.8825  
    ##  3rd Qu.:26.89   3rd Qu.:8.495   3rd Qu.:1.7425   3rd Qu.:0    3rd Qu.:0.9070  
    ##  Max.   :27.00   Max.   :8.796   Max.   :1.8982   Max.   :0    Max.   :0.9280  
    ##  NA's   :67      NA's   :67      NA's   :67       NA's   :68   NA's   :68      
    ##  Modeburst_speed Modeother_speed Modesustained_speed record_count_species_speed
    ##  0   : 1         0   : 4         0   : 1             Min.   : 1.000            
    ##  1   : 4         1   : 1         1   : 4             1st Qu.: 1.000            
    ##  NA's:67         NA's:67         NA's:67             Median : 1.000            
    ##                                                      Mean   : 1.903            
    ##                                                      3rd Qu.: 1.000            
    ##                                                      Max.   :38.000            
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
    ##  [1] "SpecCode"         "StockCode"        "StocksRefNo"      "CITES_Ref"       
    ##  [5] "BoundingRef"      "TempRef"          "TempPrefRef"      "pHRef"           
    ##  [9] "dHRef"            "CITES_Remarks"    "ResilienceRemark" "Entered"         
    ## [13] "DateEntered"      "Expert"           "Modified"         "DateModified"    
    ## [17] "DateChecked"      "SpecCode"         "StockCode"        "IUCN_Code"       
    ## [21] "CITES_Code"       "IGFAName"         "TempPref25"       "FAOAqua"         
    ## [25] "TS"               "BoundingMethod"   "TS"               "Level"           
    ## [29] "StockDefs"        "StockDefsGeneral" "LocalUnique"      "CITES_Remarks"   
    ## [33] "IGFAName"         "ICESStockID"      "RfeID"            "NorthSouthN"     
    ## [37] "NorthSouthS"      "WestEastW"        "WestEastE"        "GenBankID"       
    ## [41] "FIGIS_ID"         "EcotoxID"         "SCRFA_data"       "GMAD_ID"         
    ## [45] "SAUP"             "SAUP_ID"          "SAUP_Group"       "AusMuseum"       
    ## [49] "FishTrace"        "IUCN_ID"          "IUCN_IDAssess"    "BOLD_ID"         
    ## [53] "EssayID"          "OsteoBaseID"      "DORIS_ID"         "Aquamaps"        
    ## [57] "Occurrence"       "Strains"          "SynOC"            "Protected"       
    ## [61] "Ecology"          "Abnorm"           "Metabolism"       "Predators"       
    ## [65] "Spawning"         "Fecundity"        "Speed"            "LarvSpeed"       
    ## [69] "Diet"             "Eggs"             "EggDevelop"       "Food"            
    ## [73] "Foods"            "Larvae"           "LarvDyn"          "LarvSpeed"       
    ## [77] "PopDyn"           "Gillarea"         "Maturity"         "MatSizes"        
    ## [81] "Processing"       "Reproduction"     "Introductions"    "Abundance"       
    ## [85] "Vision"           "Genetics"         "CountryComp"      "Allele"          
    ## [89] "GeneticStudies"   "Ration"           "Foods"            "Ecotoxicology"   
    ## [93] "Brains"           "Catches"          "FAOAqua"         
    ## [1] "kept fields"
    ##  [1] "Species"           "IUCN_Assessment"   "IUCN_DateAssessed"
    ##  [4] "CITES_Date"        "CMS"               "Northernmost"     
    ##  [7] "Southermost"       "Westernmost"       "Easternmost"      
    ## [10] "TempMin"           "TempMax"           "TempPreferred"    
    ## [13] "TempPref50"        "TempPref75"        "EnvTemp"          
    ## [16] "Resilience"        "pHMin"             "pHMax"            
    ## [19] "dHMin"             "dHMax"             "Morphology"       
    ## [22] "Diseases"          "LengthWeight"      "Aquaculture"      
    ## [25] "LengthRelations"   "LengthFrequency"   "Sounds"           
    ## [28] "Broodstock"        "EggNursery"        "FryNursery"       
    ## [31] "LarvalNursery"    
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
    ## [16] "LengthWeight_stocks"                         
    ## [17] "Aquaculture_stocks"                          
    ## [18] "LengthRelations_stocks"                      
    ## [19] "LengthFrequency_stocks"                      
    ## [20] "Sounds_stocks"                               
    ## [21] "Broodstock_stocks"                           
    ## [22] "EggNursery_stocks"                           
    ## [23] "FryNursery_stocks"                           
    ## [24] "LarvalNursery_stocks"                        
    ## [25] "IUCN_Assessmenta1bd_stocks"                  
    ## [26] "IUCN_Assessmenta1ce.2ce..b1.2abc..c2a_stocks"
    ## [27] "IUCN_Assessmenta2ace_stocks"                 
    ## [28] "IUCN_Assessmenta2b_stocks"                   
    ## [29] "IUCN_Assessmenta2bd.4bcd_stocks"             
    ## [30] "IUCN_Assessmenta2bd.4bd_stocks"              
    ## [31] "IUCN_Assessmenta4cd_stocks"                  
    ## [32] "IUCN_Assessmentb2ab.iii._stocks"             
    ## [33] "EnvTempboreal_stocks"                        
    ## [34] "EnvTemppolar_stocks"                         
    ## [35] "EnvTempsubtropical_stocks"                   
    ## [36] "EnvTemptemperate_stocks"                     
    ## [37] "EnvTemptropical_stocks"                      
    ## [38] "Resiliencehigh_stocks"                       
    ## [39] "Resiliencelow_stocks"                        
    ## [40] "Resiliencemedium_stocks"                     
    ## [41] "record_count_species_stocks"

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
    ##   dHMax_stocks   Morphology_stocks Diseases_stocks  LengthWeight_stocks
    ##  Min.   :15.00   Min.   :0.0000    Min.   :0.0000   Min.   :0.000      
    ##  1st Qu.:19.00   1st Qu.:0.2375    1st Qu.:0.0000   1st Qu.:0.000      
    ##  Median :19.00   Median :1.0000    Median :0.0000   Median :1.000      
    ##  Mean   :20.06   Mean   :0.7449    Mean   :0.4102   Mean   :0.616      
    ##  3rd Qu.:19.00   3rd Qu.:1.0000    3rd Qu.:1.0000   3rd Qu.:1.000      
    ##  Max.   :30.00   Max.   :1.0000    Max.   :1.0000   Max.   :1.000      
    ##  NA's   :54                                                            
    ##  Aquaculture_stocks LengthRelations_stocks LengthFrequency_stocks
    ##  Min.   :0.00000    Min.   :0.0000         Min.   :0.000         
    ##  1st Qu.:0.00000    1st Qu.:0.0000         1st Qu.:0.000         
    ##  Median :0.00000    Median :1.0000         Median :0.000         
    ##  Mean   :0.01736    Mean   :0.6528         Mean   :0.112         
    ##  3rd Qu.:0.00000    3rd Qu.:1.0000         3rd Qu.:0.000         
    ##  Max.   :1.00000    Max.   :1.0000         Max.   :1.000         
    ##                                                                  
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
    ## [21] "Method"       "MethodType"   "MethodType"   "SizeType"     "DietCode"    
    ## [26] "DietRefNo"   
    ## [1] "kept fields"
    ##  [1] "Species"      "SampleStage"  "January"      "February"     "March"       
    ##  [6] "April"        "May"          "June"         "July"         "August"      
    ## [11] "September"    "October"      "November"     "December"     "OtherItems"  
    ## [16] "PercentEmpty" "Troph"        "seTroph"      "SizeMin"      "SizeMax"     
    ## [21] "FishLength"  
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
    ## [19] "FishLength_diet"               "SampleStageadults_diet"       
    ## [21] "SampleStagejuv..adults_diet"   "SampleStagelarvae_diet"       
    ## [23] "SampleStagerecruits.juv._diet" "record_count_species_diet"

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
    ##   SizeMin_diet     SizeMax_diet    FishLength_diet SampleStageadults_diet
    ##  Min.   : 3.100   Min.   :  4.90   Min.   : 3.70   0   :18               
    ##  1st Qu.: 8.576   1st Qu.: 18.70   1st Qu.:12.92   1   :11               
    ##  Median :15.300   Median : 26.25   Median :21.34   NA's:43               
    ##  Mean   :19.317   Mean   : 38.21   Mean   :27.11                         
    ##  3rd Qu.:25.210   3rd Qu.: 59.24   3rd Qu.:39.71                         
    ##  Max.   :76.600   Max.   :129.12   Max.   :70.00                         
    ##  NA's   :48       NA's   :48       NA's   :44                            
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
    ## 7                                         record_count_species_brains
    ## 8                                                          range_area
    ## 104                                      record_count_species_ecology
    ## 106                                                Shelf_distribution
    ## 108                                            SpecSport_distribution
    ## 109                                        Statusendemic_distribution
    ## 110                                     Statusintroduced_distribution
    ## 111                                         Statusnative_distribution
    ## 112                                   Statusquestionable_distribution
    ## 123                                 record_count_species_distribution
    ## 124                                              MaxLengthTL_estimate
    ## 125                                               TLObserved_estimate
    ## 126                                                    Troph_estimate
    ## 127                                                  seTroph_estimate
    ## 128                                            TrophObserved_estimate
    ## 141                                        ComDepMinObserved_estimate
    ## 142                                        ComDepMaxObserved_estimate
    ## 145                                         DepthMinEstimate_estimate
    ## 146                                         DepthMaxEstimate_estimate
    ## 147                                         PredPreyRatioMin_estimate
    ## 148                                         PredPreyRatioMax_estimate
    ## 154                                              MaxLengthSL_estimate
    ## 155                                                KObserved_estimate
    ## 156                                     record_count_species_estimate
    ## 178                                    record_count_species_fecundity
    ## 196                                    record_count_species_fooditems
    ## 274                                record_count_species_introductions
    ## 288                                record_count_species_length_weight
    ## 424                                   record_count_species_morphology
    ## 445                                       record_count_species_oxygen
    ## 449                                      record_count_species_popchar
    ## 481                                    record_count_species_popgrowth
    ## 493                                        record_count_species_popqb
    ## 516                                    record_count_species_predators
    ## 527                                       record_count_species_ration
    ## 561                                 record_count_species_reproduction
    ## 603                                     record_count_species_spawning
    ## 612                                        record_count_species_speed
    ## 626                                                 Morphology_stocks
    ## 627                                                   Diseases_stocks
    ## 628                                               LengthWeight_stocks
    ## 629                                                Aquaculture_stocks
    ## 630                                            LengthRelations_stocks
    ## 631                                            LengthFrequency_stocks
    ## 632                                                     Sounds_stocks
    ## 633                                                 Broodstock_stocks
    ## 634                                                 EggNursery_stocks
    ## 635                                                 FryNursery_stocks
    ## 636                                              LarvalNursery_stocks
    ## 645                                              EnvTempboreal_stocks
    ## 646                                               EnvTemppolar_stocks
    ## 647                                         EnvTempsubtropical_stocks
    ## 648                                           EnvTemptemperate_stocks
    ## 649                                            EnvTemptropical_stocks
    ## 653                                       record_count_species_stocks
    ## 677                                         record_count_species_diet
    ## 690                                     record_count_species_swimming
    ## 113                                   ContinentGrpafrica_distribution
    ## 114                                     ContinentGrpasia_distribution
    ## 115                           ContinentGrpatlantic.ocean_distribution
    ## 116                        ContinentGrpeurope..form.ussr_distribution
    ## 117                             ContinentGrpindian.ocean_distribution
    ## 118                            ContinentGrpmed.black.sea_distribution
    ## 119                      ContinentGrpnorth.centr.america_distribution
    ## 120                                  ContinentGrpoceania_distribution
    ## 121                            ContinentGrppacific.ocean_distribution
    ## 122                            ContinentGrpsouth.america_distribution
    ## 129                                                        a_estimate
    ## 130                                                sd_log10a_estimate
    ## 131                                                        b_estimate
    ## 132                                                     sd_b_estimate
    ## 650                                             Resiliencehigh_stocks
    ## 651                                              Resiliencelow_stocks
    ## 652                                           Resiliencemedium_stocks
    ## 528                                             SpawnAgg_reproduction
    ## 529                                         BatchSpawner_reproduction
    ## 532                                    ReproModedioecism_reproduction
    ## 533                             ReproModeparthenogenesis_reproduction
    ## 534                                   ReproModeprotandry_reproduction
    ## 535                                   ReproModeprotogyny_reproduction
    ## 536                        ReproModetrue.hermaphroditism_reproduction
    ## 537                                Fertilizationexternal_reproduction
    ## 538     Fertilizationin.brood.pouch.or.similar.structure_reproduction
    ## 539                                Fertilizationin.mouth_reproduction
    ## 540                      Fertilizationinternal..oviduct._reproduction
    ## 541                                   Fertilizationother_reproduction
    ## 37                                                    Neritic_ecology
    ## 38                                                 Intertidal_ecology
    ## 39                                                Hadopelagic_ecology
    ## 40                                                  Estuaries_ecology
    ## 41                                                     Stream_ecology
    ## 42                                                      Lakes_ecology
    ## 43                                                  Schooling_ecology
    ## 44                                                  TidePools_ecology
    ## 45                                                SubLittoral_ecology
    ## 46                                               Bathypelagic_ecology
    ## 47                                              Abyssopelagic_ecology
    ## 48                                             CaveAnchialine_ecology
    ## 55                                                 Parasitism_ecology
    ## 56                                                  Symbiosis_ecology
    ## 57                                                 Symphorism_ecology
    ## 58                                               Commensalism_ecology
    ## 59                                                  Mutualism_ecology
    ## 60                                                  Epiphytic_ecology
    ## 61                                                OutsideHost_ecology
    ## 62                                                 InsideHost_ecology
    ## 63                                                    Sessile_ecology
    ## 64                                                   Demersal_ecology
    ## 65                                                  Endofauna_ecology
    ## 66                                                    Pelagic_ecology
    ## 67                                                Megabenthos_ecology
    ## 68                                               Macrobenthos_ecology
    ## 69                                                Meiobenthos_ecology
    ## 70                                                     Coarse_ecology
    ## 71                                                       Fine_ecology
    ## 72                                                    Sloping_ecology
    ## 73                                                       Silt_ecology
    ## 74                                                       Ooze_ecology
    ## 75                                                   Detritus_ecology
    ## 76                                                    Organic_ecology
    ## 77                                                     Gravel_ecology
    ## 78                                                BedsBivalve_ecology
    ## 79                                                   BedsRock_ecology
    ## 80                                                 BedsOthers_ecology
    ## 81                                              ReefExclusive_ecology
    ## 82                                                   DropOffs_ecology
    ## 83                                                    Tunnels_ecology
    ## 84                                                   Crevices_ecology
    ## 85                                                      Vents_ecology
    ## 86                                                  Seamounts_ecology
    ## 87                                            DeepWaterCorals_ecology
    ## 88                                                     Leaves_ecology
    ## 89                                                      Roots_ecology
    ## 90                                                  Driftwood_ecology
    ## 91                                            OInverterbrates_ecology
    ## 92                                               Verterbrates_ecology
    ## 93                                                    Pilings_ecology
    ## 94                                                  BoatHulls_ecology
    ## 95                                                     Corals_ecology
    ## 96                                                 SoftCorals_ecology
    ## 97                                                    OnPolyp_ecology
    ## 98                                              BetweenPolyps_ecology
    ## 99                                                 HardCorals_ecology
    ## 100                                             OnExoskeleton_ecology
    ## 101                                        InterstitialSpaces_ecology
    ## 137                                                        K_estimate
    ## 550                                     RepGuild1bearers_reproduction
    ## 551                                    RepGuild1guarders_reproduction
    ## 552                                 RepGuild1nonguarders_reproduction
    ## 9                                           SupraLittoralZone_ecology
    ## 10                                                Saltmarshes_ecology
    ## 11                                               LittoralZone_ecology
    ## 12                                                      Caves_ecology
    ## 13                                                    Oceanic_ecology
    ## 14                                                 Epipelagic_ecology
    ## 15                                                Mesopelagic_ecology
    ## 16                                                  Mangroves_ecology
    ## 17                                              MarshesSwamps_ecology
    ## 18                                                       Cave_ecology
    ## 19                                                   Solitary_ecology
    ## 20                                                   Shoaling_ecology
    ## 21                                                    Benthic_ecology
    ## 22                                                     Mobile_ecology
    ## 23                                                 SoftBottom_ecology
    ## 24                                                       Sand_ecology
    ## 25                                                        Mud_ecology
    ## 26                                                 HardBottom_ecology
    ## 27                                                      Rocky_ecology
    ## 28                                                     Rubble_ecology
    ## 29                                                 Macrophyte_ecology
    ## 30                                               SeaGrassBeds_ecology
    ## 31                                                 CoralReefs_ecology
    ## 32                                                  ReefFlats_ecology
    ## 33                                                    Lagoons_ecology
    ## 34                                                    Burrows_ecology
    ## 35                                                 Vegetation_ecology
    ## 36                                                      Stems_ecology
    ## 290                                                Females_morphology
    ## 291                                                  Males_morphology
    ## 292                                       OperculumPresent_morphology
    ## 293                                          LLinterrupted_morphology
    ## 613                                               Northernmost_stocks
    ## 614                                                Southermost_stocks
    ## 53                                                  FoodTroph_ecology
    ## 54                                                FoodSeTroph_ecology
    ## 289                                                Notched_morphology
    ## 353                                     BodyShapeIeel.like_morphology
    ## 354                                    BodyShapeIelongated_morphology
    ## 355                            BodyShapeIfusiform...normal_morphology
    ## 356                                        BodyShapeIother_morphology
    ## 357                          BodyShapeIshort.and...or.deep_morphology
    ## 105                                            Coastline_distribution
    ## 107                                              EEZarea_distribution
    ## 179                                           FoodIdetritus_fooditems
    ## 180                                             FoodInekton_fooditems
    ## 181                                             FoodIothers_fooditems
    ## 182                                             FoodIplants_fooditems
    ## 183                                         FoodIzoobenthos_fooditems
    ## 184                                        FoodIzooplankton_fooditems
    ## 185                                         PreyStageadults_fooditems
    ## 186                                           PreyStageeggs_fooditems
    ## 187                                   PreyStagefruits.seeds_fooditems
    ## 188                                    PreyStagejuv..adults_fooditems
    ## 189                                         PreyStagelarvae_fooditems
    ## 190                                  PreyStageleaves.blades_fooditems
    ## 191                                    PreyStagen.a..others_fooditems
    ## 192                                         PreyStagenymphs_fooditems
    ## 193                                          PreyStagepupae_fooditems
    ## 194                                  PreyStagerecruits.juv._fooditems
    ## 195                                          PreyStageroots_fooditems
    ## 315                                                 Dfinno_morphology
    ## 277                                                   a_length_weight
    ## 279                                                   b_length_weight
    ## 617                                                    TempMin_stocks
    ## 618                                                    TempMax_stocks
    ## 531                                        ParentalCareQ_reproduction
    ## 553                               ParentalCarebiparental_reproduction
    ## 554                                 ParentalCarematernal_reproduction
    ## 555                                     ParentalCarenone_reproduction
    ## 556                                 ParentalCarepaternal_reproduction
    ## 447                                                      Lmax_popchar
    ## 143                                                 DepthMin_estimate
    ## 280                                  CoeffDetermination_length_weight
    ## 324                                                 Afinno_morphology
    ## 413                               PectoralAttributesabsent_morphology
    ## 414                  PectoralAttributesmore.or.less.normal_morphology
    ## 415           PectoralAttributestransformed.to..aerofoils._morphology
    ## 416                  PectoralAttributesused.for.locomotion_morphology
    ## 417               PectoralAttributesvery.large...lobe.like_morphology
    ## 316                                        DorsalSpinesMin_morphology
    ## 317                                        DorsalSpinesMax_morphology
    ## 318                                      DorsalSoftRaysMin_morphology
    ## 319                                      DorsalSoftRaysMax_morphology
    ## 406                                                 Adifin_morphology
    ## 407                                           CShapeforked_morphology
    ## 408                            CShapemore.or.less.truncate_morphology
    ## 409                               CShapeother..see.remark._morphology
    ## 410                                          CShapepointed_morphology
    ## 418                   PelvicsAttributesmore.or.less.normal_morphology
    ## 419                     PelvicsAttributessuppressed.absent_morphology
    ## 327                                                Araymin_morphology
    ## 420                                     VPositionabdominal_morphology
    ## 421                                        VPositionabsent_morphology
    ## 422                                       VPositionjugular_morphology
    ## 423                                      VPositionthoracic_morphology
    ## 562                                                      GSI_spawning
    ## 563                                           PercentFemales_spawning
    ## 615                                                Westernmost_stocks
    ## 616                                                Easternmost_stocks
    ## 328                                                Araymax_morphology
    ## 140                                              ComDepthMax_estimate
    ## 144                                                 DepthMax_estimate
    ## 451                                                LinfLmax_popgrowth
    ## 452                                                     Loo_popgrowth
    ## 456                                                       K_popgrowth
    ## 139                                              ComDepthMin_estimate
    ## 157                                            FecundityMin_fecundity
    ## 197                                           EstabAqua_introductions
    ## 198                                            Invasive_introductions
    ## 201                                  Period18th.century_introductions
    ## 202                                     Period1900.1924_introductions
    ## 203                                     Period1925.1949_introductions
    ## 204                                     Period1950.1974_introductions
    ## 205                                     Period1975.1999_introductions
    ## 206                                  Period19th.century_introductions
    ## 207                                  Period2000.present_introductions
    ## 208                              Periodpre.18th.century_introductions
    ## 209                                       Periodunknown_introductions
    ## 325                                       AnalFinSpinesMin_morphology
    ## 326                                       AnalFinSpinesMax_morphology
    ## 149                                                   AgeMin_estimate
    ## 210                                    Reasonaccidental_introductions
    ## 211                         Reasonaccidental.with.ships_introductions
    ## 212                                 Reasonangling.sport_introductions
    ## 213                                   Reasonaquaculture_introductions
    ## 214                 Reasondiffused.from.other.countries_introductions
    ## 215                         Reasonfill.ecological.niche_introductions
    ## 216                                     Reasonfisheries_introductions
    ## 217                                        Reasonforage_introductions
    ## 218                          Reasonlessepsian.migration_introductions
    ## 219                              Reasonmosquito.control_introductions
    ## 220                                       Reasonno.data_introductions
    ## 221                                    Reasonornamental_introductions
    ## 222                    Reasonremoval.of.natural.barrier_introductions
    ## 223                                      Reasonresearch_introductions
    ## 224                                       Reasonunknown_introductions
    ## 240                                Estabwildestablished_introductions
    ## 241                                         Estabwildno_introductions
    ## 242                                    Estabwildno.data_introductions
    ## 243                            Estabwildnot.established_introductions
    ## 244                       Estabwildprobably.established_introductions
    ## 245                                Estabwildprobably.no_introductions
    ## 246                   Estabwildprobably.not.established_introductions
    ## 247                               Estabwildprobably.yes_introductions
    ## 248                                    Estabwildunknown_introductions
    ## 249                                        Estabwildyes_introductions
    ## 329                                                Praymin_morphology
    ## 330                                                Praymax_morphology
    ## 160                                            FecundityMax_fecundity
    ## 284                                                LCLa_length_weight
    ## 285                                                UCLa_length_weight
    ## 286                                                LCLb_length_weight
    ## 287                                                UCLb_length_weight
    ## 411                                    Attributesconfluent_morphology
    ## 412                          Attributesmore.or.less.normal_morphology
    ## 494                                                  predator_mammals
    ## 499                                       Predatstageadults_predators
    ## 500                                  Predatstagejuv..adults_predators
    ## 501                                       Predatstagelarvae_predators
    ## 502                                Predatstagerecruits.juv._predators
    ## 503                                          PredatorIbirds_predators
    ## 504                                    PredatorIcrustaceans_predators
    ## 505                                        PredatorIfinfish_predators
    ## 506                                          PredatorIherps_predators
    ## 507                                        PredatorIinsects_predators
    ## 508                                        PredatorImammals_predators
    ## 509                                       PredatorImollusks_predators
    ## 510                                          PredatorIother_predators
    ## 511                                         PreyStageadults_predators
    ## 512                                           PreyStageeggs_predators
    ## 513                                    PreyStagejuv..adults_predators
    ## 514                                         PreyStagelarvae_predators
    ## 515                                  PreyStagerecruits.juv._predators
    ## 654                                                      January_diet
    ## 655                                                     February_diet
    ## 656                                                        March_diet
    ## 657                                                        April_diet
    ## 658                                                          May_diet
    ## 659                                                         June_diet
    ## 660                                                         July_diet
    ## 661                                                       August_diet
    ## 662                                                    September_diet
    ## 663                                                      October_diet
    ## 664                                                     November_diet
    ## 665                                                     December_diet
    ## 668                                                        Troph_diet
    ## 669                                                      seTroph_diet
    ## 673                                            SampleStageadults_diet
    ## 674                                       SampleStagejuv..adults_diet
    ## 675                                            SampleStagelarvae_diet
    ## 676                                     SampleStagerecruits.juv._diet
    ## 321                                            DFinletsmax_morphology
    ## 323                                            VFinletsmax_morphology
    ## 425                                                     Weight_oxygen
    ## 426                                                       Temp_oxygen
    ## 430                                                 OxygenCons_oxygen
    ## 455                                              TLinfinity_popgrowth
    ## 672                                                   FishLength_diet
    ## 150                                                   AgeMax_estimate
    ## 151                                              TempPrefMin_estimate
    ## 152                                             TempPrefMean_estimate
    ## 153                                              TempPrefMax_estimate
    ## 278                                                 aTL_length_weight
    ## 400             DorsalAttributescontinuous.with.caudal.fin_morphology
    ## 401 DorsalAttributesextending.over.most.of.the.back.length_morphology
    ## 402              DorsalAttributesgreatly.reduced.or.absent_morphology
    ## 403               DorsalAttributesmodified.to.suction.disc_morphology
    ## 404                 DorsalAttributesno.striking.attributes_morphology
    ## 405                                  DorsalAttributesother_morphology
    ## 567                                                      Apr_spawning
    ## 138                                                     Winf_estimate
    ## 320                                            DFinletsmin_morphology
    ## 322                                            VFinletsmin_morphology
    ## 478                                             Temperature_popgrowth
    ## 568                                                      May_spawning
    ## 569                                                      Jun_spawning
    ## 361                        PosofMouthsub.terminal.inferior_morphology
    ## 362                                     PosofMouthsuperior_morphology
    ## 363                                     PosofMouthterminal_morphology
    ## 49                                                  DietTroph_ecology
    ## 332                                                Vraymin_morphology
    ## 333                                                Vraymax_morphology
    ## 348                                   StrikingFeaturesnone_morphology
    ## 349                  StrikingFeaturesother..see.diagnosis._morphology
    ## 350                          StrikingFeaturesstriking.eyes_morphology
    ## 351                          StrikingFeaturesstriking.fins_morphology
    ## 352                 StrikingFeaturesstriking.shape.of.body_morphology
    ## 546                     Spawningno.obvious.seasonal.peak_reproduction
    ## 547                           Spawningonce.in.a.lifetime_reproduction
    ## 548             Spawningone.clear.seasonal.peak.per.year_reproduction
    ## 549        Spawningthroughout.the.year..but.peaking.once_reproduction
    ## 566                                                      Mar_spawning
    ## 666                                                   OtherItems_diet
    ## 670                                                      SizeMin_diet
    ## 671                                                      SizeMax_diet
    ## 51                                                    DietTLu_ecology
    ## 52                                                  DietseTLu_ecology
    ## 331                                                Vspines_morphology
    ## 432                                       AppliedStressfeeding_oxygen
    ## 433                                       AppliedStresshigh.ph_oxygen
    ## 434                                   AppliedStresshypercapnia_oxygen
    ## 435                                       AppliedStresshypoxia_oxygen
    ## 436                                        AppliedStresslow.ph_oxygen
    ## 437                                AppliedStressnone.specified_oxygen
    ## 438                                         AppliedStressother_oxygen
    ## 439                                  AppliedStressother.stress_oxygen
    ## 440                                   AppliedStressphotoperiod_oxygen
    ## 441                                      AppliedStresssalinity_oxygen
    ## 442                                      AppliedStresssedative_oxygen
    ## 443                                   AppliedStresstemperature_oxygen
    ## 444                                        AppliedStresstoxins_oxygen
    ## 2                                                   BodyWeight_brains
    ## 3                                                     EncCoeff_brains
    ## 358                                Foreheadclearly.concave_morphology
    ## 359                                 Foreheadclearly.convex_morphology
    ## 360                          Foreheadmore.or.less.straight_morphology
    ## 446                                                      Wmax_popchar
    ## 578                                             FecundityMin_spawning
    ## 427                                                   Salinity_oxygen
    ## 448                                                      tmax_popchar
    ## 466                                              LogKLogLoo_popgrowth
    ## 581                                             FecundityMax_spawning
    ## 679             AdultTypemovements.of.body.and.or.caudal.fin_swimming
    ## 680          AdultTypeoscillation.of.median.or.pectoral.fins_swimming
    ## 681           AdultTypeundulation.of.median.or.pectoral.fins_swimming
    ## 682                                    AdultModeanguilliform_swimming
    ## 683                                     AdultModebalistiform_swimming
    ## 684                                     AdultModecarangiform_swimming
    ## 685                                    AdultModediodontiform_swimming
    ## 686                                     AdultModegymnotiform_swimming
    ## 687                                       AdultModelabriform_swimming
    ## 688                                        AdultModerajiform_swimming
    ## 689                                  AdultModesubcarangiform_swimming
    ## 50                                                DietSeTroph_ecology
    ## 200                                            RangeMax_introductions
    ## 275                                           LengthMin_length_weight
    ## 276                                           LengthMax_length_weight
    ## 570                                                      Jul_spawning
    ## 199                                            RangeMin_introductions
    ## 382                                          HorStripesTTI_morphology
    ## 383                                    VerStripesTTIabsent_morphology
    ## 384                                   VerStripesTTIpresent_morphology
    ## 385                                          DiaStripesTTI_morphology
    ## 386                                          CurStripesTTI_morphology
    ## 573                                                      Oct_spawning
    ## 623                                                      pHMax_stocks
    ## 307                                              BarbelsNo_morphology
    ## 393                 CaudalFinImore.than.one.spot.or.stripe_morphology
    ## 394                          CaudalFinIno.spots.or.stripes_morphology
    ## 395                           CaudalFinIone.spot.or.stripe_morphology
    ## 465                                               Winfinity_popgrowth
    ## 497                                             PredatTroph_predators
    ## 498                                           PredatseTroph_predators
    ## 565                                                      Feb_spawning
    ## 572                                                      Sep_spawning
    ## 574                                                      Nov_spawning
    ## 622                                                      pHMin_stocks
    ## 625                                                      dHMax_stocks
    ## 387                             SpotsTTImore.than.one.spot_morphology
    ## 388                                       SpotsTTIno.spots_morphology
    ## 389                                  SpotsTTIone.spot.only_morphology
    ## 396                   AnalFinImore.than.one.spot.or.stripe_morphology
    ## 397                            AnalFinIno.spots.or.stripes_morphology
    ## 398                             AnalFinIone.spot.or.stripe_morphology
    ## 428                                                     Oxygen_oxygen
    ## 467                                                       b_popgrowth
    ## 571                                                      Aug_spawning
    ## 390                 DorsalFinImore.than.one.spot.or.stripe_morphology
    ## 391                          DorsalFinIno.spots.or.stripes_morphology
    ## 392                           DorsalFinIone.spot.or.stripe_morphology
    ## 469                                                    tmax_popgrowth
    ## 667                                                 PercentEmpty_diet
    ## 177                                          SpawningCycles_fecundity
    ## 542                                 MatingSystemmonogamy_reproduction
    ## 543                                MatingSystempolyandry_reproduction
    ## 544                                 MatingSystempolygyny_reproduction
    ## 545                              MatingSystempromiscuity_reproduction
    ## 575                                                      Dec_spawning
    ## 598                                    SpawningGroundcoastal_spawning
    ## 599                                  SpawningGroundestuarine_spawning
    ## 600                                 SpawningGroundlacustrine_spawning
    ## 601                                   SpawningGroundriverine_spawning
    ## 602                                      SpawningGroundshelf_spawning
    ## 624                                                      dHMin_stocks
    ## 380                                           Scutesabsent_morphology
    ## 381                                      Scutesalong.belly_morphology
    ## 282                                                 SEb_length_weight
    ## 309                                       GillRakersLowMin_morphology
    ## 310                                       GillRakersLowMax_morphology
    ## 429                                                  Oxygenmgl_oxygen
    ## 471                                                       M_popgrowth
    ## 530                                        MatingQuality_reproduction
    ## 557                                      RepAquariumhigh_reproduction
    ## 558                                       RepAquariumlow_reproduction
    ## 559                                    RepAquariummedium_reproduction
    ## 560                              RepAquariumnever.rarely_reproduction
    ## 564                                                      Jan_spawning
    ## 576                                                  TempLow_spawning
    ## 577                                                 TempHigh_spawning
    ## 584                                           SpawningCycles_spawning
    ## 619                                              TempPreferred_stocks
    ## 298                                                  Keels_morphology
    ## 313                                     GillRakersTotalMin_morphology
    ## 314                                     GillRakersTotalMax_morphology
    ## 472                                                      Lm_popgrowth
    ## 620                                                 TempPref50_stocks
    ## 621                                                 TempPref75_stocks
    ## 364                                    MandibleTeethabsent_morphology
    ## 365                                   MandibleTeethpresent_morphology
    ## 370                                     MaxillaTeethabsent_morphology
    ## 371                                    MaxillaTeethpresent_morphology
    ## 159                                          LengthFecunMin_fecundity
    ## 162                                          LengthFecunMax_fecundity
    ## 301                                      ScaleRowsAboveMin_morphology
    ## 302                                      ScaleRowsAboveMax_morphology
    ## 311                                        GillRakersUpMin_morphology
    ## 312                                        GillRakersUpMax_morphology
    ## 482                                                       PopQB_popqb
    ## 484                                                        Winf_popqb
    ## 485                                                           K_popqb
    ## 487                                                 Temperature_popqb
    ## 167                                               LengthMin_fecundity
    ## 168                                               LengthMax_fecundity
    ## 473                                                   LmLoo_popgrowth
    ## 490                                            Salinitybrackish_popqb
    ## 491                                          Salinityfreshwater_popqb
    ## 492                                            Salinityseawater_popqb
    ## 580                                           LengthFecunMin_spawning
    ## 583                                           LengthFecunMax_spawning
    ## 678                                              AspectRatio_swimming
    ## 5                                                           SL_brains
    ## 133                                                  prior_r_estimate
    ## 134                                                    lcl_r_estimate
    ## 135                                                    ucl_r_estimate
    ## 136                                                      n_r_estimate
    ## 164                                         RelFecundityMin_fecundity
    ## 303                                      ScaleRowsBelowMin_morphology
    ## 304                                      ScaleRowsBelowMax_morphology
    ## 4                                                     EncIndex_brains
    ## 6                                                           TL_brains
    ## 169                                                       a_fecundity
    ## 170                                                       b_fecundity
    ## 281                                                 SEa_length_weight
    ## 375                                          VomerineTeeth_morphology
    ## 488                                                   Mortality_popqb
    ## 489                                                           b_popqb
    ## 495                                                   DietP_predators
    ## 496                                               MaxLength_predators
    ## 591                                                LengthMin_spawning
    ## 592                                                LengthMax_spawning
    ## 595                                                CorrCoeff_spawning
    ## 637                                        IUCN_Assessmenta1bd_stocks
    ## 638                      IUCN_Assessmenta1ce.2ce..b1.2abc..c2a_stocks
    ## 639                                       IUCN_Assessmenta2ace_stocks
    ## 640                                         IUCN_Assessmenta2b_stocks
    ## 641                                   IUCN_Assessmenta2bd.4bcd_stocks
    ## 642                                    IUCN_Assessmenta2bd.4bd_stocks
    ## 643                                        IUCN_Assessmenta4cd_stocks
    ## 644                                   IUCN_Assessmentb2ab.iii._stocks
    ## 158                                               WeightMin_fecundity
    ## 166                                         RelFecundityMax_fecundity
    ## 342                                           MaximumDepth_morphology
    ## 450                                                      to_popgrowth
    ## 474                                                  LmMale_popgrowth
    ## 483                                                     MaintQB_popqb
    ## 486                                                          t0_popqb
    ## 579                                                WeightMin_spawning
    ## 588                                          RelFecundityMin_spawning
    ## 161                                               WeightMax_fecundity
    ## 299                                         PoredScalesMin_morphology
    ## 300                                         PoredScalesMax_morphology
    ## 376                                               Palatine_morphology
    ## 377                                  PharyngealTeethabsent_morphology
    ## 378                                 PharyngealTeethpresent_morphology
    ## 470                                                      tm_popgrowth
    ## 475                                               LmLooMale_popgrowth
    ## 476                                                LmFemale_popgrowth
    ## 480                                                      Rm_popgrowth
    ## 517                                                        Rd1_ration
    ## 519                                                        TBW_ration
    ## 520                                                      Water_ration
    ## 521                                                FoodInekton_ration
    ## 522                                                FoodIothers_ration
    ## 523                                            FoodIzoobenthos_ration
    ## 582                                                WeightMax_spawning
    ## 593                                                        a_spawning
    ## 594                                                        b_spawning
    ## 604                                                      Length_speed
    ## 605                                                     SpeedLS_speed
    ## 606                                                     Speedms_speed
    ## 609                                                   Modeburst_speed
    ## 610                                                   Modeother_speed
    ## 611                                               Modesustained_speed
    ## 165                                        RelFecundityMean_fecundity
    ## 305                                        ScalesPeduncMin_morphology
    ## 306                                        ScalesPeduncMax_morphology
    ## 366                             MandibleTeethT1bicuspidate_morphology
    ## 367                             MandibleTeethT1canine.like_morphology
    ## 368                                 MandibleTeethT1conical_morphology
    ## 369                            MandibleTeethT1tricuspidate_morphology
    ## 477                                             LmLooFemale_popgrowth
    ## 524                                           Salinitybrackish_ration
    ## 525                                         Salinityfreshwater_ration
    ## 526                                           Salinityseawater_ration
    ## 590                                          RelFecundityMax_spawning
    ## 607                                                         SLa_speed
    ## 608                                                         SLb_speed
    ## 261                                      EcolEffno.data_introductions
    ## 262                                         EcolEffnone_introductions
    ## 263                                EcolEffprobably.none_introductions
    ## 264                                EcolEffprobably.some_introductions
    ## 265                                         EcolEffsome_introductions
    ## 266                                      EcolEffunknown_introductions
    ## 267                                          EcolEffyes_introductions
    ## 268                                     SocioEffno.data_introductions
    ## 269                                        SocioEffnone_introductions
    ## 270                               SocioEffprobably.none_introductions
    ## 271                               SocioEffprobably.some_introductions
    ## 272                                        SocioEffsome_introductions
    ## 273                                     SocioEffunknown_introductions
    ## 308                                           GillCleftsNo_morphology
    ## 336                                             HeadLength_morphology
    ## 372                              MaxillaTeethT1canine.like_morphology
    ## 373                                  MaxillaTeethT1conical_morphology
    ## 374                             MaxillaTeethT1tricuspidate_morphology
    ## 399                                               Spiracle_morphology
    ## 431                                              SwimmingSpeed_oxygen
    ## 453                                                  SE_Loo_popgrowth
    ## 457                                                    SE_K_popgrowth
    ## 461                                                   SE_to_popgrowth
    ## 468                                                       C_popgrowth
    ## 479                                                  DeltaT_popgrowth
    ## 518                                                        GCE_ration
    ## 171                                                     SEa_fecundity
    ## 172                                                     SEb_fecundity
    ## 250                                   ComAquanever.used_introductions
    ## 251                                      ComAquano.data_introductions
    ## 252                                  ComAquararely.used_introductions
    ## 253                                      ComAquaunknown_introductions
    ## 254                                  ComAquawidely.used_introductions
    ## 255           ReproModeassisted.artificial.reproduction_introductions
    ## 256                         ReproModecontinuous.imports_introductions
    ## 257                       ReproModenatural.reproduction_introductions
    ## 258                                    ReproModeno.data_introductions
    ## 259                    ReproModeunassisted.reproduction_introductions
    ## 260                                    ReproModeunknown_introductions
    ## 283                                                 SDa_length_weight
    ## 294                                        MandibleRowsMin_morphology
    ## 295                                        MandibleRowsMax_morphology
    ## 296                                         MaxillaRowsMin_morphology
    ## 297                                         MaxillaRowsMax_morphology
    ## 334                                             Forklength_morphology
    ## 335                                            Totallength_morphology
    ## 337                                        PreDorsalLength_morphology
    ## 338                                       PrePelvicsLength_morphology
    ## 339                                          PreAnalLength_morphology
    ## 340                                          PostHeadDepth_morphology
    ## 341                                         PostTrunkDepth_morphology
    ## 343                                          PeduncleDepth_morphology
    ## 344                                         PeduncleLength_morphology
    ## 345                                           CaudalHeight_morphology
    ## 346                                       PreorbitalLength_morphology
    ## 347                                              EyeLength_morphology
    ## 379                                          TeethonTongue_morphology
    ## 459                                                   LCL_K_popgrowth
    ## 460                                                   UCL_K_popgrowth
    ## 463                                                  LCL_to_popgrowth
    ## 464                                                  UCL_to_popgrowth
    ## 585                                             GestationMin_spawning
    ## 589                                         RelFecundityMean_spawning
    ## 102                                  SchoolingFrequencyalways_ecology
    ## 103                               SchoolingFrequencysometimes_ecology
    ## 163                                           FecundityMean_fecundity
    ## 173                                                    LCLa_fecundity
    ## 174                                                    UCLa_fecundity
    ## 175                                                    LCLb_fecundity
    ## 176                                                    UCLb_fecundity
    ## 225                               OtherReasonaccidental_introductions
    ## 226                    OtherReasonaccidental.with.ships_introductions
    ## 227                            OtherReasonangling.sport_introductions
    ## 228                              OtherReasonaquaculture_introductions
    ## 229            OtherReasondiffused.from.other.countries_introductions
    ## 230                    OtherReasonfill.ecological.niche_introductions
    ## 231                                OtherReasonfisheries_introductions
    ## 232                                   OtherReasonforage_introductions
    ## 233                         OtherReasonmosquito.control_introductions
    ## 234                                  OtherReasonno.data_introductions
    ## 235                               OtherReasonornamental_introductions
    ## 236                            OtherReasonother.reasons_introductions
    ## 237                                 OtherReasonresearch_introductions
    ## 238                                  OtherReasonunknown_introductions
    ## 239                             OtherReasonweed.control_introductions
    ## 454                                                  SD_Loo_popgrowth
    ## 458                                                    SD_K_popgrowth
    ## 462                                                   SD_to_popgrowth
    ## 586                                             GestationMax_spawning
    ## 587                                       LengthOffspringMin_spawning
    ## 596                                            Dailyspawnmin_spawning
    ## 597                                            Dailyspawnmax_spawning
    ##     non_na_frac
    ## 1    1.00000000
    ## 7    1.00000000
    ## 8    1.00000000
    ## 104  1.00000000
    ## 106  1.00000000
    ## 108  1.00000000
    ## 109  1.00000000
    ## 110  1.00000000
    ## 111  1.00000000
    ## 112  1.00000000
    ## 123  1.00000000
    ## 124  1.00000000
    ## 125  1.00000000
    ## 126  1.00000000
    ## 127  1.00000000
    ## 128  1.00000000
    ## 141  1.00000000
    ## 142  1.00000000
    ## 145  1.00000000
    ## 146  1.00000000
    ## 147  1.00000000
    ## 148  1.00000000
    ## 154  1.00000000
    ## 155  1.00000000
    ## 156  1.00000000
    ## 178  1.00000000
    ## 196  1.00000000
    ## 274  1.00000000
    ## 288  1.00000000
    ## 424  1.00000000
    ## 445  1.00000000
    ## 449  1.00000000
    ## 481  1.00000000
    ## 493  1.00000000
    ## 516  1.00000000
    ## 527  1.00000000
    ## 561  1.00000000
    ## 603  1.00000000
    ## 612  1.00000000
    ## 626  1.00000000
    ## 627  1.00000000
    ## 628  1.00000000
    ## 629  1.00000000
    ## 630  1.00000000
    ## 631  1.00000000
    ## 632  1.00000000
    ## 633  1.00000000
    ## 634  1.00000000
    ## 635  1.00000000
    ## 636  1.00000000
    ## 645  1.00000000
    ## 646  1.00000000
    ## 647  1.00000000
    ## 648  1.00000000
    ## 649  1.00000000
    ## 653  1.00000000
    ## 677  1.00000000
    ## 690  1.00000000
    ## 113  0.95833333
    ## 114  0.95833333
    ## 115  0.95833333
    ## 116  0.95833333
    ## 117  0.95833333
    ## 118  0.95833333
    ## 119  0.95833333
    ## 120  0.95833333
    ## 121  0.95833333
    ## 122  0.95833333
    ## 129  0.95833333
    ## 130  0.95833333
    ## 131  0.95833333
    ## 132  0.95833333
    ## 650  0.90277778
    ## 651  0.90277778
    ## 652  0.90277778
    ## 528  0.88888889
    ## 529  0.88888889
    ## 532  0.88888889
    ## 533  0.88888889
    ## 534  0.88888889
    ## 535  0.88888889
    ## 536  0.88888889
    ## 537  0.88888889
    ## 538  0.88888889
    ## 539  0.88888889
    ## 540  0.88888889
    ## 541  0.88888889
    ## 37   0.87500000
    ## 38   0.87500000
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
    ## 55   0.87500000
    ## 56   0.87500000
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
    ## 137  0.86111111
    ## 550  0.86111111
    ## 551  0.86111111
    ## 552  0.86111111
    ## 9    0.84722222
    ## 10   0.84722222
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
    ## 290  0.84722222
    ## 291  0.84722222
    ## 292  0.84722222
    ## 293  0.84722222
    ## 613  0.83333333
    ## 614  0.83333333
    ## 53   0.81944444
    ## 54   0.81944444
    ## 289  0.81944444
    ## 353  0.80555556
    ## 354  0.80555556
    ## 355  0.80555556
    ## 356  0.80555556
    ## 357  0.80555556
    ## 105  0.73611111
    ## 107  0.73611111
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
    ## 193  0.70833333
    ## 194  0.70833333
    ## 195  0.70833333
    ## 315  0.68055556
    ## 277  0.66666667
    ## 279  0.66666667
    ## 617  0.63888889
    ## 618  0.63888889
    ## 531  0.62500000
    ## 553  0.62500000
    ## 554  0.62500000
    ## 555  0.62500000
    ## 556  0.62500000
    ## 447  0.61111111
    ## 143  0.58333333
    ## 280  0.58333333
    ## 324  0.56944444
    ## 413  0.56944444
    ## 414  0.56944444
    ## 415  0.56944444
    ## 416  0.56944444
    ## 417  0.56944444
    ## 316  0.55555556
    ## 317  0.55555556
    ## 318  0.55555556
    ## 319  0.55555556
    ## 406  0.55555556
    ## 407  0.55555556
    ## 408  0.55555556
    ## 409  0.55555556
    ## 410  0.55555556
    ## 418  0.55555556
    ## 419  0.55555556
    ## 327  0.52777778
    ## 420  0.52777778
    ## 421  0.52777778
    ## 422  0.52777778
    ## 423  0.52777778
    ## 562  0.52777778
    ## 563  0.52777778
    ## 615  0.52777778
    ## 616  0.52777778
    ## 328  0.51388889
    ## 140  0.47222222
    ## 144  0.47222222
    ## 451  0.47222222
    ## 452  0.47222222
    ## 456  0.47222222
    ## 139  0.45833333
    ## 157  0.45833333
    ## 197  0.45833333
    ## 198  0.45833333
    ## 201  0.45833333
    ## 202  0.45833333
    ## 203  0.45833333
    ## 204  0.45833333
    ## 205  0.45833333
    ## 206  0.45833333
    ## 207  0.45833333
    ## 208  0.45833333
    ## 209  0.45833333
    ## 325  0.45833333
    ## 326  0.45833333
    ## 149  0.44444444
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
    ## 222  0.44444444
    ## 223  0.44444444
    ## 224  0.44444444
    ## 240  0.44444444
    ## 241  0.44444444
    ## 242  0.44444444
    ## 243  0.44444444
    ## 244  0.44444444
    ## 245  0.44444444
    ## 246  0.44444444
    ## 247  0.44444444
    ## 248  0.44444444
    ## 249  0.44444444
    ## 329  0.44444444
    ## 330  0.43055556
    ## 160  0.41666667
    ## 284  0.41666667
    ## 285  0.41666667
    ## 286  0.41666667
    ## 287  0.41666667
    ## 411  0.40277778
    ## 412  0.40277778
    ## 494  0.40277778
    ## 499  0.40277778
    ## 500  0.40277778
    ## 501  0.40277778
    ## 502  0.40277778
    ## 503  0.40277778
    ## 504  0.40277778
    ## 505  0.40277778
    ## 506  0.40277778
    ## 507  0.40277778
    ## 508  0.40277778
    ## 509  0.40277778
    ## 510  0.40277778
    ## 511  0.40277778
    ## 512  0.40277778
    ## 513  0.40277778
    ## 514  0.40277778
    ## 515  0.40277778
    ## 654  0.40277778
    ## 655  0.40277778
    ## 656  0.40277778
    ## 657  0.40277778
    ## 658  0.40277778
    ## 659  0.40277778
    ## 660  0.40277778
    ## 661  0.40277778
    ## 662  0.40277778
    ## 663  0.40277778
    ## 664  0.40277778
    ## 665  0.40277778
    ## 668  0.40277778
    ## 669  0.40277778
    ## 673  0.40277778
    ## 674  0.40277778
    ## 675  0.40277778
    ## 676  0.40277778
    ## 321  0.38888889
    ## 323  0.38888889
    ## 425  0.38888889
    ## 426  0.38888889
    ## 430  0.38888889
    ## 455  0.38888889
    ## 672  0.38888889
    ## 150  0.37500000
    ## 151  0.37500000
    ## 152  0.37500000
    ## 153  0.37500000
    ## 278  0.37500000
    ## 400  0.37500000
    ## 401  0.37500000
    ## 402  0.37500000
    ## 403  0.37500000
    ## 404  0.37500000
    ## 405  0.37500000
    ## 567  0.37500000
    ## 138  0.36111111
    ## 320  0.36111111
    ## 322  0.36111111
    ## 478  0.36111111
    ## 568  0.36111111
    ## 569  0.36111111
    ## 361  0.34722222
    ## 362  0.34722222
    ## 363  0.34722222
    ## 49   0.33333333
    ## 332  0.33333333
    ## 333  0.33333333
    ## 348  0.33333333
    ## 349  0.33333333
    ## 350  0.33333333
    ## 351  0.33333333
    ## 352  0.33333333
    ## 546  0.33333333
    ## 547  0.33333333
    ## 548  0.33333333
    ## 549  0.33333333
    ## 566  0.33333333
    ## 666  0.33333333
    ## 670  0.33333333
    ## 671  0.33333333
    ## 51   0.31944444
    ## 52   0.31944444
    ## 331  0.31944444
    ## 432  0.31944444
    ## 433  0.31944444
    ## 434  0.31944444
    ## 435  0.31944444
    ## 436  0.31944444
    ## 437  0.31944444
    ## 438  0.31944444
    ## 439  0.31944444
    ## 440  0.31944444
    ## 441  0.31944444
    ## 442  0.31944444
    ## 443  0.31944444
    ## 444  0.31944444
    ## 2    0.30555556
    ## 3    0.30555556
    ## 358  0.30555556
    ## 359  0.30555556
    ## 360  0.30555556
    ## 446  0.30555556
    ## 578  0.30555556
    ## 427  0.29166667
    ## 448  0.29166667
    ## 466  0.29166667
    ## 581  0.29166667
    ## 679  0.29166667
    ## 680  0.29166667
    ## 681  0.29166667
    ## 682  0.29166667
    ## 683  0.29166667
    ## 684  0.29166667
    ## 685  0.29166667
    ## 686  0.29166667
    ## 687  0.29166667
    ## 688  0.29166667
    ## 689  0.29166667
    ## 50   0.27777778
    ## 200  0.27777778
    ## 275  0.27777778
    ## 276  0.27777778
    ## 570  0.27777778
    ## 199  0.26388889
    ## 382  0.26388889
    ## 383  0.26388889
    ## 384  0.26388889
    ## 385  0.26388889
    ## 386  0.26388889
    ## 573  0.26388889
    ## 623  0.26388889
    ## 307  0.25000000
    ## 393  0.25000000
    ## 394  0.25000000
    ## 395  0.25000000
    ## 465  0.25000000
    ## 497  0.25000000
    ## 498  0.25000000
    ## 565  0.25000000
    ## 572  0.25000000
    ## 574  0.25000000
    ## 622  0.25000000
    ## 625  0.25000000
    ## 387  0.23611111
    ## 388  0.23611111
    ## 389  0.23611111
    ## 396  0.23611111
    ## 397  0.23611111
    ## 398  0.23611111
    ## 428  0.23611111
    ## 467  0.23611111
    ## 571  0.23611111
    ## 390  0.22222222
    ## 391  0.22222222
    ## 392  0.22222222
    ## 469  0.22222222
    ## 667  0.22222222
    ## 177  0.20833333
    ## 542  0.20833333
    ## 543  0.20833333
    ## 544  0.20833333
    ## 545  0.20833333
    ## 575  0.20833333
    ## 598  0.20833333
    ## 599  0.20833333
    ## 600  0.20833333
    ## 601  0.20833333
    ## 602  0.20833333
    ## 624  0.20833333
    ## 380  0.19444444
    ## 381  0.19444444
    ## 282  0.18055556
    ## 309  0.18055556
    ## 310  0.18055556
    ## 429  0.18055556
    ## 471  0.18055556
    ## 530  0.18055556
    ## 557  0.18055556
    ## 558  0.18055556
    ## 559  0.18055556
    ## 560  0.18055556
    ## 564  0.18055556
    ## 576  0.18055556
    ## 577  0.18055556
    ## 584  0.18055556
    ## 619  0.18055556
    ## 298  0.16666667
    ## 313  0.16666667
    ## 314  0.16666667
    ## 472  0.16666667
    ## 620  0.16666667
    ## 621  0.16666667
    ## 364  0.15277778
    ## 365  0.15277778
    ## 370  0.15277778
    ## 371  0.15277778
    ## 159  0.13888889
    ## 162  0.13888889
    ## 301  0.13888889
    ## 302  0.13888889
    ## 311  0.13888889
    ## 312  0.13888889
    ## 482  0.13888889
    ## 484  0.13888889
    ## 485  0.13888889
    ## 487  0.13888889
    ## 167  0.12500000
    ## 168  0.12500000
    ## 473  0.12500000
    ## 490  0.12500000
    ## 491  0.12500000
    ## 492  0.12500000
    ## 580  0.12500000
    ## 583  0.12500000
    ## 678  0.12500000
    ## 5    0.11111111
    ## 133  0.11111111
    ## 134  0.11111111
    ## 135  0.11111111
    ## 136  0.11111111
    ## 164  0.11111111
    ## 303  0.11111111
    ## 304  0.11111111
    ## 4    0.09722222
    ## 6    0.09722222
    ## 169  0.09722222
    ## 170  0.09722222
    ## 281  0.09722222
    ## 375  0.09722222
    ## 488  0.09722222
    ## 489  0.09722222
    ## 495  0.09722222
    ## 496  0.09722222
    ## 591  0.09722222
    ## 592  0.09722222
    ## 595  0.09722222
    ## 637  0.09722222
    ## 638  0.09722222
    ## 639  0.09722222
    ## 640  0.09722222
    ## 641  0.09722222
    ## 642  0.09722222
    ## 643  0.09722222
    ## 644  0.09722222
    ## 158  0.08333333
    ## 166  0.08333333
    ## 342  0.08333333
    ## 450  0.08333333
    ## 474  0.08333333
    ## 483  0.08333333
    ## 486  0.08333333
    ## 579  0.08333333
    ## 588  0.08333333
    ## 161  0.06944444
    ## 299  0.06944444
    ## 300  0.06944444
    ## 376  0.06944444
    ## 377  0.06944444
    ## 378  0.06944444
    ## 470  0.06944444
    ## 475  0.06944444
    ## 476  0.06944444
    ## 480  0.06944444
    ## 517  0.06944444
    ## 519  0.06944444
    ## 520  0.06944444
    ## 521  0.06944444
    ## 522  0.06944444
    ## 523  0.06944444
    ## 582  0.06944444
    ## 593  0.06944444
    ## 594  0.06944444
    ## 604  0.06944444
    ## 605  0.06944444
    ## 606  0.06944444
    ## 609  0.06944444
    ## 610  0.06944444
    ## 611  0.06944444
    ## 165  0.05555556
    ## 305  0.05555556
    ## 306  0.05555556
    ## 366  0.05555556
    ## 367  0.05555556
    ## 368  0.05555556
    ## 369  0.05555556
    ## 477  0.05555556
    ## 524  0.05555556
    ## 525  0.05555556
    ## 526  0.05555556
    ## 590  0.05555556
    ## 607  0.05555556
    ## 608  0.05555556
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
    ## 271  0.04166667
    ## 272  0.04166667
    ## 273  0.04166667
    ## 308  0.04166667
    ## 336  0.04166667
    ## 372  0.04166667
    ## 373  0.04166667
    ## 374  0.04166667
    ## 399  0.04166667
    ## 431  0.04166667
    ## 453  0.04166667
    ## 457  0.04166667
    ## 461  0.04166667
    ## 468  0.04166667
    ## 479  0.04166667
    ## 518  0.04166667
    ## 171  0.02777778
    ## 172  0.02777778
    ## 250  0.02777778
    ## 251  0.02777778
    ## 252  0.02777778
    ## 253  0.02777778
    ## 254  0.02777778
    ## 255  0.02777778
    ## 256  0.02777778
    ## 257  0.02777778
    ## 258  0.02777778
    ## 259  0.02777778
    ## 260  0.02777778
    ## 283  0.02777778
    ## 294  0.02777778
    ## 295  0.02777778
    ## 296  0.02777778
    ## 297  0.02777778
    ## 334  0.02777778
    ## 335  0.02777778
    ## 337  0.02777778
    ## 338  0.02777778
    ## 339  0.02777778
    ## 340  0.02777778
    ## 341  0.02777778
    ## 343  0.02777778
    ## 344  0.02777778
    ## 345  0.02777778
    ## 346  0.02777778
    ## 347  0.02777778
    ## 379  0.02777778
    ## 459  0.02777778
    ## 460  0.02777778
    ## 463  0.02777778
    ## 464  0.02777778
    ## 585  0.02777778
    ## 589  0.02777778
    ## 102  0.01388889
    ## 103  0.01388889
    ## 163  0.01388889
    ## 173  0.01388889
    ## 174  0.01388889
    ## 175  0.01388889
    ## 176  0.01388889
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
    ## 237  0.01388889
    ## 238  0.01388889
    ## 239  0.01388889
    ## 454  0.01388889
    ## 458  0.01388889
    ## 462  0.01388889
    ## 586  0.01388889
    ## 587  0.01388889
    ## 596  0.01388889
    ## 597  0.01388889

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

    ##   [1] "LengthFecunMin_fecundity"                               
    ##   [2] "LengthFecunMax_fecundity"                               
    ##   [3] "ScaleRowsAboveMin_morphology"                           
    ##   [4] "ScaleRowsAboveMax_morphology"                           
    ##   [5] "GillRakersUpMin_morphology"                             
    ##   [6] "GillRakersUpMax_morphology"                             
    ##   [7] "PopQB_popqb"                                            
    ##   [8] "Winf_popqb"                                             
    ##   [9] "K_popqb"                                                
    ##  [10] "Temperature_popqb"                                      
    ##  [11] "LengthMin_fecundity"                                    
    ##  [12] "LengthMax_fecundity"                                    
    ##  [13] "LmLoo_popgrowth"                                        
    ##  [14] "Salinitybrackish_popqb"                                 
    ##  [15] "Salinityfreshwater_popqb"                               
    ##  [16] "Salinityseawater_popqb"                                 
    ##  [17] "LengthFecunMin_spawning"                                
    ##  [18] "LengthFecunMax_spawning"                                
    ##  [19] "AspectRatio_swimming"                                   
    ##  [20] "SL_brains"                                              
    ##  [21] "prior_r_estimate"                                       
    ##  [22] "lcl_r_estimate"                                         
    ##  [23] "ucl_r_estimate"                                         
    ##  [24] "n_r_estimate"                                           
    ##  [25] "RelFecundityMin_fecundity"                              
    ##  [26] "ScaleRowsBelowMin_morphology"                           
    ##  [27] "ScaleRowsBelowMax_morphology"                           
    ##  [28] "EncIndex_brains"                                        
    ##  [29] "TL_brains"                                              
    ##  [30] "a_fecundity"                                            
    ##  [31] "b_fecundity"                                            
    ##  [32] "SEa_length_weight"                                      
    ##  [33] "VomerineTeeth_morphology"                               
    ##  [34] "Mortality_popqb"                                        
    ##  [35] "b_popqb"                                                
    ##  [36] "DietP_predators"                                        
    ##  [37] "MaxLength_predators"                                    
    ##  [38] "LengthMin_spawning"                                     
    ##  [39] "LengthMax_spawning"                                     
    ##  [40] "CorrCoeff_spawning"                                     
    ##  [41] "IUCN_Assessmenta1bd_stocks"                             
    ##  [42] "IUCN_Assessmenta1ce.2ce..b1.2abc..c2a_stocks"           
    ##  [43] "IUCN_Assessmenta2ace_stocks"                            
    ##  [44] "IUCN_Assessmenta2b_stocks"                              
    ##  [45] "IUCN_Assessmenta2bd.4bcd_stocks"                        
    ##  [46] "IUCN_Assessmenta2bd.4bd_stocks"                         
    ##  [47] "IUCN_Assessmenta4cd_stocks"                             
    ##  [48] "IUCN_Assessmentb2ab.iii._stocks"                        
    ##  [49] "WeightMin_fecundity"                                    
    ##  [50] "RelFecundityMax_fecundity"                              
    ##  [51] "MaximumDepth_morphology"                                
    ##  [52] "to_popgrowth"                                           
    ##  [53] "LmMale_popgrowth"                                       
    ##  [54] "MaintQB_popqb"                                          
    ##  [55] "t0_popqb"                                               
    ##  [56] "WeightMin_spawning"                                     
    ##  [57] "RelFecundityMin_spawning"                               
    ##  [58] "WeightMax_fecundity"                                    
    ##  [59] "PoredScalesMin_morphology"                              
    ##  [60] "PoredScalesMax_morphology"                              
    ##  [61] "Palatine_morphology"                                    
    ##  [62] "PharyngealTeethabsent_morphology"                       
    ##  [63] "PharyngealTeethpresent_morphology"                      
    ##  [64] "tm_popgrowth"                                           
    ##  [65] "LmLooMale_popgrowth"                                    
    ##  [66] "LmFemale_popgrowth"                                     
    ##  [67] "Rm_popgrowth"                                           
    ##  [68] "Rd1_ration"                                             
    ##  [69] "TBW_ration"                                             
    ##  [70] "Water_ration"                                           
    ##  [71] "FoodInekton_ration"                                     
    ##  [72] "FoodIothers_ration"                                     
    ##  [73] "FoodIzoobenthos_ration"                                 
    ##  [74] "WeightMax_spawning"                                     
    ##  [75] "a_spawning"                                             
    ##  [76] "b_spawning"                                             
    ##  [77] "Length_speed"                                           
    ##  [78] "SpeedLS_speed"                                          
    ##  [79] "Speedms_speed"                                          
    ##  [80] "Modeburst_speed"                                        
    ##  [81] "Modeother_speed"                                        
    ##  [82] "Modesustained_speed"                                    
    ##  [83] "RelFecundityMean_fecundity"                             
    ##  [84] "ScalesPeduncMin_morphology"                             
    ##  [85] "ScalesPeduncMax_morphology"                             
    ##  [86] "MandibleTeethT1bicuspidate_morphology"                  
    ##  [87] "MandibleTeethT1canine.like_morphology"                  
    ##  [88] "MandibleTeethT1conical_morphology"                      
    ##  [89] "MandibleTeethT1tricuspidate_morphology"                 
    ##  [90] "LmLooFemale_popgrowth"                                  
    ##  [91] "Salinitybrackish_ration"                                
    ##  [92] "Salinityfreshwater_ration"                              
    ##  [93] "Salinityseawater_ration"                                
    ##  [94] "RelFecundityMax_spawning"                               
    ##  [95] "SLa_speed"                                              
    ##  [96] "SLb_speed"                                              
    ##  [97] "EcolEffno.data_introductions"                           
    ##  [98] "EcolEffnone_introductions"                              
    ##  [99] "EcolEffprobably.none_introductions"                     
    ## [100] "EcolEffprobably.some_introductions"                     
    ## [101] "EcolEffsome_introductions"                              
    ## [102] "EcolEffunknown_introductions"                           
    ## [103] "EcolEffyes_introductions"                               
    ## [104] "SocioEffno.data_introductions"                          
    ## [105] "SocioEffnone_introductions"                             
    ## [106] "SocioEffprobably.none_introductions"                    
    ## [107] "SocioEffprobably.some_introductions"                    
    ## [108] "SocioEffsome_introductions"                             
    ## [109] "SocioEffunknown_introductions"                          
    ## [110] "GillCleftsNo_morphology"                                
    ## [111] "HeadLength_morphology"                                  
    ## [112] "MaxillaTeethT1canine.like_morphology"                   
    ## [113] "MaxillaTeethT1conical_morphology"                       
    ## [114] "MaxillaTeethT1tricuspidate_morphology"                  
    ## [115] "Spiracle_morphology"                                    
    ## [116] "SwimmingSpeed_oxygen"                                   
    ## [117] "SE_Loo_popgrowth"                                       
    ## [118] "SE_K_popgrowth"                                         
    ## [119] "SE_to_popgrowth"                                        
    ## [120] "C_popgrowth"                                            
    ## [121] "DeltaT_popgrowth"                                       
    ## [122] "GCE_ration"                                             
    ## [123] "SEa_fecundity"                                          
    ## [124] "SEb_fecundity"                                          
    ## [125] "ComAquanever.used_introductions"                        
    ## [126] "ComAquano.data_introductions"                           
    ## [127] "ComAquararely.used_introductions"                       
    ## [128] "ComAquaunknown_introductions"                           
    ## [129] "ComAquawidely.used_introductions"                       
    ## [130] "ReproModeassisted.artificial.reproduction_introductions"
    ## [131] "ReproModecontinuous.imports_introductions"              
    ## [132] "ReproModenatural.reproduction_introductions"            
    ## [133] "ReproModeno.data_introductions"                         
    ## [134] "ReproModeunassisted.reproduction_introductions"         
    ## [135] "ReproModeunknown_introductions"                         
    ## [136] "SDa_length_weight"                                      
    ## [137] "MandibleRowsMin_morphology"                             
    ## [138] "MandibleRowsMax_morphology"                             
    ## [139] "MaxillaRowsMin_morphology"                              
    ## [140] "MaxillaRowsMax_morphology"                              
    ## [141] "Forklength_morphology"                                  
    ## [142] "Totallength_morphology"                                 
    ## [143] "PreDorsalLength_morphology"                             
    ## [144] "PrePelvicsLength_morphology"                            
    ## [145] "PreAnalLength_morphology"                               
    ## [146] "PostHeadDepth_morphology"                               
    ## [147] "PostTrunkDepth_morphology"                              
    ## [148] "PeduncleDepth_morphology"                               
    ## [149] "PeduncleLength_morphology"                              
    ## [150] "CaudalHeight_morphology"                                
    ## [151] "PreorbitalLength_morphology"                            
    ## [152] "EyeLength_morphology"                                   
    ## [153] "TeethonTongue_morphology"                               
    ## [154] "LCL_K_popgrowth"                                        
    ## [155] "UCL_K_popgrowth"                                        
    ## [156] "LCL_to_popgrowth"                                       
    ## [157] "UCL_to_popgrowth"                                       
    ## [158] "GestationMin_spawning"                                  
    ## [159] "RelFecundityMean_spawning"                              
    ## [160] "SchoolingFrequencyalways_ecology"                       
    ## [161] "SchoolingFrequencysometimes_ecology"                    
    ## [162] "FecundityMean_fecundity"                                
    ## [163] "LCLa_fecundity"                                         
    ## [164] "UCLa_fecundity"                                         
    ## [165] "LCLb_fecundity"                                         
    ## [166] "UCLb_fecundity"                                         
    ## [167] "OtherReasonaccidental_introductions"                    
    ## [168] "OtherReasonaccidental.with.ships_introductions"         
    ## [169] "OtherReasonangling.sport_introductions"                 
    ## [170] "OtherReasonaquaculture_introductions"                   
    ## [171] "OtherReasondiffused.from.other.countries_introductions" 
    ## [172] "OtherReasonfill.ecological.niche_introductions"         
    ## [173] "OtherReasonfisheries_introductions"                     
    ## [174] "OtherReasonforage_introductions"                        
    ## [175] "OtherReasonmosquito.control_introductions"              
    ## [176] "OtherReasonno.data_introductions"                       
    ## [177] "OtherReasonornamental_introductions"                    
    ## [178] "OtherReasonother.reasons_introductions"                 
    ## [179] "OtherReasonresearch_introductions"                      
    ## [180] "OtherReasonunknown_introductions"                       
    ## [181] "OtherReasonweed.control_introductions"                  
    ## [182] "SD_Loo_popgrowth"                                       
    ## [183] "SD_K_popgrowth"                                         
    ## [184] "SD_to_popgrowth"                                        
    ## [185] "GestationMax_spawning"                                  
    ## [186] "LengthOffspringMin_spawning"                            
    ## [187] "Dailyspawnmin_spawning"                                 
    ## [188] "Dailyspawnmax_spawning"

``` r
print(DF_fields_rm[str_which(names_rm, "oxygen"),])
```

    ##                    field non_na_frac
    ## 431 SwimmingSpeed_oxygen  0.04166667

``` r
keep = setdiff(names(out), names_rm)
out = out[, keep]
dim(out)
```

    ## [1]  72 502

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

    ## [1] 353

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
    ##  [1] "Weight_oxygen"                      "Temp_oxygen"                       
    ##  [3] "Salinity_oxygen"                    "Oxygen_oxygen"                     
    ##  [5] "Oxygenmgl_oxygen"                   "OxygenCons_oxygen"                 
    ##  [7] "AppliedStresshigh.ph_oxygen"        "AppliedStresshypercapnia_oxygen"   
    ##  [9] "AppliedStresshypoxia_oxygen"        "AppliedStresslow.ph_oxygen"        
    ## [11] "AppliedStressnone.specified_oxygen" "AppliedStressother_oxygen"         
    ## [13] "AppliedStressother.stress_oxygen"   "AppliedStresstemperature_oxygen"   
    ## [15] "record_count_species_oxygen"       
    ## character(0)
    ## character(0)
    ## [1] "BodyWeight_brains"           "EncCoeff_brains"            
    ## [3] "record_count_species_brains"
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
    ## [19] "FishLength_diet"               "SampleStageadults_diet"       
    ## [21] "SampleStagejuv..adults_diet"   "SampleStagelarvae_diet"       
    ## [23] "SampleStagerecruits.juv._diet" "record_count_species_diet"    
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
    ## [1] "PreyStageeggs_fooditems" "PreyStageeggs_predators"
    ## character(0)
    ## [1] "BodyWeight_brains"
    ## [1] "BodyWeight_brains"           "EncCoeff_brains"            
    ## [3] "record_count_species_brains"
    ## [1] "MaxLengthTL_estimate"    "MaxLengthSL_estimate"   
    ## [3] "LengthMin_length_weight" "LengthMax_length_weight"
    ## [5] "LengthWeight_stocks"     "LengthRelations_stocks" 
    ## [7] "LengthFrequency_stocks"  "FishLength_diet"

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
#which(ACE2$Species =="Astatotilapia burtoni")

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

\#\#add AA value to rest of fishbase data

``` r
A <- read.csv("docking_results_AA_30_83.csv")

keep = c("Species", "AA_30_positive", "Order", "Class")

A = A[,keep]
Species = A$Species
sp_ind = which(names(A)=="Species")
dmy <- dummyVars(" ~ .", data = A[,-sp_ind])
A <- data.frame(predict(dmy, newdata = A))
A$Species = Species

load("fishbase_HADDOCK_biological.Rdata")

DF = fishbase_HADDOCK_biological
dim(DF)
```

    ## [1]  72 356

``` r
dim(A)
```

    ## [1] 287  87

``` r
DF_m = merge(DF, A, by = "Species")
dim(DF_m)#lose two species
```

    ## [1]  70 442

``` r
setdiff(DF$Species, DF_m$Species)
```

    ## [1] "Astatotilapia burtoni" "Haplochromis nyererei"

``` r
DF = DF_m

write.csv(names(DF), file = "names_fishbase.csv")

rm = NULL
rm = c(rm, str_which(names(DF), "record_count"))
rm = c(rm, "LengthMin_length_weight" ,"LengthMax_length_weight", "Weight_oxygen")
keep = setdiff(names(DF), rm)
DF = DF[,keep]

save(DF, file = "DF_fish.Rdata")
```

\#\#remove fields with near-zero variation again

``` r
load("DF_fish.Rdata")

##remove variables with zero variation
sp_ind = which(names(DF)=="Species")
nzv = nearZeroVar(DF, freqCut = 95/5, saveMetrics = TRUE)
okay_inds = which(nzv$nzv == FALSE)
length(okay_inds)
```

    ## [1] 357

``` r
DF = DF[,okay_inds]#include only the columns that have variation

save(DF, file = "DF_fish.Rdata")
```

\#\#set up function gridSearch.R

``` r
source("gridSearch.R")
```

\#\#combine data Adrian made with rest of fields from fish

``` r
V <- read.csv("verttraits_30072020_continuousforage.csv")
str_which(names(V), "brain")#nope
```

    ## integer(0)

``` r
str_which(names(V), "habitat")#nope
```

    ## integer(0)

``` r
str_which(names(V), "diet")#nope
```

    ## [1] 36

``` r
str_which(names(V), "length")#nope
```

    ## integer(0)

``` r
F <- read.csv("fishbase_haddock_vert 2.csv")#check what I'd shared with Adrian before
names(F)  
```

    ## [1] "Oxygenmgl_oxygen"   "EncCoeff_brains"    "habitat_breadth"   
    ## [4] "range_area"         "diet_breadth"       "Species"           
    ## [7] "haddock_score_mean"

``` r
intersect(names(V), names(F))
```

    ## [1] "Species"            "haddock_score_mean" "diet_breadth"

``` r
intersect(V$Species, F$Species)#check that this is okay
```

    ##  [1] "Acanthochromis polyacanthus"   "Amblyraja radiata"            
    ##  [3] "Amphiprion ocellaris"          "Anabas testudineus"           
    ##  [5] "Anarrhichthys ocellatus"       "Archocentrus centrarchus"     
    ##  [7] "Astatotilapia calliptera"      "Astyanax mexicanus"           
    ##  [9] "Austrofundulus limnaeus"       "Betta splendens"              
    ## [11] "Boleophthalmus pectinirostris" "Callorhinchus milii"          
    ## [13] "Carassius auratus"             "Chanos chanos"                
    ## [15] "Clupea harengus"               "Cottoperca gobio"             
    ## [17] "Cynoglossus semilaevis"        "Cyprinodon variegatus"        
    ## [19] "Danio rerio"                   "Denticeps clupeoides"         
    ## [21] "Echeneis naucrates"            "Electrophorus electricus"     
    ## [23] "Erpetoichthys calabaricus"     "Esox lucius"                  
    ## [25] "Etheostoma spectabile"         "Fundulus heteroclitus"        
    ## [27] "Gadus morhua"                  "Gouania willdenowi"           
    ## [29] "Hippocampus comes"             "Ictalurus punctatus"          
    ## [31] "Kryptolebias marmoratus"       "Labrus bergylta"              
    ## [33] "Larimichthys crocea"           "Lates calcarifer"             
    ## [35] "Lepisosteus oculatus"          "Mastacembelus armatus"        
    ## [37] "Maylandia zebra"               "Monopterus albus"             
    ## [39] "Myripristis murdjan"           "Neolamprologus brichardi"     
    ## [41] "Nothobranchius furzeri"        "Notothenia coriiceps"         
    ## [43] "Oncorhynchus mykiss"           "Oreochromis aureus"           
    ## [45] "Oreochromis niloticus"         "Oryzias melastigma"           
    ## [47] "Pangasianodon hypophthalmus"   "Paralichthys olivaceus"       
    ## [49] "Parambassis ranga"             "Paramormyrops kingsleyae"     
    ## [51] "Perca flavescens"              "Poecilia formosa"             
    ## [53] "Poecilia latipinna"            "Poecilia mexicana"            
    ## [55] "Poecilia reticulata"           "Pygocentrus nattereri"        
    ## [57] "Salarias fasciatus"            "Sander lucioperca"            
    ## [59] "Scleropages formosus"          "Seriola dumerili"             
    ## [61] "Seriola lalandi"               "Sinocyclocheilus anshuiensis" 
    ## [63] "Sinocyclocheilus rhinocerous"  "Sparus aurata"                
    ## [65] "Stegastes partitus"            "Tachysurus fulvidraco"        
    ## [67] "Takifugu rubripes"             "Xiphophorus couchianus"       
    ## [69] "Xiphophorus hellerii"          "Xiphophorus maculatus"

``` r
load("DF_fish.Rdata")
F = DF

summary(V$log_adult_body_mass_g)
```

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
    ##  0.8981  3.9224  6.9267  7.1443  9.6727 16.1281      76

``` r
summary(V$adult_svl_cm)
```

    ##     Min.  1st Qu.   Median     Mean  3rd Qu.     Max.     NA's 
    ##    4.971   19.750   54.250  113.568  127.000 1098.769      154

``` r
names(F)[str_which(names(F), "length")]
```

    ##  [1] "a_length_weight"                                                  
    ##  [2] "aTL_length_weight"                                                
    ##  [3] "b_length_weight"                                                  
    ##  [4] "CoeffDetermination_length_weight"                                 
    ##  [5] "SEb_length_weight"                                                
    ##  [6] "LCLa_length_weight"                                               
    ##  [7] "UCLa_length_weight"                                               
    ##  [8] "LCLb_length_weight"                                               
    ##  [9] "UCLb_length_weight"                                               
    ## [10] "record_count_species_length_weight"                               
    ## [11] "DorsalAttributesextending.over.most.of.the.back.length_morphology"
    ## [12] "LengthAve_length_weight"

``` r
#need to add these for fish
ufish = unique(F$Species)
for (a in 1:length(ufish)){
  v_ind = which(V$Species == ufish[a])#find index of fish in verts
  F_tmp = subset(F, Species == ufish[a])#find temp records for this fish
  V$log_adult_body_mass_g[v_ind] = log(F_tmp$BodyWeight_brains)
  V$adult_svl_cm[v_ind] = F_tmp$LengthAve_length_weight
}
summary(V$log_adult_body_mass_g)
```

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
    ##  -1.792   3.670   6.585   6.780   9.192  16.128      66

``` r
summary(V$adult_svl_cm)
```

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
    ##    2.20   16.99   44.25  101.95  104.59 1098.77     134

``` r
save(V, file = "V.Rdata")
write.csv(V, file = "verttraits_30072020_continuousforage_v2.csv")
```

\#\#add AA value to rest of vert data

``` r
A <- read.csv("docking_results_AA_30_83.csv")

keep = c("Species", "AA_30_positive", "Order", "Class")

A = A[,keep]
Species = A$Species
sp_ind = which(names(A)=="Species")
dmy <- dummyVars(" ~ .", data = A[,-sp_ind])
A <- data.frame(predict(dmy, newdata = A))
A$Species = Species

load("V.Rdata")
DF = V
dim(DF)
```

    ## [1] 298  36

``` r
dim(A)
```

    ## [1] 287  87

``` r
DF_m = merge(DF, A, by = "Species")
dim(DF_m)#lose two species
```

    ## [1] 277 122

``` r
print("these species we have trait data on for vertebrates but not for AA")
```

    ## [1] "these species we have trait data on for vertebrates but not for AA"

``` r
setdiff(DF$Species, DF_m$Species)
```

    ##  [1] "Anser cygnoides domesticus"    "Aquila chrysaetos chrysaetos" 
    ##  [3] "Bos indicus x Bos taurus"      "Bos indicus"                  
    ##  [5] "Buceros rhinoceros silvestris" "Canis lupus dingo"            
    ##  [7] "Canis lupus familiaris"        "Tarsius syrichta"             
    ##  [9] "Corvus cornix cornix"          "Cricetulus barabensis"        
    ## [11] "Cryptomys damarensis"          "Grammomys dolichurus"         
    ## [13] "Homo sapiens"                  "Spermophilus tridecemlineatus"
    ## [15] "Spalax ehrenbergi"             "Monachus schauinslandi"       
    ## [17] "Rousettus leschenaultii"       "Cebus apella"                 
    ## [19] "Struthio camelus australis"    "Tupaia belangeri"             
    ## [21] "Spermophilus parryii"

``` r
DF = DF_m

rm = NULL
rm = c(rm, str_which(names(DF), "record_count"))
rm = c(rm, "LengthMin_length_weight" ,"LengthMax_length_weight", "Weight_oxygen")
keep = setdiff(names(DF), rm)
DF = DF[,keep]

save(V, file = "V.Rdata")
```

\#\#use function gridSearch with all verts

``` r
cores = 4
  cl <- makeCluster(cores, "SOCK", timeout = 60)
  # stopCluster(cl)
  registerDoSNOW(cl)
load("V.Rdata")

out = V
Species = out$V
sp_ind = which(names(out)=="Species")
dmy <- dummyVars(" ~ .", data = out[,-sp_ind])
out <- data.frame(predict(dmy, newdata = out))
out$Species = Species
V = out


V$adult_svl_cm[is.nan(V$adult_svl_cm)] <- NA
V$log_adult_body_mass_g[is.nan(V$log_adult_body_mass_g)] <- NA
DF = V
# A<- read.csv(file = "docking_results_AA_30_83.csv")
#find out what haddock_score_median is across all species
haddock_median = median(V$haddock_score_mean)

above_haddock_median = rep(0, dim(DF)[1])
inds = which(DF$haddock_score_mean > haddock_median)
above_haddock_median[inds]= 1
DF$above_haddock_median = above_haddock_median
label = "above_haddock_median"

rm = which(names(DF) %in% c("haddock_score_mean", "Order", "Species", "nchar", "haddock_score_sd"))

DF = DF[,-rm]

eta = c(0.001, 0.01, 0.1)
# eta = c(0.1)
max_depth = c(2,3)
k = 5
nrounds = 10000
n.minobsinnode = c(2,5,10)
# n.minobsinnode = c(2)
k_split = 0.8
distribution = "bernoulli"

label_col_ind = which(names(DF)==label)
x_col = seq(1:dim(DF)[2])
x_col = setdiff(x_col, label_col_ind)
vars = colnames(DF)[x_col]


hyper_grid <- gridSearch(DF = DF, label = label, vars = vars, k_split = k_split, 
                         distribution = distribution, 
                         eta = eta, 
                         max_depth = max_depth, 
                         n.minobsinnode = n.minobsinnode,
                         nrounds = nrounds, 
                         method = "cv", 
                         cv.folds = 5)

print(hyper_grid)
```

    ##      eta max_depth n.minobsinnode n.trees eval_train eval_test
    ## 1  0.001         2              2    4281  0.9311458 0.8513674
    ## 2  0.001         2              5    5166  0.9366319 0.8513674
    ## 3  0.001         2             10    7123  0.9481597 0.8454221
    ## 4  0.001         3              2    5434  0.9538542 0.8418549
    ## 5  0.001         3              5    4584  0.9480903 0.8525565
    ## 6  0.001         3             10    5122  0.9511458 0.8466112
    ## 7  0.010         2              2     583  0.9419444 0.8472057
    ## 8  0.010         2              5     453  0.9311111 0.8513674
    ## 9  0.010         2             10     397  0.9284375 0.8466112
    ## 10 0.010         3              2     509  0.9515625 0.8376932
    ## 11 0.010         3              5     437  0.9462500 0.8412604
    ## 12 0.010         3             10     398  0.9407292 0.8507729
    ## 13 0.100         2              2      48  0.9231250 0.8335315
    ## 14 0.100         2              5     103  0.9498611 0.8252081
    ## 15 0.100         2             10      55  0.9359722 0.8537455
    ## 16 0.100         3              2      51  0.9439236 0.8263971
    ## 17 0.100         3              5      68  0.9574306 0.8573127
    ## 18 0.100         3             10      52  0.9514583 0.8204518

\#\#use function gridSearch with just fish

``` r
# A<- read.csv(file = "docking_results_AA_30_83.csv")
# #find out what haddock_score_median is across all species
# haddock_median = median(A$haddock_score_mean)
# 
# above_haddock_median = rep(0, dim(DF)[1])
# inds = which(DF$haddock_score_mean > haddock_median)
# above_haddock_median[inds]= 1
# DF$above_haddock_median = above_haddock_median
# label = "above_haddock_median"
# rm = str_which(names(DF) %in% c("haddock_score_mean", "Order", "Species"))
# DF = DF[,-rm]
# 
# # eta = c(0.001, 0.01, 0.1)
# eta = c(0.1)
# max_depth = c(3)
# k = 5
# nrounds = 10000
# # n.minobsinnode = c(2,5,10)
# n.minobsinnode = c(2)
# k_split = 0.8
# distribution = "bernoulli"
# 
# label_col_ind = which(names(DF)==label)
# x_col = seq(1:dim(DF)[2])
# x_col = setdiff(x_col, label_col_ind)
# vars = colnames(DF)[x_col]
# 
# source("gridSearch_fish.R")
```

``` r
# source("../../functions/bootstrapGBM_v2.R")
```

\#\#function to do grid search with
gbm

``` r
# source("../../functions/R_function_grid_search_bootstrap_null_gbm_foreach.R")
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

# source_https <- function(u, unlink.tmp.certs = FALSE) {
#   # load package
#   require(RCurl)
# 
#   # read script lines from website using a security certificate
#   if(!file.exists("cacert.pem")) download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile = "cacert.pem")
#   script <- getURL(u, followlocation = TRUE, cainfo = "cacert.pem")
#   if(unlink.tmp.certs) unlink("cacert.pem")
# 
#   # parase lines and evealuate in the global environement
#   eval(parse(text = script), envir= .GlobalEnv)
# }

# source_https("https://github.com/fischhoff/gbm/tree/master/code/gridSearch.R")
# source_https("https://github.com/fischhoff/gbm/tree/master/code/gridSearch.R")
# source_https("https://raw.github.com/fischhoff/gbm/tree/master/code/gridSearch.R")
# source_https("https://raw.github.com/tonybreyal/Blog-Reference-Functions/master/R/htmlToText/htmlToText.R", unlink.tmp.certs = TRUE)
```
