Attribute VB_Name = "Module1"
Option Explicit
Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
   Global Const SND_SYNC = &H0
   Global Const SND_ASYNC = &H1
   Global Const SND_NODEFAULT = &H2
   Global Const SND_LOOP = &H8
   Global Const SND_NOSTOP = &H10

Public Type plyr
'player properties
money As Long
citizens As Long

paused As Boolean
multiok As Boolean
connected As Boolean
dopirate As Boolean
dosound As Boolean
dohouse As Boolean

day As Integer
month As Integer
year As Long

lcash As Long
ltech As Long
losses As Long
elosses As Long
dmginflicted As Long
dmgreceived As Long

research As Long
houses As Long
taxes As Long
military As Long

planetname As String
name As String

'Enemy properties
emoney As Long
ecitizens As Long

eresearch As Long
ehouses As Long
etaxes As Long
emilitary As Long

eplanetname As String
ename As String
End Type

