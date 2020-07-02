\header {
  title = "INNOMINATAM"
  composer = "Jakob D. Neuhauser"
}

#(set-global-staff-size 23)

melodyA = 
\relative c'{
    c8 d es d c d g4
}
melodyA-u = 
\relative c''{
    c8 d es d c d g4
}

melodyB = 
\relative c'{
    c8 d es d c d es4
}
melodyB-u = 
\relative c''{
    c8 d es d c d es4
}

melodyC = 
\relative c' {
    c8 es c es c es c es
}

melodyD = 
\relative c'' {
    es8 c es c d c d c 
}

melodyE = 
\relative c'{
    es8 d c4 g'8 es d4
}

melodyF = 
\relative c'{
    c8 d es4 c8 d es4 c8 d g4 es d
}

bassFull = 
\relative c {
    \set Staff.pedalSustainStyle = #'bracket
    \sustainOff\sustainOn 			c,2 <c' es g>4~ <c es g> 
    c,2		\sustainOff\sustainOn	<c' es g>4~ <c es g>
    f,2		\sustainOff\sustainOn	<c' f as>4~ <c f as>
    f,2 	\sustainOff\sustainOn	<c' f as>4~ <c f as>    
    es,2	\sustainOff\sustainOn	<es' g bes>4~ <es g bes>
    es,2	\sustainOff\sustainOn	<es' g bes>4~ <es g bes> 
    g,2 	\sustainOff\sustainOn	<d' g bes>4~ <d g bes>
    g,2 	\sustainOff\sustainOn	<d' g bes>4~ <d g bes>
}

bassFullb = 
\relative c {
    \set Staff.pedalSustainStyle = #'bracket
    \sustainOff\sustainOn 			c,2 <c' es g>2 
    c,2		\sustainOff\sustainOn	<c' es g>2
    f,2		\sustainOff\sustainOn	<c' f as>2
    f,2 	\sustainOff\sustainOn	<c' f as>2    
    es,2	\sustainOff\sustainOn	<es' g bes>2
    es,2	\sustainOff\sustainOn	<es' g bes>2
    g,2 	\sustainOff\sustainOn	<d' g bes>2
    g,2 	\sustainOff\sustainOn	<d' g bes>2
}

\score {
\new PianoStaff 
<<
\new Staff {
    \tempo 4 = 120
    \time 4/4
    \key c \minor

    \melodyC \melodyC

    \melodyC \melodyC \melodyC \melodyC \melodyC \melodyC \melodyC \melodyC

    \tempo 4 = 130
    \relative c''{
        r2 es8 c es c 
    }

    \melodyD \melodyD \melodyD \melodyD \melodyD \melodyD \melodyD 

    \relative c''{
        es8 c es c es c es c 
    }

    ~c''1
    \tempo 4 = 160
    \melodyA \melodyA \melodyA \melodyB \melodyA \melodyA \melodyA \melodyB
    \melodyB \melodyB \melodyB \melodyA \melodyB \melodyB \relative c'{ c8 d es d c d es d } \melodyA

    \melodyA-u \melodyA-u \melodyA-u \melodyB-u \melodyA-u \melodyA-u \melodyA-u \melodyB-u
    \melodyB-u \melodyB-u \melodyB-u \melodyA-u \melodyB-u \melodyB-u \relative c''{ c8 d es d c d es d } \melodyB-u
    
    \relative c''{
        r2 es8 c es c 
    }

    \melodyD \melodyD \melodyD \melodyD \melodyD \melodyD \melodyD 

    \relative c''{
        es8 c es c es c es c 
    }

    ~c''1

    \melodyE \melodyE \melodyE \melodyE \melodyE \melodyE \melodyE \melodyE

    \melodyF \melodyF \melodyF \melodyF~

    \relative c''{
        d,2 c8 d es4 
    }

    \melodyA-u \melodyA-u \melodyA-u \melodyB-u \melodyA-u \melodyA-u \melodyA-u \melodyB-u
    \melodyB-u \melodyB-u \melodyB-u \melodyA-u \melodyB-u \melodyB-u \relative c''{ c8 d es d c d es d } \relative c''{ c8 d es d c d g4 }

    \melodyA \melodyA \melodyA \melodyB \melodyA \melodyA \melodyA \melodyB
    \melodyB \melodyB \melodyB \melodyA \melodyB \melodyB \relative c'{ c8 d es d c d es d } \relative c'{ c8 d es d c d es d }

    \relative c'{ c8 d es4 d4 c4}

    ~c'1
    f' es' g' 
    <c'>
    ~<c'>
    ~<c'>
    \bar "|."
}

\new Staff {
    \clef bass
    \time 4/4
    \key c \minor
    \set Staff.pedalSustainStyle = #'bracket 
    
    r4  c,2. \sustainOn (<c es g>1)

    \bassFullb~

    <d g bes>1 \sustainOff\sustainOn

    \bassFullb ~<d g bes>1
    
    r4 \bassFull
    \bassFull
    \bassFull

    \bassFull~ <d g bes>2.

    \bassFullb~

    <d g bes>1 \sustainOff\sustainOn

    r4 \bassFull
    \bassFull~

    <d g bes>2. \sustainOff\sustainOn

    r4 \bassFull
    \bassFull
    \bassFull
    \bassFull~

    <d g bes>2. \sustainOff\sustainOn
    <c es g>1 \sustainOff\sustainOn
    <c f as>1 \sustainOff\sustainOn
    <es g bes>1 \sustainOff\sustainOn
    <d g bes>1 \sustainOff\sustainOn
    <es, g, c>1 \sustainOff\sustainOn
    ~<es, g, c>1 
    ~<es, g, c>1 \sustainOff



}
>>

  \midi { }
  \layout { }
}
