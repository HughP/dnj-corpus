#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pygal                                          # First import pygal
from pygal.style import DarkStyle
bar_chart = pygal.Bar(style=DarkStyle, title=u'Number of Keypresses', x_title='Per Finger and Total')                         # Then create a bar graph object
bar_chart.x_labels = 'Pinky', 'Ring', 'Middle', 'Index', 'Thumb', 'Thumb', 'Index', 'Middle', 'Ring', 'Pinky', 'Total'
bar_chart.add('[tcf] Mephaa', [3253, 819, 574, 1600, 2742, 0, 4554, 2077, 1131, 5804, 22554])  # Add some values
#bar_chart.add('[tcf] Optimized (KLA) Mephaa', [])  # Add some values
bar_chart.add('[eng] QWERTY', [930, 1017, 1895, 2316, 2485, 0, 2158, 845, 1583, 458, 13687])
#bar_chart.add('[eng] Colemak', [])
#bar_chart.add('[eng] KLA-ENG', [])
bar_chart.add('[spa] ISO Spanish', [1470, 830, 2068, 1487, 2163, 0, 1627, 758, 1553, 735, 12691])
#bar_chart.add('[spa] KLA-SPA', [])
bar_chart.render_to_file('finger-usage-chart.svg')            # Save the svg to a file
#bar_chart.render_to_png(filename='finger-usage-chart.png')

#
# KeyPresses by Finger
#
