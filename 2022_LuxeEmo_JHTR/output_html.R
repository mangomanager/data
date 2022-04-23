install.packages("kableExtra")
install.packages("devtools")
devtools::install_github("haozhu233/kableExtra")

library(kableExtra)
df <- read.table("C:\\Users\\david\\Desktop\\Appendix_B.txt","\t", header=TRUE)

colnames(df)[1] <- ""
df[is.na(df)] <- ""

df %>%
  kbl(caption = "Appendix B. Correlation Table of Topic Probabilities") %>%
  kable_classic(full_width = F, html_font = "Cambria") %>% 
  kable_styling("responsive") %>% 
  column_spec(1, bold = T) %>% 
  row_spec(1:14, extra_css = "border-bottom-0") %>% 
  row_spec(0, bold=T) %>% 
  footnote(general_title = "Note:	* p < 0.05; ** p < 0.01; *** p < 0.001.", general ="") %>% 
  save_kable(file = "Appendix_B.html", self_contained = T)


df <- read.table("C:\\Users\\david\\Desktop\\Appendix_C.txt","\t", header=TRUE)
colnames(df) <- c("", "Model1",	"Model2",	"Model3",	"Model4",	"Model5",	"Model6",	"Model7",	"Model8",	"Model9",	"Model10",	"Model11",	"Model12",	"Model13",	"Model14",	"Model15",	"Model16",	"Model17",	"Model18")
df[is.na(df)] <- ""

df %>%
  kbl(caption = "Appendix C. Output of Ordered Logistic Regression for “Rating Level”") %>%
  kable_classic(full_width = F, html_font = "Cambria") %>% 
  kable_styling("responsive") %>% 
  footnote(general_title = "Note:	* p < 0.05; ** p < 0.01; *** p < 0.001. t statistics in parentheses.", general ="") %>% 
  column_spec(1, bold = T) %>% 
  row_spec(0, bold=T) %>% 
  row_spec(c(30,80,88), extra_css = "border-bottom: 1px solid") %>% 
  save_kable(file = "Appendix_C.html", self_contained = T)


  		
  		
  