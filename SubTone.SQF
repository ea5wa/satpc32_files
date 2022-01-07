SO-50,67.0,$3F,1
SO-50,74.4,$3E,3
AO-85,67.0,$3F,1
AO-91,67.0,$3F,1
AO-92,67.0,$3F,1
FOX1-Cliff,67.0,$3F,1
ESEO,67.0,$3F,1
K2SAT,67.0,$3F,1
ExseedSat,67.0,$3F,1
PO-101,141.3,$3F,1
ISS,67.0,$3F,1
;
; Hints:
;
; This file contains the data that is required by SatPC32 to control the 
; subaudio tone functions of the radio.
;
; At present, the program supports these functions with the Yaesu FT-847, FT-736R, 
; FT-817, FT-857, FT-897, the Kenwood TS-790A, TS-2000, the Icom IC-910H and 
; other Icom radios which are using the same Ctcss CAT commands. 
;
; With the FT-736R the optional unit FTS-8 is required. 
;
; At present, SO-50 and AO-51 are the only satellites which require a sub audible 
; tone (67.0 Hertz) on the uplink signal. 
; SO-50 requires additionally a 74.4 Hertz burst tone to be opened, see below. 
;
; If another satellite of this kind will be launched the new data may be added to 
; the data section of this file. 
;
; Attention: When you modify the data section change only the parameter which is 
; used by your radio (see below) and leave the other parameters un-changed!   
;
; A data line has to contain 4 parameters, separated by a comma:
;
; Parameter 1 contains the name of the satellite. The spelling must exactly match
; the spelling of the name in the Keplerian data file.
;
; Parameters 2 - 4 contain the data to set the proper tone frequency. Since the
; radios use different data formats the value is encoded in 3 parameters.
; You will find the proper values and formats in the manual of your radio.
;
; Parameter 2 contains the subaudio tone frequency in decimal format, i.e. 67.0 
; for SO-50. This format is used by the Yaesu transceivers FT-817, FT-857
; and FT-897 and the IOM IC-910H. 
; 
; Parameter 3 contains an instruction code for this frequency in hexadecimal 
; format (indicated  by a leading "$" sign). This data format is used by
; the Yaesu FT-736R and FT-847. The values for the FT-736R and the FT-847
; are different, however.
;
; Parameter 4 contains the instruction code (1 - 39) that is used by the 
; Kenwood TS-2000. It has to be entered as integer value in decimal format.  
; 
; The content of the top line of this file is designed for AO-51 and a 
; 67 Hertz tone.
; The instruction code $3F is used with the FT-847. With the FT-736R 
; the code has to be $3E. To use the file with this radio the entry therefore 
; has to be changed to: AO-51,67.0,$3E,1
;
; To enable the Sub-Tone-functions in SatPC32 and Wisat32 switch the "T" 
; control to "T1". The program will then automatically switch on the tone and
; set the proper tone frequency when you select a satellite for which the
; program  finds data in this file. When you switch to another satellite, 
; the program will automatically switch off the tone. The "T" control will 
; remain "T1", however. When the "T" control shows "T0" the program will never
; switch on the tone. 
;
; AO-51: The FM voice repeater requires a 67.0 Hertz tone on the uplink. 
; Therefore switch the "T" control to "T1" to operate AO-51 in this mode. 
; The digital transponder doesn't require the tone. Therefore switch the "T" 
; control to "T0" to work the satellite in this mode.
;  
; SO-50: Before this satellite can be worked it has to be opened by a 74.4 Hertz
; "burst" tone. Therefore the file contains an additional line with  data for
; this tone frequency.  To set this tone frequency with SatPC32 click the "T" 
; control until it shows  "T2". Then switch to TX for a few seconds. Click
; the "T" again until it shows "T1". That will set the tone frequency back to 
; 67.0 Hertz.
; 