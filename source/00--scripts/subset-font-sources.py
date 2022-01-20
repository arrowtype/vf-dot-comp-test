"""
    Removes glyphs from current font if they are not in the "glyphsToKeep" list.
    
    Also removes glyphs from groups, kerning, and components.
    
    Includes template glyphs in selection and removal.

    USAGE:
    python3 source/00--scripts/subset-font-sources.py <directory_of_UFOs>
"""

import sys
import os
from fontParts.world import *

sourceFolderPath = sys.argv[1]

# list of glyphs to keep (glyph names)
glyphsToKeep = "dotcomb i j  dieresiscomb idieresis period exclam space".split(" ")

def removeUnwantedGlyphs(font, glyphsToKeep):

    # copy space-separated glyph names here
    # glyphsToRemove = list(f.templateSelectedGlyphNames)
    glyphsToRemove = [glyphName for glyphName in f.templateSelectedGlyphNames if glyphName not in glyphsToKeep]

    # FONT KEYs -----------------------------------------------

    # clean up the rest of the data
    for glyphName in glyphsToRemove:
        #print(glyphName)
        # remove from keys
        #if glyphName in f:
        if glyphName in f.keys():
            del f[glyphName]
        else:
            continue

    # LAYERS --------------------------------------------------

    for layerName in f.layerOrder:
        layer = f.getLayer(layerName)
        for glyphToRemove in glyphsToRemove:
            if glyphToRemove in layer:
                del layer[glyphToRemove]


    # GLYPH ORDER ---------------------------------------------

    # saving template glyph order
    templateGlyphs = f.templateGlyphOrder

    glyphOrder = f.glyphOrder

    for glyphName in glyphsToRemove:
        if glyphName in glyphOrder:
            glyphOrder.remove(glyphName)
        if glyphName in templateGlyphs:
            templateGlyphs.remove(glyphName) 

    f.glyphOrder = glyphOrder

    # restoring template glyphs
    f.templateGlyphOrder = templateGlyphs

    # KERNING -----------------------------------------------------------

    for glyphName in glyphsToRemove:
        # iterate over all kerning pairs in the font
        for kerningPair in f.kerning.keys():

            # if glyph is in the kerning pair, remove it
            if glyphName in kerningPair:
                del f.kerning[kerningPair]

    # COMPONENTS -------------------------------------------------------

    # iterate over all glyphs in the font
    for glyph in f:

        # skip glyphs which components
        if not glyph.components:
            continue

        # iterate over all components in glyph
        for component in glyph.components:

            # if the base glyph is the glyph to be removed
            if component.baseGlyph in glyphsToRemove:
                # delete the component
                glyph.removeComponent(component)

    # clearing this list so it's not saved...
    glyphsToRemove = []

# go through the folder and subset the source UFOs
for fileName in os.listdir(sourceFolderPath):
    if fileName.endswith(".ufo"):
        ufoPath = os.path.join(sourceFolderPath, fileName)
        
        f = OpenFont(ufoPath, showInterface=False)

        removeUnwantedGlyphs(f, glyphsToKeep)