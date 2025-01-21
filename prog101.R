##########################################################################
## Driver: (Name) (GitHub Handle)                                       ##
## Navigator: (Name) (GitHub Handle)                                    ##
## Date: (YYYY-MM-DD)                                                   ##
##########################################################################

library(marinecs100b)

# Guiding questions -------------------------------------------------------

# What does KEFJ stand for?
# Kenai Fjords National Park
# How was temperature monitored?
# HOBO V2 temperature loggers (Onset Computer Corporation, Bourne, MA, USA)
# What's the difference between absolute temperature and temperature anomaly?
# Water temperature anomalies were calculated by subtracting logger mean
# seasonal water temperatures from the regional mean for the whole time series
# within each of the five time periods

# Begin exploring ---------------------------------------------------------

# How many kefj_* vectors are there?
?kefj
#6
# How long are they?
#2187966
# What do they represent?
# A numeric vector for temp, a character vector for the name, a POSIXct vector
# for date and time of the temperature, a numeric vector with the tide level
# a character vector indicating the type of temp
# Link to sketch
# https://drive.google.com/file/d/1vPnQNclyXMPxiQVQwff4EaV1ffD6LNpA/view?usp=drivesdk

length(kefj_datetime)
kefj_datetime_Nuka <- kefj_datetime[kefj_site == "Nuka_Bay"]
Nuka_Bay_interval <- kefj_datetime_Nuka[2:length(kefj_datetime)] - kefj_datetime_Nuka[1:(length(kefj_datetime)-1)]
table(Nuka_Bay_interval)

# Problem decomposition ---------------------------------------------------

# When and where did the hottest and coldest air temperature readings happen?

# Link to sketch

# Plot the hottest day

hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2020-07-30 00:00:00 -08", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2020-07-30 23:59:00 -0", tz = "Etc/GMT+8")
hotday_idx <- kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
# calling the smaller thing from the bigger thing- indexing
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)

# Repeat for the coldest day


coldest_idx <- which.min(kefj_temperature)
coldest_time <- kefj_datetime[coldest_idx]
coldest_site <- kefj_site[coldest_idx]
coldday_start <- as.POSIXct("2013-01-27 00:00:00 -08", tz = "Etc/GMT+8")
coldday_end <- as.POSIXct("2013-01-27 23:59:00 -0", tz = "Etc/GMT+8")
coldday_idx <- kefj_site == coldest_site &
  kefj_datetime >= coldday_start &
  kefj_datetime <= coldday_end
coldday_datetime <- kefj_datetime[coldday_idx]
coldday_temperature <- kefj_temperature[coldday_idx]
# calling the smaller thing from the bigger thing- indexing
coldday_exposure <- kefj_exposure[coldday_idx]
plot_kefj(coldday_datetime, coldday_temperature, coldday_exposure)

# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ?
#
# How did Traiger et al. define extreme temperature exposure?

# Translate their written description to code and calculate the extreme heat
# exposure for the hottest day.

# Compare your answer to the visualization you made. Does it look right to you?

# Repeat this process for extreme cold exposure on the coldest day.


# Putting it together -----------------------------------------------------

# Link to sketch

# Pick one site and one season. What were the extreme heat and cold exposure at
# that site in that season?

# Repeat for a different site and a different season.

# Optional extension: Traiger et al. (2022) also calculated water temperature
# anomalies. Consider how you could do that. Make a sketch showing which vectors
# you would need and how you would use them. Write code to get the temperature
# anomalies for one site in one season in one year.
