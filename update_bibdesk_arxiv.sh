#!/bin/sh
# ADS to BibDesk -- frictionless import of ADS publications into BibDesk
# Copyright (C) 2011  Rui Pereira <rui.pereira@gmail.com>
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# ugliest hack in the world - harcoded/compressed strings of both applescript and python scripts as in the automator actions
py="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"
scpt="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"
tmpdir=$(python -c "import tempfile; print tempfile.mkdtemp()")
python -c "import binascii,zlib;\
           out=open('${tmpdir}/py.py', 'w'); print >> out, zlib.decompress(binascii.a2b_base64('${py}')); \
           out=open('${tmpdir}/scpt.scpt', 'w'); print >> out, zlib.decompress(binascii.a2b_base64('${scpt}'))"

# go the tmp directory
cd $tmpdir

# fetch arXiv bibcodes from BibDesk using an applescript
bibcodes=$(cat << EOF | osascript -
tell document 1 of application "BibDesk"
	set bibcodes to {}
	repeat with thePub in publications
		if (count (every field of thePub whose name is "Adsurl" and (value contains "arxiv" or value contains "astro.ph"))) > 0 then
			-- get bibcode from ADSurl
			set ADSurl to (value of every field of thePub whose name is "Adsurl")
			set AppleScript's text item delimiters to "/"
			set end of bibcodes to last text item of text item 1 of ADSurl
		end if
	end repeat
end tell
set AppleScript's text item delimiters to " "
return bibcodes as text
EOF
)

if [ "$bibcodes" == "" ]; then echo "Nothing to update!"; exit; fi
# check for changed bibcodes
nbibcodes=$(echo $bibcodes | wc -w)
python -c "import math;n=$nbibcodes;t=math.ceil(n*15./60.); print 'Checking %i ArXiv entries for changes...\n(to prevent ADS flooding this will take a while, check back in around %i %s)' % (n, t, t > 1 and 'minutes' or 'minute')"
python py.py -u $bibcodes
# python py.py -u $bibcodes --debug # DEBUG MODE

changed=$(wc -l changed_arxiv | awk '{print $1}')
if [ "$changed" -gt "0" ]
then
    echo ""; echo "Updating $changed entries, continue? (y/[n])"
    read -n1 -s continue
else
    echo ""; echo "Nothing to update!"
    exit
fi
if [ "$continue" != "Y" ] && [ "$continue" != "y" ]
then exit
fi

echo "(to prevent ADS flooding, we will wait for a while between each update, so go grab a coffee)"
# update bibcodes
for bibcode in `cat changed_arxiv`; do
    echo "Updating $bibcode..."
    # sleep 1 minute if updating a lot of stuff, if not wait only 10s
    if [ "$changed" -gt "10" ]
    then
        sleep 60
    else
        sleep 15
    fi
    # delete previous arXiv version explicitely
    # the automated same author/title check fails a lot
    cat << EOF | osascript -
on safeDelete(thePub)
	tell document 1 of application "BibDesk"
		tell thePub
			--remove PDFs
			repeat with theFile in (linked files whose POSIX path does not contain "_skim_" and POSIX path ends with ".pdf")
				-- keep backup with Skim notes
				if Skim notes of theFile is not {} then
					tell application "Finder"
						set theSuffix to 1
						set thePath to (container of file theFile as string)
						set AppleScript's text item delimiters to "."
						set tmpName to items 1 thru -2 of (text items of (name of file theFile as string)) as string
						set AppleScript's text item delimiters to ""
						-- find a non-existing backup name
						repeat
							set backupName to tmpName & "_skim_" & theSuffix & ".pdf"
							if not (item (thePath & backupName) exists) then exit repeat
							set theSuffix to theSuffix + 1
						end repeat
						-- change file name (BibDesk will properly reference it automatically)
						set name of file theFile to backupName
					end tell
					-- delete PDFs without Skim notes
				else
					tell application "Finder"
						delete file theFile
					end tell
				end if
			end repeat
		end tell
		delete thePub
	end tell
end safeDelete


tell document 1 of application "BibDesk"
	set pub2delete to {}
	repeat with thePub in publications
		if (count (every field of thePub whose name is "Adsurl" and (value contains "${bibcode}"))) > 0 then
			set AppleScript's text item delimiters to {"{", "}"}
			set theTitle to (title of thePub)
			set end of pub2delete to every text item of theTitle
		end if
	end repeat
	set AppleScript's text item delimiters to ""
	repeat with theTitle in pub2delete
		set theTitle to theTitle as text
		repeat with thePub in (search for theTitle)
			my safeDelete(thePub)
		end repeat
	end repeat
end tell
EOF
    osascript scpt.scpt `python py.py ${bibcode}`

done

#clean up
cd - > /dev/null
rm -rf $tmpdir

