test.data.checks <- function() {
datasets <- c("TS-all","TS-confirmed","TS-confirmed-US","TS-Toronto","aggregated")

for (i in datasets) {
	print(i)
	data <- covid19.data(i)
	nullify.data(data)
	nullify.data(data, stringent=TRUE)
	print(paste(rep("#",80),collapse=''))
}

}
