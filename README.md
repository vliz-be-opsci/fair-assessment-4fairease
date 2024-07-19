# fair-assessment-4fairease
to be moved to FE GH when we have a repo there

For Dev Cycle 4 we carried out an assessment of the FAIRness of datasets being used in FAIR EASE. This built on work started in Dev Cycle 1. See the related confluence pages [for the paper](https://fair-ease.atlassian.net/wiki/spaces/FAIREASE/pages/341311604/D4T12+-+Paper+preparation+and+Deliver+on+FAIR+DATA+AND+METHODS) and [for D6.5](https://fair-ease.atlassian.net/wiki/spaces/FAIREASE/pages/347799553/D4T11+-+Writing+the+D6.5).

Here you will find
* XXXXXX A spreadsheet of the datasets we are working on. *If you add to this spreadsheet*, **please do not upload a new spreadsheet** *but instead pull/download this one, add to it, and then upload/push it back here* and **add your name and a brief comment on what you added to the commit box that pops up**. 
* The FUJI results - all the json files. Which dataset they belong to is recorded in the spreadsheet. 

The deeper analysis of the FUIJ results, and running recommendations to be made either to the pilot or the data provider, can be found on a [confluence page](https://fair-ease.atlassian.net/wiki/spaces/FAIREASE/pages/380174344/Deeper+analysis+of+the+FUJI+results). Once this work has completed, we will post a summary here. 

## FUJI tool
The FUJI tests we are using are carried out from https://www.f-uji.net/?action=test, where you input the URL to a dataset. The tool then looks for metadata that cover the different items of F A I R. 

The list of the points it checks can be found on its [Method page](https://www.f-uji.net/index.php?action=methods), together with some more technical detail on how it does its assessment. When analysing the results here, it is worth looking at this page to understand what was looked for and found/not found. More detail can also be found in the tables on https://zenodo.org/records/6461229. 

The code itself can be found on https://github.com/pangaea-data-publisher/fuji.

It uses its own ontology, which can be searched on https://www.f-uji.net/vocab/ although without an overview of all its terms, it is rather awkward to search. In any case, it just defines the terms that it uses in its work, so is the place to go if you e.g. want to know what it means by ["data"](https://www.f-uji.net/vocab//data) or, more usefully, the list of [data formats](https://www.f-uji.net/vocab/data/format) that it includes as "data", or the [type of PIDs](https://www.f-uji.net/vocab/identifier/persistent) it considers, 
