import sys
import html

f = open(sys.argv[1], 'r') # Open the file which is the first cmd arg
f_out = open(sys.argv[2], 'w') # Open the output file
searchStart = "<div class='lyricbox'>" # String at the start of the lyrics
searchEnd = "<div class='lyricsbreak'>" # String at the end of the lyrics

endline = "" # The result

for line in f:
	if line.find(searchStart) != -1:
		end = line.find(searchEnd) # Get the end location
		start = line.find(searchStart) # Get the start location
		endline = line[len(searchStart):end] # Cut the text from in between

endline = "\n".join(endline.split("<br />")) # Replace HTML codes with newlines

print(html.unescape(endline)) # Replace HTML codes with ASCII letters
f_out.write(html.unescape(endline))
