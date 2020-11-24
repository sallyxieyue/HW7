## My Homework7 repository
Please fork and clone my hw7 repository from github.
For my project, I will merge my simulated birth records data 'births_s' and pollution data 'NH4' and generate a report. The merging process can take a while. Please be patient. 

 * 'raw_data' folder contains all the raw data.
 * 'merged_data' folder contains the merged data.
 * 'R' folder contains R codes.
 * 'output' folder will contain the generated report.
 * 'makefile' contains all make rules for project.
 * 'Dockerfile' contains all docker rules for project.

## Pull the docker image from DockerHub repository
Please run the following command to pull the hw7 image from dock repository

```{r}
docker pull sallyxy/hw7

```

## Execute the data report 
To analyze the data, you will need to run the following command and your local computer. '~/path/to/' directory needs to be changed to the local directory where hw7 image located. 

```{r}
docker run -v ~/path/to/HW7:/HW7 hw7

```
The final report will be locate at the "output" folder. Please check when the system finishes running. 

## Information of rules in makefile
To get help, please run
```{r}
make help

```
