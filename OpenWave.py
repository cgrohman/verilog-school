import subprocess

print("---This script will create the waveform using GTKwave---")
print(subprocess.check_output(["ls"]))
filename = input('File name:')
filenametb = filename.replace(".v","_tb.v")
filenamevvp=filename+"vp"
filenamevcd=filename[:-2]+"_output.vcd"

print(filename)
print(filenametb)
print(filenamevvp)
print(filenamevcd)

subprocess.call(["iverilog",filename,filenametb,"-o",filenamevp])
subprocess.call(["vvp",filenamevp])
subprocess.call(["gtkwave",filenamevcd])