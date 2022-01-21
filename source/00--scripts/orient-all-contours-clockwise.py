"""
    Go through UFOs in directory and make all contours clockwise
"""

import sys
import sys
import os
from fontParts.world import *

def main():

    sourceFolderPath = sys.argv[1]

    for subPath in os.listdir(sourceFolderPath):
        print(subPath)
        if subPath.endswith(".ufo"):
            ufoPath = os.path.join(sourceFolderPath, subPath)
            
            f = OpenFont(ufoPath, showInterface=False)

            for g in f:
                try:
                    for contour in g:
                        # make contour clockwise if it’s not
                        if contour.clockwise == False:
                            contour.reverse()

                except:
                    pass

            f.save()

if __name__ == "__main__":
    main()
