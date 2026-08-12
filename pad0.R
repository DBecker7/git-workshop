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
	rep("0", to_pad) |>
	    paste0(collapse = "") |>
	    paste0(number)
}
