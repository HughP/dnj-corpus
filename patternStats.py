import os
import re
from collections import Counter
import json
import csv


with open('config.json') as configJson:
    config = json.loads(configJson.read())

# Valid stem forming characters
stem_chars = config['alphabet']

def toLowercaseThenCountOfSet(words):
    return len(set([word.lower() for word in words]))

def toLowercase(words):
    return [word.lower() for word in words]

def line():
    print('_________________________________________')

def param_capture(initial_char, final_char):
    trim_start = 0 if initial_char else 1
    initial_char = "[. !?»«)>,\n\r]" if not initial_char else initial_char
    final_char = "[. !?»«)>,\n\r]" if not final_char else final_char
    matches = [f[1:-1] for f in re.findall(initial_char+'['+stem_chars+']+'+final_char, corpus)]
    data = Counter(matches)
    return data.most_common()



with open(config['file']) as target:
    corpus = target.read()

    tonePatterns = []
    totalCaptureCount = 0
    for i in config['initials']:
        for f in config['finals']:
            pattern = param_capture(initial_char=i, final_char=f)
            tonePatterns.append(pattern)
            totalCaptureCount += sum(t[1] for t in pattern)

    print("Total Capture Count:", totalCaptureCount)
    csvWriter = csv.writer(open('tonepatterns.csv', 'w'), delimiter='\t')
    csvWriter.writerow(["I", "F", "Lexical String", "Usage", "%", "Other Tone Patterns"])
    for tpattern in tonePatterns:
        for (lexicalString, occuranceCount) in tpattern:
            csvWriter.writerow([i if i else "", f if f else "", lexicalString, occuranceCount,round(10*(occuranceCount/totalCaptureCount),2),"?"])
