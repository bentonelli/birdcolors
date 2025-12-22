# Main script with all functions and bird color information

# AI disclosure: ChatGPT 5 provided helpful ideas for structuring this package
# Much more helpful info from: https://www.youtube.com/watch?v=gl9fFmtXFcI&t=382s

bird_palettes <- list(
  # 2 color - best for sequential/continuous palettes
  Scarlet_Tanager = c("#34323F","#AA2720"),
  Indigo_Bunting = c("#080806","#367CCF"),
  Pine_Warbler = c("#90918D","#E6D246"),
  Varied_Thrush = c("#7D7C81","#C5803F"),
  Cassin_s_Finch = c("#DBD9DE","#C63144"),
  Barn_Swallow = c("#4B8EBB","#D89339"),
  Northern_Cardinal = c("#0C0201","#BD1C0B"),
  Eastern_Screech_Owl = c("#DAE0F6","#9E3E1B"),
  Adelie_Penguin = c("#0F0F1A","#E9EAEF"),
  Emperor_Penguin = c("#000000","#FFFFFF"),

  # 3 color - used for divergent or discrete color palettes
  Lazuli_Bunting = c("#BB6E31","#95A0A6","#0086BF"),
  Allen_s_Hummingbird = c("#CC5A4F","#61555D","#809D89"),
  Thick_billed_Euphonia = c("#375D88","#62605E","#F3D048"),
  Yellow_headed_Amazon = c("#425013","#F3CA56","#A94843"),
  Costa_s_Hummingbird = c("#537236","#BFB19D","#761B70"),
  Andean_Cock_of_the_Rock = c("#DD5426","#7D7790","#0D0A06"),
  Lovely_Sunbird = c("#305A83","#ECE7A8","#880C07"),
  Curl_crested_Jay = c("#5B413C","#BAB9B5","#192258"),
  Northern_Shoveler = c("#AE512B","#000308","#4FA465"),
  Blue_footed_Booby = c("#4CA4CB","#4E3420","#C2C38D"),
  Tufted_Titmouse = c("#B6753E","#949397","#E1D1C1"),
  Eastern_Bluebird = c("#D87B41","#F9F8F6","#707FBB"),

  # 4 color + palettes - best for discrete color palettes

  # 4 color palettes
  Belted_Kingfisher = c("#08070C","#6F82A1","#8E4517","#FBFBFD"),
  Gray_crowned_Rosy_finch = c("#F7DEDB","#7B6150","#C0CAD7","#1C1F20"),
  Elegant_Euphonia = c("#C0AF51","#568DCB","#554445","#993C0E"),
  Black_spotted_Bare_eye = c("#D05143","#5B2610","#090B0A","#DDC691"),
  Painted_Bunting = c("#166EC6","#E73619","#8FA200","#EA9606"),
  Malayan_Crested_Fireback = c("#65AEEE","#19497E","#FA9B13","#B52A0E"),
  Sparkling_Violetear = c("#252D8D","#9779FF","#03DECE","#1D8C46"),
  Roseate_Spoonbill = c("#D3023B","#EBAAC5","#E0E1E5","#DEBC95"),
  Yellow_bellied_Sapsucker = c("#FD2625","#E1C864","#856324","#0F1014"),
  Blue_Jay = c("#1F496A","#547199","#79B2CD","#A3C4D9"),
  King_Penguin = c("#FFFE8D","#FEDB3A","#FCB41A","#C37718"),
  
  # 5 color
  Paradise_Tanager = c("#B6F54D","#496FDE","#E83224","#64D7FB","#030504"),
  Hairy_crested_Antbird = c("#C79365","#CBF1FB","#4D2319","#E2D3BC","#080A0A"),
  Keel_billed_Toucan = c("#4C93BE","#C2CF2A","#E6CB22","#DF5700","#5D002B"),
  Lilac_breasted_Roller = c("#76CED2","#D88B7B","#A970CB","#072588","#C89858"),
  Lesser_Yellow_headed_Vulture = c("#2D2A31","#C17DBD","#7283AC","#C6CDB5","#D1945B"),
  Tricolored_Heron = c("#37464F","#98B0BD","#ECC045","#BF917D","#6D4E4F"),
  Northern_Parula = c("#405257","#4F7EAF","#7C8853","#D4B83E","#C18025"),
  Variable_Sunbird = c("#F0D475","#78C39B","#3B838E","#1C428F","#121646"),
  Ultramarine_Lorikeet = c("#C8D5D0","#95CBE0","#5FABC4","#1D4A70","#040F38"),
  Hildebrandt_s_Starling = c("#E8CB97","#E67B3D","#B9492F","#45476A","#2B2B34"),
  Bluethroat = c("#1C4070","#68A9F0","#E0D5D6","#EE9C62","#6A3816"),
  Agami_Heron = c("#C64A3E","#7E3D42","#274669","#4E78A5","#8AADD5"),
  Ruby_throated_Hummingbird = c("#C60B1E","#F7B08E","#D7CCC5","#4DA972","#055215"),
  
  # 6 color
  European_Goldfinch = c("#1B2025","#FCF369","#DDBF98","#980F1B","#B38759","#F4F4E9"),
  Black_backed_Dwarf_Kingfisher = c("#3F3E62","#1020AF","#902BD2","#CA5988","#E39F39","#BE3F1F"),
  Blue_Pitta = c("#2D43AB","#EFCC48","#E2682A","#D4301F","#866929","#070708"),
  Brown_Pelican = c("#B42D24","#D96E63","#9A6439","#3A3337","#8A847C","#A4B4B4"),

  # 7 color
  Scarlet_Macaw = c("#FF3D3F","#3870C5","#E0AD04","#262A31","#B8CBDE","#33794A","#273C93"),
  Eastern_Cattle_Egret = c("#C27432","#FD7824","#FCA412","#581F57","#8C3978","#E76BB1","#EB2F19"),

  # 8 color
  Scaly_Ground_Roller = c("#558EDE","#D38B4A","#43827B","#733118","#3B5D3D","#BF9A5E","#313848","#80834C"),

  # 9 color
  Wood_Duck = c("#26794E","#453A2C","#FDB837","#EA654C","#6E6784","#63271C",
                "#DDC29A","#CB4D3C","#030200")
)

rec_bird_palettes <- list(
  continuous = c("Ultramarine_Lorikeet","Hildebrandt_s_Starling","Cassin_s_Finch"),
  discrete = c("Lilac_breasted_Roller","Scarlet_Macaw","European_Goldfinch"),
  divergent = c("Bluethroat","Lovely_Sunbird","Costa_s_Hummingbird")
)


#' Extract a bird's color palette
#'
#' @param palette_name Common name of a bird
#' @param ncols Number of colors to extract
#' @param reverse Should the palette order be flipped?
#' @param expand_palette Should the palette be expanded to more colors?
#'
#' @returns Extracted bird colors.
#' @export
#'
#' @examples bird_colors()
#' @examples bird_colors("Scarlet Macaw")
#' @examples bird_colors("Scarlet_Macaw",7)
#' @examples bird_colors("Scarlet_Macaw",4,reverse=TRUE)
#' @examples bird_colors("Bluethroat",4,reverse=TRUE,expand_palette=15)
#'
bird_colors <- function(palette_name="Scarlet Macaw", ncols = NA, 
                        reverse = FALSE,expand_palette = FALSE){

  palette_name_gsub <- gsub("[- ']","_",palette_name)

  bird_cols <- bird_palettes[[palette_name_gsub]]

  if(is.null(bird_cols)){
    stop("Bird not supported. Options for palette are:\n\n",
         paste(sort(names(bird_palettes)), collapse = "\n"))
  }

  if(is.na(ncols)){
    ncols <- length(bird_cols)
  }

  if (ncols > length(bird_cols)){
    stop("Bird isn't colorful enough. Ask for less colors, choose another bird, 
         or use the expand_palette argument!")
  } else {
    bird_cols <- bird_cols[1:ncols]
  }

  if (reverse){
    bird_cols <- rev(bird_cols)
  }
  
  if(is.numeric(expand_palette)){
    colpal <- grDevices::colorRampPalette(bird_cols, space = "Lab")
    bird_cols <- colpal(expand_palette)
  }
  
  bird_cols
}

#' Create ggplot color gradient
#'
#' @param bird_cols Bird colors extracted via bird_colors function
#' @param midpoint Midpoint of diverging color palette, only for 3-color palettes
#'
#' @returns ggplot-friendly color gradient
#' @export
#'
#' @examples scale_color_bird(bird_colors())
#'
scale_color_bird <- function(bird_cols,midpoint=NA){
  
  colpal <- grDevices::colorRampPalette(bird_cols, space = "Lab")
  
  if(!is.na(midpoint) & length(bird_cols)==3){
    
    ggplot2::scale_color_gradient2(
      low = bird_cols[1],mid=bird_cols[2],high=bird_cols[3],
      midpoint=midpoint)
    
  } else {
    
    if(!is.na(midpoint)){
      warning("Midpoint not supported when number of colors != 3")
    }
    
    ggplot2::scale_colour_gradientn(
      colours = colpal(300))
  }
}

#' Create ggplot fill gradient
#'
#' @param bird_cols Bird colors extracted via bird_colors function
#' @param midpoint Midpoint of diverging color palette, only for 3-color palettes
#'
#' @returns ggplot-friendly fill gradient
#' @export
#'
#' @examples scale_fill_bird(bird_colors())
#'
scale_fill_bird <- function(bird_cols,midpoint=NA){
  
  colpal <- grDevices::colorRampPalette(bird_cols, space = "Lab")
  
  if(!is.na(midpoint) & length(bird_cols)==3){
    
    ggplot2::scale_fill_gradient2(
      low = bird_cols[1],mid=bird_cols[2],high=bird_cols[3],
      midpoint=midpoint)
    
  } else {
    
    if(!is.na(midpoint)){
      warning("Midpoint not supported when number of colors != 3")
    }
    ggplot2::scale_fill_gradientn(
      colours = colpal(300))
  }
}

#Print out available birds
#' Print out available bird color palettes
#'
#' @param all_or_rec Option "all" returns all available palettes, "rec" returns recommended
#' @returns Prints data.frame of available birds and color number
#' @export
#'
#' @examples bird_menu()
bird_menu <- function(all_or_rec = "all"){
  
  palette_options <- data.frame(bird_names = names(bird_palettes),
                                ncols=as.numeric(lapply(bird_palettes,length)))
  
  palette_options$recommended <- ""
  
  palette_options$recommended[names(bird_palettes) %in% rec_bird_palettes$continuous] <- "Continuous"
  palette_options$recommended[names(bird_palettes) %in% rec_bird_palettes$discrete] <- "Discrete"
  palette_options$recommended[names(bird_palettes) %in% rec_bird_palettes$divergent] <- "Divergent"
  
  if (all_or_rec == "all"){
    print(palette_options)
  } else if (all_or_rec == "rec"){
    palette_options <- palette_options[palette_options$recommended != "",]
    palette_options <- palette_options[order(palette_options$recommended),]
    print(palette_options)
  } else {
    stop("Option not supported: options are, all OR rec")
  }
}

#Search for available bird color palettes
#' Search for available bird color palettes
#'
#' @param sp_name Provide full or partial name of bird you are looking for
#' @returns Prints data.frame of available birds and color number
#' @export
#'
#' @examples bird_search("Hummingbird")
bird_search <- function(sp_name = "Penguin"){
  available_palettes <- names(bird_palettes)[grepl(sp_name,names(bird_palettes))]
  if(length(available_palettes) == 0){
    print("No matches found")
  } else {
    print("Available birds:")
    print(paste(available_palettes,collapse = ", "))
  }
}

#Bird palette visualizer
#' Print out pictures of available bird color palettes
#'
#' @returns Creates pdf of all available birds or rec birds
#' @param all_or_rec Option "all" returns all available palettes, "rec" returns recommended
#' @param pdf_plot Create a pdf of available palettes in the current working directory. Default is to send directly to plots
#' @export
#'
#' @examples bird_palette_visualizer("all")
bird_palette_visualizer <- function(all_or_rec="all",pdf_plot = FALSE){
  
  if(pdf_plot){
    grDevices::pdf(paste("bird_viz_",all_or_rec,".pdf",sep=""))
  }
  graphics::par(mar=c(2,2,2,2))
  
  if(all_or_rec == "all"){
    bird_pal_to_plot <- bird_palettes
    graphics::par(mfrow=c(8,4))

  } else if (all_or_rec=="rec"){
    bird_pal_to_plot <- bird_palettes[(as.vector(unlist(rec_bird_palettes)))]
    graphics::par(mfrow=c(3,3))
    
  } else{
    stop("Option not supported. options are: all OR rec")
  }
  
  for (nn in 1:length(bird_pal_to_plot)){

    
    if (all_or_rec=="rec"){
      if (names(bird_pal_to_plot)[nn] %in% rec_bird_palettes$continuous){
        bc <- bird_colors(names(bird_pal_to_plot)[nn],expand_palette = 15)
      } else if (names(bird_pal_to_plot)[nn] %in% rec_bird_palettes$divergent){
        bc <- bird_colors(names(bird_pal_to_plot)[nn],expand_palette = 15)
      } else {
        bc <- bird_colors(names(bird_pal_to_plot)[nn])
      }
    } else {
      bc <- bird_colors(names(bird_pal_to_plot)[nn])
    }
    #Modified from stackexchange: https://stackoverflow.com/questions/25726276/visualize-a-list-of-colors-palette-in-r
    graphics::image(1:length(bc), 1, as.matrix(1:length(bc)),
          col=bc,main=names(bird_pal_to_plot)[nn],cex.main=.75,
          xlab="", ylab = "", xaxt = "n", yaxt = "n", bty = "n")
  }
  
  if(pdf_plot){
    grDevices::dev.off()
  }
}

#Print out leaderboard
#' Print out leaders in contributing bird color palettes
#'
#' @returns Prints data.frame of leaderboard in contributing bird color palettes
#' @export
#'
#' @examples leaderboard()
leaderboard <- function(){
  leaderboard_bc <- data.frame(people = c("Ben Tonelli","Ellie Magaldi","Casey Youngflesh","Chris Sayers"),
                                contributions = c(28,7,7,5))
  print(leaderboard_bc)
}
