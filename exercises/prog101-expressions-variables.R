# What do the following expressions do?
temp_F <- temp_C * 9/5 - 32
# temperature conversion
rect_area <- rect_length * rect_width
# area calculation
# converting between F and C. setting area as equal to length times width of rectangle
# Fill in the question marks to complete these expressions
triangle_area <- 1/2 * base * height
cylinder_volume <- pi * r^2 * height
# you can pick the name of the variable height and base
# What are the errors in these expressions?
  speed_m_s <- distance_m / time_s
  #should be division
acceleration_m_s2 <- speed_m_s / time_s
# cannot have spaced in variable names
force_N <- mass * acceleration_m_s2

# The energy density of market squid is 4850 joules per gram[1]. If a 225 kg
# Risso's dolphin needs 5 million joules of energy per day[2] and a typical
# market squid is 35 g[1], then how many squid does a Risso's dolphin need to
# eat each day? Solve the above word problem in R. Consider how many variables
# you need to create, what to name them to make the code readable, and how to
# combine them into expressions.

squid_energy_density_J  <- 4850
dolphin_mass_kg <- 225
dolphin_energy_need_J <- 5000000
# you cannot put commas in the 5 mil
squid_mass_g <- 35

squid_energy_J <- squid_enegry_density_Jg * squid_mass_g
n_squid <- dolphin_energy_need_J / squid_energy_J


# [1] Price et al. 2024 https://doi.org/10.3389/fmars.2023.1345525
# [2] Barlow et al. 2008 https://doi.org/10.3354/meps07695

