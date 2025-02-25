# What does the following code do?
# Tip: `%%` is the remainder operator. E.g. 10 %% 4 is 2.
instrument_deployed_hm <- c(730, 915, 1345)
instrument_deployed_h <- floor(instrument_deployed_hm / 100)

# floor rounds to the nearest integer that is smaller than the value (rounding down)
instrument_deployed_hdec <- (instrument_deployed_hm %% 100) / 60
instrument_deployed <- instrument_deployed_h + instrument_deployed_hdec

# Based on the code above, calculate the duration of instrument deployments
# using the instrument recovery times below. What units do the durations have?
instrument_recovered_hm <- c(1600, 1920, 2015)
instrument_recovered_h <- floor(instrument_recovered_hm / 100)
instrument_recovered_hdec <- (instrument_recovered_hm %% 100) / 60

instrument_durations <- instrument_recovered - instrument_deployed
#the units would be in hours. (fraction of an hour)

# Which site had the longest duration? Use conditional indexing.
site <- c("Santa Cruz", "Santa Rosa", "San Miguel")
site[instrument_durations == max(instrument_durations)]
site[c(FALSE< TRUE, FALSE)]




