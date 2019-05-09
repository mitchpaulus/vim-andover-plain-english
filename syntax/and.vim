if exists("b:current_syntax")
    echom "Exited early"
    echom b:current_syntax
    finish
endif

syntax match Number "\v(^|[^._a-zA-Z0-9])\zs[0-9]+(\.[0-9]*)?\ze([^._a-zA-Z0-9]|$)"

syntax keyword Type Numeric String
syntax match Comment "\v'.*$"

syntax keyword Constant On Off True False

syntax match Identifier "\v^[a-zA-Z0-9]+\ze:"

syntax match Function "\v[a-zA-Z]+\ze\("

" The tables seem to be missing some keywords.
syntax keyword Statement ENDIF Endif endif EndIf Start start START

highlight link Attributes Type

" Attributes (Pg 1-11)
syntax keyword Statement STATE State state
syntax keyword Statement STATUS Status status
syntax keyword Statement ENABLED Enabled enabled
syntax keyword Statement DISABLED Disabled disabled
syntax keyword Statement ACTIVE Active active
syntax keyword Statement INACTIVE Inactive inactive


" These are generated from the tables found on page 118 of the manual.
" Access Control

syntax keyword Identifier ACCESSLOG
syntax keyword Identifier accesslog
syntax keyword Identifier Accesslog
syntax keyword Identifier ACCESSSERVER
syntax keyword Identifier accessserver
syntax keyword Identifier Accessserver
syntax keyword Identifier AVAILRECORDS
syntax keyword Identifier availrecords
syntax keyword Identifier Availrecords
syntax keyword Identifier CABINETTAMPER
syntax keyword Identifier cabinettamper
syntax keyword Identifier Cabinettamper
syntax keyword Identifier EVENTLOGSIZE
syntax keyword Identifier eventlogsize
syntax keyword Identifier Eventlogsize
syntax keyword Identifier READERPOWER
syntax keyword Identifier readerpower
syntax keyword Identifier Readerpower
syntax keyword Identifier SYSTEMSTATUS
syntax keyword Identifier systemstatus
syntax keyword Identifier Systemstatus
syntax keyword Identifier UNIQUEPIN
syntax keyword Identifier uniquepin
syntax keyword Identifier Uniquepin


" Alarm Counting

syntax keyword Identifier ACTIVEALARMS
syntax keyword Identifier activealarms
syntax keyword Identifier Activealarms
syntax keyword Identifier UNACKEDALARMS
syntax keyword Identifier unackedalarms
syntax keyword Identifier Unackedalarms


" BACnet

syntax keyword Function READPROPERTY
syntax keyword Function readproperty
syntax keyword Function Readproperty
syntax keyword Function RELINQUISH
syntax keyword Function relinquish
syntax keyword Function Relinquish
syntax keyword Function WRITEPROPERTY
syntax keyword Function writeproperty
syntax keyword Function Writeproperty


" Building Control

syntax keyword Statement MOVE
syntax keyword Statement move
syntax keyword Statement Move
syntax keyword Statement TURN
syntax keyword Statement turn
syntax keyword Statement Turn


" Control of Inputs and Outputs

syntax match Identifier "IOUCOMMFLT#"
syntax match Identifier "ioucommflt#"
syntax match Identifier "Ioucommflt#"
syntax match Identifier "STATUS#"
syntax match Identifier "status#"
syntax match Identifier "Status#"


" Control Over Communications

syntax keyword Function INITMODEM
syntax keyword Function initmodem
syntax keyword Function Initmodem
syntax keyword Function DIAL
syntax keyword Function dial
syntax keyword Function Dial
syntax keyword Function CLOSE
syntax keyword Function close
syntax keyword Function Close
syntax keyword Function HANGUP
syntax keyword Function hangup
syntax keyword Function Hangup
syntax keyword Function OPEN
syntax keyword Function open
syntax keyword Function Open
syntax keyword Function READ
syntax keyword Function read
syntax keyword Function Read


" Creating/Manipulating Files

syntax keyword Function CLOSEFILE
syntax keyword Function closefile
syntax keyword Function Closefile
syntax keyword Statement FILE
syntax keyword Statement file
syntax keyword Statement File
syntax keyword Function OPENFILE
syntax keyword Function openfile
syntax keyword Function Openfile
syntax keyword Function POSITIONFILE
syntax keyword Function positionfile
syntax keyword Function Positionfile
syntax keyword Function READFILE
syntax keyword Function readfile
syntax keyword Function Readfile
syntax keyword Function WRITEFILE
syntax keyword Function writefile
syntax keyword Function Writefile
syntax keyword Constant EOF
syntax keyword Constant eof
syntax keyword Constant Eof


" Date and Time

syntax keyword Identifier DATE
syntax keyword Identifier date
syntax keyword Identifier Date
syntax keyword Statement DATETIME
syntax keyword Statement datetime
syntax keyword Statement Datetime
syntax match Identifier "DAYOF MONTH"
syntax match Identifier "dayof month"
syntax match Identifier "Dayof month"
syntax keyword Identifier DAYOFYEAR
syntax keyword Identifier dayofyear
syntax keyword Identifier Dayofyear
syntax keyword Function DIFFTIME
syntax keyword Function difftime
syntax keyword Function Difftime
syntax keyword Identifier HOD
syntax keyword Identifier hod
syntax keyword Identifier Hod
syntax keyword Identifier HOUR
syntax keyword Identifier hour
syntax keyword Identifier Hour
syntax keyword Identifier MINUTE
syntax keyword Identifier minute
syntax keyword Identifier Minute
syntax keyword Identifier MONTH
syntax keyword Identifier month
syntax keyword Identifier Month
syntax keyword Identifier POWERFAIL
syntax keyword Identifier powerfail
syntax keyword Identifier Powerfail
syntax keyword Identifier POWERUPTIME
syntax keyword Identifier poweruptime
syntax keyword Identifier Poweruptime
syntax keyword Identifier SECOND
syntax keyword Identifier second
syntax keyword Identifier Second
syntax keyword Function STRTODATE
syntax keyword Function strtodate
syntax keyword Function Strtodate
syntax keyword Function TIMEPIECE
syntax keyword Function timepiece
syntax keyword Function Timepiece
syntax keyword Identifier TOD
syntax keyword Identifier tod
syntax keyword Identifier Tod
syntax keyword Attributes TS
syntax keyword Attributes ts
syntax keyword Attributes Ts
syntax keyword Attributes TM
syntax keyword Attributes tm
syntax keyword Attributes Tm
syntax keyword Attributes TH
syntax keyword Attributes th
syntax keyword Attributes Th
syntax keyword Attributes TD
syntax keyword Attributes td
syntax keyword Attributes Td
syntax keyword Identifier WEEKDAY
syntax keyword Identifier weekday
syntax keyword Identifier Weekday
syntax keyword Identifier YEAR
syntax keyword Identifier year
syntax keyword Identifier Year


" Debugging

syntax keyword Statement DISABLE
syntax keyword Statement disable
syntax keyword Statement Disable
syntax keyword Statement ENABLE
syntax keyword Statement enable
syntax keyword Statement Enable
syntax keyword Statement P
syntax keyword Statement p
syntax keyword Statement P
syntax keyword Statement PRINT
syntax keyword Statement print
syntax keyword Statement Print


" Display

syntax keyword Function ASK
syntax keyword Function ask
syntax keyword Function Ask
syntax keyword Function CLOSEWINDOW
syntax keyword Function closewindow
syntax keyword Function Closewindow
syntax keyword Statement PRINT
syntax keyword Statement print
syntax keyword Statement Print
syntax keyword Identifier MESSAGEWINDOW
syntax keyword Identifier messagewindow
syntax keyword Identifier Messagewindow
syntax keyword Statement SHOW
syntax keyword Statement show
syntax keyword Statement Show
syntax keyword Statement SHOWREPORT
syntax keyword Statement showreport
syntax keyword Statement Showreport
syntax keyword Identifier STATUSLINE
syntax keyword Identifier statusline
syntax keyword Identifier Statusline


" Email

syntax keyword Function SENDEMAIL
syntax keyword Function sendemail
syntax keyword Function Sendemail


" Flow Control

syntax keyword Statement BASEDON
syntax keyword Statement basedon
syntax keyword Statement Basedon
syntax keyword Statement GOTO
syntax keyword Statement goto
syntax keyword Statement Goto
syntax keyword Statement BREAK
syntax keyword Statement break
syntax keyword Statement Break
syntax keyword Statement CONTINUE
syntax keyword Statement continue
syntax keyword Statement Continue
syntax keyword Statement FOR
syntax keyword Statement for
syntax keyword Statement For
syntax keyword Statement NEXT
syntax keyword Statement next
syntax keyword Statement Next
syntax keyword Statement GOTO
syntax keyword Statement goto
syntax keyword Statement Goto
syntax keyword Statement IF
syntax keyword Statement if
syntax keyword Statement If
syntax keyword Statement THEN
syntax keyword Statement then
syntax keyword Statement Then
syntax keyword Statement ELSE
syntax keyword Statement else
syntax keyword Statement Else
syntax keyword Statement LINE
syntax keyword Statement line
syntax keyword Statement Line


" Flow Control continued

syntax keyword Statement REPEAT
syntax keyword Statement repeat
syntax keyword Statement Repeat
syntax keyword Statement UNTIL
syntax keyword Statement until
syntax keyword Statement Until
syntax keyword Statement RETURN
syntax keyword Statement return
syntax keyword Statement Return
syntax keyword Statement ROTATE
syntax keyword Statement rotate
syntax keyword Statement Rotate
syntax keyword Statement RUN
syntax keyword Statement run
syntax keyword Statement Run
syntax keyword Statement STOP
syntax keyword Statement stop
syntax keyword Statement Stop
syntax keyword Statement SELECT
syntax keyword Statement select
syntax keyword Statement Select
syntax keyword Statement CASE
syntax keyword Statement case
syntax keyword Statement Case
syntax keyword Statement WHILE
syntax keyword Statement while
syntax keyword Statement While


" Input/Output

syntax keyword Statement LOGOUT
syntax keyword Statement logout
syntax keyword Statement Logout
syntax keyword Statement P
syntax keyword Statement p
syntax keyword Statement P
syntax keyword Statement PRINT
syntax keyword Statement print
syntax keyword Statement Print


" Logical

syntax keyword Operator AND
syntax keyword Operator and
syntax keyword Operator And
syntax keyword Operator BITAND
syntax keyword Operator bitand
syntax keyword Operator Bitand
syntax keyword Operator BITNOT
syntax keyword Operator bitnot
syntax keyword Operator Bitnot
syntax keyword Operator BITOR
syntax keyword Operator bitor
syntax keyword Operator Bitor
syntax keyword Operator BITXOR
syntax keyword Operator bitxor
syntax keyword Operator Bitxor
syntax keyword Operator IS
syntax keyword Operator is
syntax keyword Operator Is
syntax match Operator "IS BETWEEN"
syntax match Operator "is between"
syntax match Operator "Is between"
syntax match Operator "IS GREATER"
syntax match Operator "is greater"
syntax match Operator "Is greater"
syntax match Operator "IS LESS"
syntax match Operator "is less"
syntax match Operator "Is less"
syntax keyword Operator NOT
syntax keyword Operator not
syntax keyword Operator Not
syntax keyword Operator OR
syntax keyword Operator or
syntax keyword Operator Or


" Logs

syntax keyword Function DELETEEXTLOG
syntax keyword Function deleteextlog
syntax keyword Function Deleteextlog
syntax keyword Function GETEXTLOG
syntax keyword Function getextlog
syntax keyword Function Getextlog
syntax keyword Function UPDATEEXTLOG
syntax keyword Function updateextlog
syntax keyword Function Updateextlog


" Mathematical

syntax keyword Function ABS
syntax keyword Function abs
syntax keyword Function Abs
syntax keyword Function ACOS
syntax keyword Function acos
syntax keyword Function Acos
syntax keyword Function ASIN
syntax keyword Function asin
syntax keyword Function Asin
syntax keyword Function ATAN
syntax keyword Function atan
syntax keyword Function Atan
syntax keyword Function ATAN2
syntax keyword Function atan2
syntax keyword Function Atan2
syntax keyword Function AVERAGE
syntax keyword Function average
syntax keyword Function Average
syntax keyword Function CEILING
syntax keyword Function ceiling
syntax keyword Function Ceiling
syntax keyword Function COS
syntax keyword Function cos
syntax keyword Function Cos
syntax match Function "DIVIDED BY"
syntax match Function "divided by"
syntax match Function "Divided by"
syntax keyword Function EXPONENTIAL
syntax keyword Function exponential
syntax keyword Function Exponential
syntax keyword Function FACTORIAL
syntax keyword Function factorial
syntax keyword Function Factorial
syntax keyword Function FLOOR
syntax keyword Function floor
syntax keyword Function Floor
syntax keyword Function LN
syntax keyword Function ln
syntax keyword Function Ln
syntax keyword Function LOG
syntax keyword Function log
syntax keyword Function Log
syntax keyword Function MAXIMUM
syntax keyword Function maximum
syntax keyword Function Maximum
syntax keyword Function MAXITEM
syntax keyword Function maxitem
syntax keyword Function Maxitem
syntax keyword Function MINIMUM
syntax keyword Function minimum
syntax keyword Function Minimum
syntax keyword Function MINITEM
syntax keyword Function minitem
syntax keyword Function Minitem
syntax keyword Operator MINUS
syntax keyword Operator minus
syntax keyword Operator Minus


" Mathematical

syntax keyword Operator MOD
syntax keyword Operator mod
syntax keyword Operator Mod
syntax keyword Operator PLUS
syntax keyword Operator plus
syntax keyword Operator Plus
syntax keyword Function RANDOM
syntax keyword Function random
syntax keyword Function Random
syntax keyword Function ROUND
syntax keyword Function round
syntax keyword Function Round
syntax keyword Function SIN
syntax keyword Function sin
syntax keyword Function Sin
syntax keyword Function SQRT
syntax keyword Function sqrt
syntax keyword Function Sqrt
syntax keyword Operator STANDARDDEVIATION
syntax keyword Operator standarddeviation
syntax keyword Operator Standarddeviation
syntax keyword Function SUM
syntax keyword Function sum
syntax keyword Function Sum
syntax keyword Function TIMES
syntax keyword Function times
syntax keyword Function Times
syntax keyword Function TAN
syntax keyword Function tan
syntax keyword Function Tan
syntax keyword Function TRUNCATE
syntax keyword Function truncate
syntax keyword Function Truncate


" Miscellaneous

syntax keyword Statement ARG
syntax keyword Statement arg
syntax keyword Statement Arg
syntax keyword Statement CD
syntax keyword Statement cd
syntax keyword Statement Cd
syntax keyword Article THE
syntax keyword Article the
syntax keyword Article The


" Operating System Access

syntax keyword Statement SHELL
syntax keyword Statement shell
syntax keyword Statement Shell


" Retrieving Lists of Objects

syntax keyword Function CLOSELIST
syntax keyword Function closelist
syntax keyword Function Closelist
syntax keyword Function GETOBJECT
syntax keyword Function getobject
syntax keyword Function Getobject
syntax keyword Statement OBJECT
syntax keyword Statement object
syntax keyword Statement Object
syntax keyword Function OPENLIST
syntax keyword Function openlist
syntax keyword Function Openlist


" String Manipulation

syntax keyword Function ASC
syntax keyword Function asc
syntax keyword Function Asc
syntax keyword Function CHR
syntax keyword Function chr
syntax keyword Function Chr
syntax keyword Function LEFT
syntax keyword Function left
syntax keyword Function Left
syntax keyword Function LENGTH
syntax keyword Function length
syntax keyword Function Length
syntax keyword Function MID
syntax keyword Function mid
syntax keyword Function Mid
syntax keyword Function NUMTOSTR
syntax keyword Function numtostr
syntax keyword Function Numtostr
syntax keyword Function RIGHT
syntax keyword Function right
syntax keyword Function Right
syntax keyword Function SEARCH
syntax keyword Function search
syntax keyword Function Search
syntax keyword Function STRINGFILL
syntax keyword Function stringfill
syntax keyword Function Stringfill
syntax keyword Function STRTODATE
syntax keyword Function strtodate
syntax keyword Function Strtodate
syntax keyword Function STRTONUM
syntax keyword Function strtonum
syntax keyword Function Strtonum
syntax keyword Function TAB
syntax keyword Function tab
syntax keyword Function Tab


" System Defined Constants

syntax keyword Constant FAILURE
syntax keyword Constant failure
syntax keyword Constant Failure
syntax keyword Constant OFF
syntax keyword Constant off
syntax keyword Constant Off
syntax match Constant "-ON"
syntax match Constant "-on"
syntax match Constant "-on"
syntax keyword Constant ON
syntax keyword Constant on
syntax keyword Constant On
syntax keyword Constant PASSED
syntax keyword Constant passed
syntax keyword Constant Passed
syntax keyword Constant SUCCESS
syntax keyword Constant success
syntax keyword Constant Success


" Using Names in Programs

syntax keyword Function GETNAME
syntax keyword Function getname
syntax keyword Function Getname


" Value Assignment

syntax keyword Statement SET
syntax keyword Statement set
syntax keyword Statement Set
syntax keyword Statement MOVE
syntax keyword Statement move
syntax keyword Statement Move
syntax match Statement "TURN ON"
syntax match Statement "turn on"
syntax match Statement "Turn on"
syntax match Statement "TURN OFF"
syntax match Statement "turn off"
syntax match Statement "Turn off"


" Administration

syntax keyword Function CURUSER
syntax keyword Function curuser
syntax keyword Function Curuser
syntax keyword Function CURWORKSTATION
syntax keyword Function curworkstation
syntax keyword Function Curworkstation
syntax keyword Function DELETEEXTLOG
syntax keyword Function deleteextlog
syntax keyword Function Deleteextlog
syntax keyword Function ERRORS
syntax keyword Function errors
syntax keyword Function Errors
syntax keyword Identifier FREEMEM
syntax keyword Identifier freemem
syntax keyword Identifier Freemem
syntax keyword Identifier LOAD
syntax keyword Identifier load
syntax keyword Identifier Load
syntax keyword Statement SAVE
syntax keyword Statement save
syntax keyword Statement Save
syntax keyword Statement SCAN
syntax keyword Statement scan
syntax keyword Statement Scan
syntax keyword Identifier VERSION
syntax keyword Identifier version
syntax keyword Identifier Version


" Display Unit Basics

syntax keyword Identifier AUDIOBELL
syntax keyword Identifier audiobell
syntax keyword Identifier Audiobell
syntax keyword Identifier BACKLIGHT
syntax keyword Identifier backlight
syntax keyword Identifier Backlight
syntax keyword Function BEGINPOLYLINE
syntax keyword Function beginpolyline
syntax keyword Function Beginpolyline
syntax keyword Function CLEARSCREEN
syntax keyword Function clearscreen
syntax keyword Function Clearscreen
syntax keyword Function CONTROL
syntax keyword Function control
syntax keyword Function Control
syntax keyword Function DRAWELIPSE
syntax keyword Function drawelipse
syntax keyword Function Drawelipse
syntax keyword Function DRAWLINE
syntax keyword Function drawline
syntax keyword Function Drawline
syntax keyword Function DRAWRECTANGLE
syntax keyword Function drawrectangle
syntax keyword Function Drawrectangle
syntax keyword Function ENDPOLYLINE
syntax keyword Function endpolyline
syntax keyword Function Endpolyline
syntax keyword Function LINEPOINT
syntax keyword Function linepoint
syntax keyword Function Linepoint
syntax keyword Function LOCATE
syntax keyword Function locate
syntax keyword Function Locate
syntax keyword Function SETDISPLAY
syntax keyword Function setdisplay
syntax keyword Function Setdisplay
syntax keyword Identifier TOUCHEDCELL
syntax keyword Identifier touchedcell
syntax keyword Identifier Touchedcell
syntax keyword Constant BLUE
syntax keyword Constant blue
syntax keyword Constant Blue
syntax keyword Constant FILL
syntax keyword Constant fill
syntax keyword Constant Fill
syntax keyword Constant NOFILL
syntax keyword Constant nofill
syntax keyword Constant Nofill
syntax keyword Constant WHITE
syntax keyword Constant white
syntax keyword Constant White


let b:current_syntax="and"

