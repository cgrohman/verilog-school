import subprocess
import pandas as pd

goldenValues = []

#Test RCA
subprocess.call(["iverilog","HA.v","FA.v","FourBitRCA.v","FourBitRCA_tb.v","-o","FourBitRCA.vvp"])
subprocess.call(["vvp","FourBitRCA.vvp"])

csvFile = pd.read_csv("RCA_output.csv")
sumGen = csvFile.CSum

for i in range(0,2):
	for j in range(0,16):
		for k in range(0,16):
			goldenValues.append(i+j+k)
print(len(goldenValues))
print(len(sumGen))

print('Finished!')