pad0 <- function(number, pad) {
	n <- nchar(as.character(number))
	if (n > pad) {
		stop(
			paste0(
				"Cannot pad a number with ", n, 
				" characters to a length of ", pad, "."
			)
		)
	}

	to_pad <- pad - n
	paste0(paste0(rep("0", to_pad), collapse = ""), number)
}
