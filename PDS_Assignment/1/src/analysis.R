#How CSV file is read
frailty_data_pds = read.csv("D:\\Docs\\My_Projects\\Data_Science\\PDS_Assignment\\1\\data_raw\\raw_frailty_data1.csv")

#Capturing CSV data.
summary(frailty_data_pds)

frailty_data_pds$Frailty <- as.factor(frailty_data_pds$Frailty)


t_test_frailty=with(frailty_data_pds,t.test(frailty_data_pds$Weight ~ frailty_data_pds$Frailty,var.equal = FALSE))
t_test_frailty

capture.output(t_test_frailty,file="D:\\Docs\\My_Projects\\Data_Science\\PDS_Assignment\\1\\results\\results.txt")
