# DataVisualization-Project
Final project for the IBM course for Data Visualization on R

Upon taking the "IBM Data Analytics with Excel and R Specialization" courses I created this simple app for the final project of the course "Data Visualization with R". I liked the app and played a little bit more with the overall visual aspect of it after the project was done.
I think this will be a nice first addition to what will become, between many things, my portfolio of works.

The project:
The focus of this project was to "create an interactive dashboard with Shiny to explore census data to figure out what trends in different demographics you can find and tell the marketing team your findings". The dataset used was an extraction prepared for this course of the Census Income from the UCI Machine Learning Repository.

The data has the following attributes:


    age: continuous.
    workclass: Private, Self-emp-not-inc, Self-emp-inc, Federal-gov, Local-gov, State-gov, Without-pay, Never-worked.
    fnlwgt: continuous.
    education: Bachelors, Some-college, 11th, HS-grad, Prof-school, Assoc-acdm, Assoc-voc, 9th, 7th-8th, 12th, Masters, 1st-4th, 10th, Doctorate, 5th-6th, Preschool.
    education-num: continuous.
    marital-status: Married-civ-spouse, Divorced, Never-married, Separated, Widowed, Married-spouse-absent, Married-AF-spouse.
    occupation: Tech-support, Craft-repair, Other-service, Sales, Exec-managerial, Prof-specialty, Handlers-cleaners, Machine-op-inspct, Adm-clerical, Farming-fishing, Transport-moving, Priv-house-serv, Protective-serv, Armed-Forces.
    relationship: Wife, Own-child, Husband, Not-in-family, Other-relative, Unmarried.
    race: White, Asian-Pac-Islander, Amer-Indian-Eskimo, Other, Black.
    sex: Female, Male.
    capital-gain: continuous.
    capital-loss: continuous.
    hours-per-week: continuous.
    native-country: United-States, Cambodia, England, Puerto-Rico, Canada, Germany, Outlying-US(Guam-USVI-etc), India, Japan, Greece, South, China, Cuba, Iran, Honduras, Philippines, Italy, Poland, Jamaica, Vietnam, Mexico, Portugal, Ireland, France, Dominican-Republic, Laos, Ecuador, Taiwan, Haiti, Columbia, Hungary, Guatemala, Nicaragua, Scotland, Thailand, Yugoslavia, El-Salvador, Trinadad&Tobago, Peru, Hong, Holand-Netherlands.
    Prediction: >50K, <=50K

The goals were the following:
Yo create a dashboard with the UCI Adult dataset that can give insight on the following questions:

    Does education level impact the salary?
    Impact of age and sex on salary?
    People from which native countries are given less income in spite of having good education?
    Does number of hours working contribute to less income?
    Which workclass faces less income?

The project was supposed to be made using Watson Studio in the IBm Cloud System but I chose to use RStudio directly on my terminal.

The repository should contain two files with the data already cleaned (I did it directly on the RStudio terminal and forgot to save an script with the code) on a csv file and two .R files containing the UI and server code for the ShinyApp.

I hope someone one day read this jajaja.
