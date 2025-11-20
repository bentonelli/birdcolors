# Main script with all functions and bird color information

# AI disclosure: ChatGPT 5 provided helpful ideas for structuring this package
# More helpful info from: https://www.youtube.com/watch?v=gl9fFmtXFcI&t=382s

bird_palettes <- list(
  # 2 color - best for sequential/continuous palettes
  Scarlet_Tanager = c("#34323F","#AA2720"),
  Indigo_Bunting = c("#080806","#367CCF"),
  Pine_Warbler = c("#90918D","#E6D246"),
  Varied_Thrush = c("#7D7C81","#C5803F"),
  Cassin_s_Finch = c("#DBD9DE","#C63144"),
  Barn_Swallow = c("#4B8EBB","#D89339"),

  # 3 color - best for divergent color palettes
  Lazuli_Bunting = c("#BB6E31","#95A0A6","#0086BF"),
  Allen_s_Hummingbird = c("#CC5A4F","#61555D","#809D89"),
  Thick_billed_Euphonia = c("#375D88","#62605E","#F3D048"),
  Yellow_headed_Amazon = c("#425013","#F3CA56","#A94843"),
  Costa_s_Hummingbird = c("#737A54","#948873","#7E2786"),

  # 4 color + palettes - best for discrete color palettes

  # 4 color palettes
  Belted_Kingfisher = c("#08070C","#6F82A1","#8E4517","#FBFBFD"),
  Gray_crowned_Rosy_finch = c("#F7DEDB","#7B6150","#C0CAD7","#1C1F20"),
  Elegant_Euphonia = c("#C0AF51","#568DCB","#554445","#993C0E"),

  # 5 color
  Paradise_Tanager = c("#00B8DA","#FF4A31","#B0D301","#173076","#000001"),

  # 6 color
  European_Goldfinch = c("#1B2025","#FCF369","#DDBF98","#980F1B","#B38759","#F4F4E9"),
  Black_backed_Dwarf_Kingfisher = c("#3F3E62","#1020AF","#902BD2","#CA5988","#E39F39","#BE3F1F"),

  # 7 color
  Scarlet_Macaw = c("#FF3D3F","#3870C5","#E0AD04","#262A31","#B8CBDE","#33794A","#273C93"),

  # 8 color
  Scaly_Ground_Roller = c("#558EDE","#D38B4A","#43827B","#733118","#3B5D3D","#BF9A5E","#313848","#80834C"),

  # 9 color
  Wood_Duck = c("#26794E","#453A2C","#FDB837","#EA654C","#6E6784","#63271C",
                "#DDC29A","#CB4D3C","#030200")
)

#Helper function for examples of

#' Extract a bird's color palette
#'
#' @param palette_name Common name of a bird
#' @param ncols Number of colors to extract
#' @param reverse Should the palette order be flipped?
#'
#' @returns Extracted bird colors.
#' @export
#'
#' @examples bird_colors()
#' @examples bird_colors("Scarlet Macaw")
#' @examples bird_colors("Scarlet_Macaw",7)
#' @examples bird_colors("Scarlet_Macaw",4,reverse=TRUE)
#'
bird_colors <- function(palette_name="Scarlet Macaw", ncols = NA, reverse = FALSE){

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

  if (reverse){
    rev(bird_cols)
  } else {
    bird_cols
  }
}

#' Create ggplot color gradient
#'
#' @param bird_cols Bird colors extracted via bird_colors function
#'
#' @returns ggplot-friendly color gradient
#' @export
#'
#' @examples scale_color_bird(bird_colors())
#'
scale_color_bird <- function(bird_cols){
  colpal <- grDevices::colorRampPalette(bird_cols, space = "Lab")
  ggplot2::scale_colour_gradientn(
    colours = colpal(300)
  )
}

#' Create ggplot fill gradient
#'
#' @param bird_cols Bird colors extracted via bird_colors function
#'
#' @returns ggplot-friendly fill gradient
#' @export
#'
#' @examples scale_fill_bird(bird_colors())
#'
scale_fill_bird <- function(bird_cols){
  colpal <- grDevices::colorRampPalette(bird_cols, space = "Lab")
  ggplot2::scale_fill_gradientn(
    colours = colpal(300)
  )
}

#Print out available birds
#' Print out available bird color palettes
#'
#' @returns Prints data.frame of available birds and color number
#' @export
#'
#' @examples bird_menu()
bird_menu <- function(){
  palette_options <- data.frame(bird_names = names(bird_palettes),
                                ncols=as.numeric(lapply(bird_palettes,length)))
  print(palette_options)
}
