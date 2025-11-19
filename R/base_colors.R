# Main script with all functions and bird color information

# AI disclosure: ChatGPT 5 provided helpful ideas for structuring this package
# More helpful info from: https://www.youtube.com/watch?v=gl9fFmtXFcI&t=382s

bird_palettes <- list(
  # 2 color
  Scarlet_Tanager = c("#34323F","#AA2720"),

  # 3 color
  Lazuli_Bunting = c("#BB6E31","#95A0A6","#0086BF"),

  # 4 color palettes
  Belted_Kingfisher = c("#08070C","#6F82A1","#8E4517","#FBFBFD"),
  Gray_crowned_Rosy_finch = c("#F7DEDB","#7B6150","#C0CAD7","#1C1F20"),
  Elegant_Euphonia = c("#C0AF51","#568DCB","#554445","#993C0E"),

  # 5 color
  Paradise_Tanager = c("#00B8DA","#FF4A31","#B0D301","#173076","#000001"),

  # 6 color
  European_Goldfinch = c("#1B2025","#FCF369","#DDBF98","#980F1B","#B38759","#F4F4E9"),

  # 7 color
  Scarlet_Macaw = c("#FF3D3F","#3870C5","#E0AD04","#262A31","#B8CBDE","#33794A","#273C93")
)

#Helper function for examples of

#' Extract a bird's color palette
#'
#' @param palette_name Common name of a bird
#' @param ncols Number of colors to extract
#'
#' @returns Extracted bird colors.
#' @export
#'
#' @examples bird_colors()
#' @examples bird_colors("Scarlet Macaw")
#' @examples bird_colors("Scarlet Macaw",7)
#'
bird_colors <- function(palette_name="Scarlet Macaw", ncols = NA){

  palette_name_gsub <- gsub("[- ']","_",palette_name)

  bird_cols <- bird_palettes[[palette_name_gsub]]

  if(is.null(bird_cols)){
    stop("Bird not supported. Options for palette are:\n\n",paste(sort(names(bird_palettes)), collapse = "\n"))
  }

  if(is.na(ncols)){
    ncols <- length(bird_cols)
  }

  if (ncols > length(bird_cols)){
    stop("Bird isn't colorful enough. Ask for less colors or choose another bird.")
  } else {
    bird_cols <- bird_cols[1:ncols]
  }

  bird_cols
}

#' Create ggplot color gradient
#'
#' @param bird_cols Bird colors extracted via bird_colors function
#'
#' @returns ggplot-friendly color gradient
#' @export
#'
#' @examples scale_color_bird(bird_cols)
#'
scale_color_bird <- function(bird_cols) {
  colpal <- grDevices::colorRampPalette(bird_cols, space = "Lab")
  ggplot2::scale_colour_gradientn(
    colours = colpal(300)
  )
}

# Create ggplot fill gradient
#' Title
#'
#' @param bird_cols Bird colors extracted via bird_colors function
#'
#' @returns ggplot-friendly fill gradient
#' @export
#'
#' @examples scale_fill_bird(bird_cols)
#'
scale_fill_bird <- function(bird_cols) {
  colpal <- grDevices::colorRampPalette(bird_cols, space = "Lab")
  ggplot2::scale_fill_gradientn(
    colours = colpal(300)
  )
}
