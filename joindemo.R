df1 <- data.frame(KeyID = c(1:4),
                  Ten = c("GGG", "JJJ", "KKK", "BBB"),
                  Hang = c(12,34,45,65))
df2 <- data.frame(KeyID = c(1:2,5,6),
                   Phuongtien = c("Oto", "Maybay", "Tauhoa", "Thuyen Buom"),
                   Gia = c(122,534,345,665))

df1
df2

# Nối trái

trai_df <- merge(df1, df2, by = "KeyID", all.x = TRUE)

# Nối phải

phai_df <- merge(df1, df2, by = "KeyID", all.y = TRUE)

# Toàn phần

toan_df <- merge(df1, df2, by = "KeyID", all = TRUE)

# Nối trong

trong_df <- merge(df1, df2, by = "KeyID")

# Nối chéo

trong_df <- merge(df1, df2, by = NULL)

library(dplyr)

# Bán phần
# Nối bán phần trái
banphan_df_trai <- semi_join(df1, df2, by = "KeyID")
banphan_df_phai <- semi_join(df2, df1, by = "KeyID")

# Loại trừ
# Nối bán phần trái
laotru_df_trai <- anti_join(df1, df2, by = "KeyID")
# Nối bán phần phai
laotru_df_phai <- anti_join(df2, df1, by = "KeyID")

# Nối toàn phần loại trừ

toanphan_loaitru_df <- merge(anti_join(df1, df2, by = "KeyID"),
                             anti_join(df2, df1, by = "KeyID"),
                             by = "KeyID",
                             all = TRUE)
