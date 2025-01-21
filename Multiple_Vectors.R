# work on mutiple vectors element wise
# use conditions of one vector to index another
barnacle_density_m2 <- c(2.1, 1.9, 3.0, 4.2)
site <- c("Point Arena", "Point Conception", "San Clemente", "Catalina")
region <- c("NorCal", "CenCal", "SoCal", "SoCal")

# how to work on vectors element-wise
site_aream2 <- c(25, 12, 8, 9)
barnacle_count <- barnacle_density_m2 * site_aream2

paste(region, site)

# use conditions of one vector to index another, give me barnacle density of site Point Arenas
barnacle_density_m2[site == "Point Arena"]
site == "Point Arena"

# other coditional operators: !=, <, >, =>, <=

#give me the sites where the barnacle density is greater than average
site[barnacle_density_m2 > mean(barnacle_density_m2)]

# Pro-tip: use sum() to count the number of TRUEs
sum(region =="SoCal")
sim(barnacle_density_m2 > 4.2)

