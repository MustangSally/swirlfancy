find_lesson <- function(lesson_dir) {
  grep("^lesson\\.[A-Za-z]+$", list.files(lesson_dir), value=TRUE)
}

#' @importFrom tools file_ext
get_content_class <- function(file_name) {
  ext <- file_ext(file_name)
  tolower(ext)
}

### FUNCTIONS THAT RETURN LESSON OBJECT WITH ASSOCIATED ATTRIBUTES ###

parse_content <- function(file, e) UseMethod("parse_content")

parse_content.default <- function(file, e) {
  stop("Incorrect content class!")
}

parse_content.csv <- function(file, e) {
  df <- read.csv(file, as.is=TRUE)
  # Return lesson object
  lesson(df, lesson_name=e$temp_lesson_name, course_name=e$temp_course_name)
}

parse_content.rmd <- function(file, e) {
  rmd2df(file)
}

#' @importFrom yaml yaml.load_file
parse_content.yaml <- function(file, e){
  newrow <- function(element){
    temp <- data.frame(Class=NA, Output=NA, CorrectAnswer=NA,
                       AnswerChoices=NA, AnswerTests=NA, 
                       Hint=NA, Figure=NA, FigureType=NA, VideoLink=NA)
    for(nm in names(element)){
      temp[,nm] <- element[[nm]]
    }
    temp
  }
  raw_yaml <- yaml.load_file(file)
  temp <- lapply(raw_yaml[-1], newrow)
  df <- NULL
  for(row in temp){
    df <- rbind(df, row)
  }
  meta <- raw_yaml[[1]]
  lesson(df, lesson_name=meta$Lesson, course_name=meta$Course,
         author=meta$Author, type=meta$Type, organization=meta$Organization,
         version=meta$Version)
}