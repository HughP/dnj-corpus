#!/usr/bin/env python2
# -*- coding: utf-8 -*-

import pygal                                          # First import pygal
from pygal.style import DarkStyle
bar_chart = pygal.Bar(style=DarkStyle, title=u'Distance traveled in Centimeters', x_title='Per Finger and Total')                         # Then create a bar graph object
bar_chart.x_labels = 'Pinky', 'Ring', 'Middle', 'Index', 'Thumb', 'Thumb', 'Index', 'Middle', 'Ring', 'Pinky', 'Total'
bar_chart.add('[tcf] Mephaa', [1010.3, 2365.9, 1376.6, 7347.6, 0.0, 0.0, 16144.2, 6707.8, 2970.9, 33980.0, 71903.4])  # Add some values
#bar_chart.add('[tcf] Optimized (KLA) Mephaa', [1921.2, 1355.0, 2276.0, 8905.2, 0.0, 0.0, 8177.2, 1464.5, 1303.8, 4401.1, 29804.1])  # Add some values
bar_chart.add('[eng] QWERTY', [954.4, 1121.8, 5508.9, 9107.4, 0.0, 0.0, 9189.3, 3116.7, 4475.2, 2766.9, 36240.5])
#bar_chart.add('[eng] Colemak', [954.4, 1121.8, 1780.1, 5181.7, 0.0, 0.0, 4887.6, 2217.5, 1993.4, 2265.3, 20401.8])
#bar_chart.add('[eng] KLA-ENG', [1592.2, 1002.8, 1639.6, 5366.1, 0.0, 0.0, 5603.4, 1100.2, 946.2, 2940.8, 20191.3])
bar_chart.add('[spa] ISO Spanish', [571.8, 13.0, 6351.2, 6016.8, 0.0, 0.0, 6705.8, 3047.9, 4246.3, 3591.0, 31543.8])
#bar_chart.add('[spa] KLA-SPA', [1449.5, 950.2, 1455.1, 5016.2, 0.0, 0.0, 4447.4, 977.7, 718.5, 2446.2, 17460.7])
bar_chart.render_to_file('total_traveled_distance.svg')            # Save the svg to a file
#bar_chart.render_to_png(filename='total_traveled_distance.png')

#
# Estimated Distance in CM
#
# Left Pinky, Left Ring, Left Middle, Left Index, Left Thumb, Right Thumb, Right Index, Right Middle, Right Ring, Right Pinky, Total
# Mephaa, 1010.3, 2365.9, 1376.6, 7347.6, 0.0, 0.0, 16144.2, 6707.8, 2970.9, 33980.0, 71903.4
# Custom Mephaa, 1921.2, 1355.0, 2276.0, 8905.2, 0.0, 0.0, 8177.2, 1464.5, 1303.8, 4401.1, 29804.1
