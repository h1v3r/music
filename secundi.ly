\header {
  title = "secundi"
  composer = "Jakob D. Neuhauser"
}

#(set-global-staff-size 23)

melody_f_a = 
\relative c''{
    fis8. cis' d cis fis4,
}
melody_f_b = 
\relative c''{
    fis8 cis' d cis a' cis, d cis
}
melody_f_b_min = 
\relative c''{
    fis8 cis' d cis gis' cis, d cis
}
melody_f_c = 
\relative c''{
    fis8 cis' d cis d cis fis4,
}
melody_f_d = 
\relative c''{
    fis8 cis' d cis
}
melody_f_d_low = 
\relative c''{
    fis8, cis' d cis
}
melody_f_e =
\relative c''{
    fis8, cis' d cis a cis d cis
}
melody_f_e_min =
\relative c''{
    fis8, cis' d cis gis cis d cis
}


melody_c_b = 
\relative c''{
    cis8 gis' a gis e' gis, a gis
}
melody_c_b_min = 
\relative c''{
    cis8 gis' a gis dis' gis, a gis
}
melody_c_c = 
\relative c''{
    cis8 gis' a gis a gis cis4,
}
melody_c_d = 
\relative c''{
    cis8 gis' a gis
}




bass_short = 
\relative c {
    \set Staff.pedalSustainStyle = #'bracket

    \sustainOff\sustainOn 			<fis a cis>1
    \sustainOff\sustainOn 			<a cis e>
    \sustainOff\sustainOn 			<cis, e gis>
    \sustainOff\sustainOn 			<b' d fis>
    \sustainOff\sustainOn 	

}

bass_long = 
\relative c {
    \set Staff.pedalSustainStyle = #'bracket
    
    fis2,,  \sustainOff\sustainOn   <fis'' a cis>
    fis2,,  \sustainOff\sustainOn   <fis'' a cis>
    a,,     \sustainOff\sustainOn   <a'' cis e>
    a,,     \sustainOff\sustainOn   <a'' cis e>
    cis,,,	\sustainOff\sustainOn   <cis'' e gis>
    cis,,	\sustainOff\sustainOn   <cis'' e gis>
    b,      \sustainOff\sustainOn   <b'' d fis>
    b,,     \sustainOff\sustainOn   <b'' d fis>	
}

\score {
\new PianoStaff 
<<
\new Staff {
   % \tempo 4 = 120
    \time 4/4
    \key fis \minor

    \melody_f_a \melody_f_a \melody_f_b \melody_f_a
    \melody_f_b \melody_f_b \melody_f_b \melody_f_b 

    \melody_f_b \melody_f_b_min \melody_c_b \melody_c_b_min

    \melody_c_c \melody_c_c \melody_c_c \melody_c_c
    \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d 
    \melody_c_b \melody_c_b_min \melody_c_b \melody_c_b_min \melody_c_b \melody_c_b_min \melody_c_b \melody_c_b_min
    \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_c_d \melody_f_d_low \melody_f_d_low \melody_f_d_low \melody_f_d_low \melody_f_d_low \melody_f_d_low \melody_f_d_low \melody_f_d_low

    \melody_f_e \melody_f_e_min \melody_f_e \melody_f_e_min \melody_f_e \melody_f_e_min \melody_f_e \melody_f_e_min
    \melody_f_d_low \melody_f_d_low \melody_f_d_low \melody_f_d_low \melody_f_d_low \melody_f_d_low \melody_f_d_low \melody_f_d_low \melody_f_d \melody_f_d \melody_f_d \melody_f_d \melody_f_d \melody_f_d \melody_f_d \melody_f_d
    \melody_c_b \melody_c_b_min \melody_c_b \melody_c_b_min \melody_c_b \melody_c_b_min \melody_c_b \melody_c_b_min    

    \melody_f_c \melody_f_c \melody_f_c \melody_f_c \melody_f_c \melody_f_c \melody_f_c \melody_f_c

    \melody_f_a \melody_f_a \melody_f_b \melody_f_a~ fis''1
}

\new Staff {
    \clef bass
    \time 4/4
    \key fis \minor
    \set Staff.pedalSustainStyle = #'bracket 
    
    \relative c { \sustainOn r1 \sustainOff\sustainOn <a cis e>  \sustainOff\sustainOn <cis e gis> \sustainOff\sustainOn <b' d fis> \sustainOff\sustainOn}

    \bass_short
    \bass_short
    \bass_short

    \bass_long
    \bass_long
    \bass_long
    \bass_long
    \bass_long
    \bass_long
    \bass_long

    \sustainOff\sustainOn 			<fis a cis'>1
    \sustainOff\sustainOn 			<a cis' e'>
    \sustainOff\sustainOn 			<cis e gis>
    \sustainOff\sustainOn 			<b d' fis'>2.
    \sustainOff\sustainOn 	        <fis a cis'>4~
                                    <fis a cis'>1
    \sustainOff\sustainOn


}
>>

  \midi { }
  \layout { }
}
