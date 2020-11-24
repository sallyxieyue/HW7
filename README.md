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
Please run the following command to pull the hw7 image from docker repository

```{r}
docker pull sallyxy/hw7 
```

## Execute the data report in docker 
To analyze the data, first you should make sure all the files from HW7 repository are sucessfully downloaded in your computer. you will need to run the following command and your local computer. '~/path/to/' directory needs to be changed to the local directory where hw7 image located. 

You can set your current working directory using the following code:

```{r}
cd ~/path/to/HW7
```

This code will help to mount the HW7 directory to your local computer and finally generate the report.

```{r}
docker run -v ~/path/to/HW7:/HW7 hw7
```
The final report will be locate at the "output" folder. Please check when the system finishes running. 

## Previous work: Execuate report using Make 
You will need to install some 'R' packages. These packages can be installed by typing 

```{r}
make install
```
To do merge data set, you can type 

```{r}
make merge
```
To execute the analysis and generate the report, you can run

```{r}
make report.html
```
This will create 'report.html' in 'R' folder that contains the report.

## Information of rules in makefile
To get help, please run
```{r}
make help
```
