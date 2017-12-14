Lesson 5
========================================================

### Multivariate Data
Notes:

***

### Moira Perceived Audience Size Colored by Age
Notes:

***

### Third Qualitative Variable
Notes:

```{r Third Qualitative Variable}
ggplot(aes(x = gender, y = age),
       data = subset(pf, !is.na(gender))) + geom_histogram()
```

***

### Plotting Conditional Summaries
Notes:

```{r Plotting Conditional Summaries}

```

***

### Thinking in Ratios
Notes:

***

### Wide and Long Format
Notes:

***

### Reshaping Data
Notes:

```{r}
install.packages('reshape2')
library(reshape2)
```


***

### Ratio Plot
Notes:

```{r Ratio Plot}

```

***

### Third Quantitative Variable
Notes:

```{r Third Quantitative Variable}

```

***

### Cut a Variable
Notes:

```{r Cut a Variable}

```

***

### Plotting it All Together
Notes:

```{r Plotting it All Together}

```

***

### Plot the Grand Mean
Notes:

```{r Plot the Grand Mean}

```

***

### Friending Rate
Notes:

```{r Friending Rate}

```

***

### Friendships Initiated
Notes:

What is the median friend rate?

What is the maximum friend rate?

```{r Friendships Initiated}

```

***

### Bias-Variance Tradeoff Revisited
Notes:

```{r Bias-Variance Tradeoff Revisited}

ggplot(aes(x = tenure, y = friendships_initiated / tenure),
       data = subset(pf, tenure >= 1)) +
  geom_line(aes(color = year_joined.bucket),
            stat = 'summary',
            fun.y = mean)

ggplot(aes(x = 7 * round(tenure / 7), y = friendships_initiated / tenure),
       data = subset(pf, tenure > 0)) +
  geom_line(aes(color = year_joined.bucket),
            stat = "summary",
            fun.y = mean)

ggplot(aes(x = 30 * round(tenure / 30), y = friendships_initiated / tenure),
       data = subset(pf, tenure > 0)) +
  geom_line(aes(color = year_joined.bucket),
            stat = "summary",
            fun.y = mean)

ggplot(aes(x = 90 * round(tenure / 90), y = friendships_initiated / tenure),
       data = subset(pf, tenure > 0)) +
  geom_line(aes(color = year_joined.bucket),
            stat = "summary",
            fun.y = mean)

```

***

### Sean's NFL Fan Sentiment Study
Notes:

***

### Introducing the Yogurt Data Set
Notes:

***

### Histograms Revisited
Notes:

```{r Histograms Revisited}

```

***

### Number of Purchases
Notes:

```{r Number of Purchases}

```

***

### Prices over Time
Notes:

```{r Prices over Time}

```

***

### Sampling Observations
Notes:

***

### Looking at Samples of Households

```{r Looking at Sample of Households}

```

***

### The Limits of Cross Sectional Data
Notes:

***

### Many Variables
Notes:

***

### Scatterplot Matrix
Notes:

***

### Even More Variables
Notes:

***

### Heat Maps
Notes:

```{r}
nci <- read.table("nci.tsv")
colnames(nci) <- c(1:64)
```

```{r}
nci.long.samp <- melt(as.matrix(nci[1:200,]))
names(nci.long.samp) <- c("gene", "case", "value")
head(nci.long.samp)

ggplot(aes(y = gene, x = case, fill = value),
  data = nci.long.samp) +
  geom_tile() +
  scale_fill_gradientn(colours = colorRampPalette(c("blue", "red"))(100))
```


***

### Analyzing Three of More Variables
Reflection:

***

Click **KnitHTML** to see all of your hard work and to have an html
page of this lesson, your answers, and your notes!

