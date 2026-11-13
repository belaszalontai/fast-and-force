2 ROCKET_INIT_POS=54019
3 tphi=peek(5927):tplo=peek(5926)
4 poke5926,128-8:poke5927,8:dimc$*252
5 poke5927,tphi:poke5926,tplo
6 randomize:a=255:setcharacter153,a,a,a,a,a,a,a,a,a,a
7 setcharacter192,24,24,24,24,60,60,102,102,231,129
8 setcharacter193,31,127,127,255,204,204,255,127,127,31
9 setcharacter194,255,255,255,255,195,195,255,255,255,255
10 setcharacter195,248,254,254,255,51,51,255,254,254,248
11 i$=inkey$
12 gosub 303
13 graphics4
14 setpalette0,85,21,17:setborder0:setink1
15 gosub 307
16 setink1
17 printAT10,2,"A 40 ÅVES VIDEOTON TV-COMPUTER"
18 setink3
19 printAT12,11,"TISZTELETÅRE"
20 setink2
21 printAT14,3,"FESZEGESSáK A BASIC HATÄRAIT"
22 setink1
23 printAT19,3,"IN HONOR OF THE 40-YEAR-OLD"
24 setink3
25 printAT21,6,"VIDEOTON TV-COMPUTER"
26 setink2
27 printAT23,2,"LET'S PUSH THE LIMITS OF BASIC"
28 gosub 304
29 gosub 189
30 gosub 193
31 i$=inkey$
32 gosub 303
33 graphics4
34 setpalette0,85,21,17:setborder0:setink1
35 gosub 318
36 setink3
37 printAT6,5,"100% PURE BASIC PROGRAM"
38 printAT7,9,"NO ASSEMBLY CODE"
39 printAT8,9,"NO SYSTEM CALLS"
40 printAT9,2,"2 CHANNEL CONVERTED SID MUSIC"
41 printAT10,1,"MULTI DIRECTION HARDWARE SCROLL"
42 setink1
43 printAT13,3,"MAKE THE BASIC GREAT AGAIN!"
44 setink2
45 printAT16,6,"(C) 2025 by Fast&Force"
46 printAT17,1,"original SID music by AndyTaylor"
47 printAT18,6,"original game by TAITO"
48 printAT19,4,"development is powered by"
49 printAT20,7,"XBasic (BadCode64)"
50 printAT21,5,"SIDDumpTvc (Fast&Force)"
51 printAT22,5,"SIDDumpTvcGUI (KKS2003)"
52 setink1
53 printAT24,11,"PLEASE WAIT!";
54 gosub 304
55 gosub 305
56 gosub 186
57 gosub 306
58 setpalette0,85,20,17
59 setink3
60 printAT24,9,"PRESS ANY KEY..";
61 gameover=0
62 highscore=0
63 score=0
64 gosub 199
65 score=0
66 gosub 303
67 gosub 305
68 graphics4
69 setpalette0,85,68,17
70 A=49152+4096-60
71 x=20
72 for i=1to5: x=x+144
73 y=498:sz=1:gosub 329
74 y=368:gosub 334
75 y=248:gosub 334
76 y=128:sz=3:gosub 339
77 next i
78 cp=1736
79 out112,12:out113,int(cp/256):out112,13:out113,cp and 255
80 gosub 304
81 gosub 306
82 setrate1:setdelay1
83 sxp=472
84 syp=628
85 ofset=0
86 setink 1
87 move_count=1
88 ms=14
89 dir=1
90 i=1
91 rp=ROCKET_INIT_POS
92 isr=0
93 rio=0
94 mc=mc+1
95 if (mc<ms) then goto 105
96 mc=1
97 if dir=2 then if(cp=1729)or(cp=1601)or(cp=1473)or(cp=1345)or(cp=1217) then gosub 148
98 SOUNDPITCH110,VOLUME1,DURATION2
99 setink0:plot sxp+ofset+32, syp:print#0," "
100 poke rp,0
101 if dir=1 then rp=rp-1:sxp=sxp-16:cp=cp-1:i=i+1:if i=16 then i=1:dir=2:goto 104
102 if dir=2 then rp=rp+1:sxp=sxp+16:cp=cp+1:i=i+1:if i=16 then i=1:dir=3
103 if dir=3 then rp=rp-128:rio=rio-512:syp=syp+32:cp=cp-128:dir=1:ms=ms-2:if cp<400 then goto 136
104 out112,12:out113,int(cp/256):out112,13:out113,cp and 255
105 setink0:plot sxp+ofset, syp:setink1:print#0," \tc0 "
106 if (isr=1) then goto 113:else goto 120
107 K$=INKEY$&"."
108 IF ORD(K$)=4 then if ofset<452 then ofset=ofset+16
109 IF ORD(K$)=19 then if ofset>-188 then ofset=ofset-16
110 IF ORD(K$)<>32 then goto 94
111 if isr=0 then roa=576:for ex=14to0step-2:soundpitch3000+ex*50,volume ex:next ex:isr=1:rp=ROCKET_INIT_POS+sxp/16+ofset/16+rio
112 goto 94
113 if rp<49216 then goto 115
114 if peek(rp-64)<>0 then goto 126
115 poke rp,0:rp=rp-256-roa: if rp<49152 then rp=rp+16384
116 if roa>0 then roa=roa-64
117 if (rp>ROCKET_INIT_POS+rio) and (rp<58000+rio) then isr=0: goto 107
118 poke rp,96
119 goto 107
120 if rp<49216 then goto 122
121 if peek(rp-0) <> 0 then goto 107
122 poke 49152,0:rp=rp-0: if rp<49152 then rp=rp+0
123 if (rp>ROCKET_INIT_POS+rio) and (rp<57000+rio) then isrd=0: goto 107
124 poke 49152,0
125 goto 107
126 oset=rp-49152:yk=int(oset/64):xk=oset-(yk*64):yk=980-yk*4:xk=xk*16-32
127 if yk>959 then yk=980-yk
128 setink2:plot xk,yk:print#0,"\t7f\t7f\t7f"
129 setink2:plot xk,yk+40:print#0,"\t7f\t7f\t7f"
130 for ex=15to0step -0.7:soundpitch rnd(3000),volume ex:next ex
131 setink0:plot xk,yk:print#0,"\t7f\t7f\t7f"
132 setink0:plot xk,yk+40:print#0,"\t7f\t7f\t7f"
133 isr=0
134 if rp>62006 then score=score+10:else if rp>58038 then score=score+20:else score=score+30
135 goto 107
136 setrate100:setdelay100
137 if score>highscore then highscore=score
138 setborder4
139 forj=15to0step-2 :fori=2300to3900step50:soundpitchi,volumej:nexti,j
140 setpalette4,4,4,4
141 for ex=15to0step -0.1:soundpitch rnd(3000),volume ex:next ex
142 gosub 212
143 gameover=1
144 i$=inkey$
145 setrate3:setdelay30
146 gosub 199
147 goto 65
148 isr=0
149 alert_freq=2300
150 alien_pos=28
151 poke rp,0
152 printAT1,alien_pos,"\tc1\tc2\tc3 ";
153 alien_pos=alien_pos-1:if alien_pos=1 then printAT1,alien_pos,"    ";:return
154 soundpitch alert_freq:alert_freq=alert_freq+400:if alert_freq=3900then alert_freq=2300
155 setink0:plot sxp+ofset, syp:setink1:print#0," \tc0 "
156 if (isr=1) then goto 165:else goto 171
157 K$=INKEY$&"."
158 IF ORD(K$)=4 then if ofset<452 then ofset=ofset+16
159 IF ORD(K$)=19 then if ofset>-188 then ofset=ofset-16
160 IF ORD(K$)=32 then goto 162
161 goto 152
162 roa=512
163 if isr=0 then for ex=14to0step-2:soundpitch3000+ex*50,volume ex:next ex:isr=1:rp=ROCKET_INIT_POS+sxp/16+ofset/16+rio
164 goto 152
165 if rp<49216 then goto 167
166 if peek(rp-64)<>0 then goto 177
167 poke rp,0:rp=rp-256-roa: if rp<49152 then isr=0: goto 157
168 if roa>0 then roa=roa-64
169 poke rp,96
170 goto 157
171 if rp<49216 then goto 172
172 if peek(rp-0)<>0 then goto 173
173 poke 49152,0:rp=rp-0+0: if rp<49152 then rp=rp+0: goto 157
174 if roa>0 then roa=roa-0
175 poke 49152,0
176 goto 157
177 oset=rp-49152:yk=int(oset/64):xk=oset-(yk*64):yk=980-yk*4:xk=xk*16-54
178 if yk>959 then yk=958
179 setink2:plot xk,yk:print#0,"\t7f\t7f\t7f"
180 for ex=15to0step -0.7:soundpitch rnd(3000),volume ex:next ex
181 setink0:plot xk,yk:print#0,"\t7f\t7f\t7f"
182 isr=0
183 score=score+500
184 printAT1,alien_pos,"    ";
185 return
186 fora=64512to65535:pokea,0:next
187 dimh(64):fora=1to64:h(a)=rnd(16384):next
188 return
189 DIM SND(78),MUS$*240
190 restore 301
191 FOR A=1 TO 78:READ SND(A):NEXT
192 return
193 RESTORE 241
194 FOR J=1 TO 10:READ MUS$
195 FOR I=1 TO 200 STEP 2
196 SOUND PITCH SND(ORD(MUS$(I+1))-47),VOLUME14
197 SOUND PITCH SND(ORD(MUS$(I))-47),VOLUME6
198 NEXT:NEXT:SOUNDVOLUME0:return
199 K=124
200 RESTORE 251
201 FOR J=1 TO 50:READ MUS$:FOR I=K TO 238
202 SOUND PITCH SND(ORD(MUS$(I))-47),VOLUME14
203 IF INKEY$ <> "" THEN SOUNDVOLUME0: goto 205
204 NEXT I:K=1:NEXT J:GOTO 200
205 if gameover=1 then return
206 gosub 212
207 if j=50 then j=1:else j=j+1
208 FOR K=J TO 50:READ MUS$:FOR L=1 TO 238
209 SOUND PITCH SND(ORD(MUS$(L))-47),VOLUME14
210 IF INKEY$ <> "" THEN SOUNDVOLUME0: RETURN
211 NEXT L:NEXT K:J=1:RESTORE 251:GOTO 208
212 setpalette0,0,0,0:setborder0:graphics4
213 gosub 303
214 out112,12:out113,0:out112,13:out113,0
215 setpalette0,85,20,17:setink2
216 printAT1,1,"SCORE:                 HI-SCORE:"
217 setink1
218 printAT2,2,USING"%###":score
219 printAT2,27,USING"%###":highscore
220 setink2
221 printAT3,15,"PLAY"
222 printAT4,10,"BASIC INVADERS"
223 setink1
224 printAT7,6,"*SCORE ADVANCE TABLE*"
225 printAT10,14,"=30 POINTS"
226 printAT13,14,"=20 POINTS"
227 setink3
228 printAT16,14,"=10 POINTS"
229 setink1
230 printAT19,9,"\tc1\tc2\tc3  =?? POINTS"
231 setink2
232 printAT22,5,"KEYS:  LEFT-RIGHT-SPACE"
233 setink3
234 printAT24,9,"PRESS ANY KEY..";
235 x=240:y=638:sz=1:gosub 329
236 x=240:y=508:sz=1:gosub 334
237 x=240:y=388:sz=3:gosub 339
238 gosub 304
239 gosub 306
240 return
241 DATA "552525\\P\\PWPWPSPSP\\P\\PWPWPSPSP\\P\\PWPWPSPSP\\P\\PWPWPSPSP\\K\\KWKWKSKSK\\K\\K\\K\\KWKWKSKSK\\K\\KWGWGSGSG\\G\\GWGWGSKSK\\K\\KWKWKSKSK\\P\\PWPWPSPSP\\P\\PYLYMUMUNPNPNYNYNUNUNPNPNYNYNUNUNPMPMYMYMUMUMPMPMWIWIPIPIMIMIWIWIPI"
242 DATA "PIMIMIWIWIPIPIMYMYWYWYPYPYMYMYUZUZPZPZMZMZUZUZPYPYMYMYUYUYPYPYWVWVSWSWPWPWWWWWSWSWPWPWWWWWSWSWPSPSWSWSSSSSPSPSWRWRSRSRPRPRWRWRWPWPSPSPPPPPWPWPSKSKPKPKWKWKSKSKP\\P\\W\\W\\S\\S\\P\\P\\WZWZSZSZPZPZWZWZWWWWPXPYMY"
243 DATA "MYWYWYPYPYMYMYWYWYPYPYUZUZPZPZMZMZUZUZPZPZMZMZUZUZPZPZS\\S\\S\\M\\M\\M\\I\\I\\I\\S\\S\\S\\M\\M\\M\\M\\UUUUPUPUMUMUUUUUPUPUMUMUUUUUPUPUSSSSSSPSPSPSLSLSLRSRSRSRPRPRPRLRLPLPSPSPSPPPPPPPLLLLLLSLSLSLPLPLZLZLZLSLSLSLPLPLPX"
244 DATA "ZXZXZXSXSXSXSXX\\X\\S\\S\\P\\P\\X\\X\\SXSXPXPXXXXXSXSXWZWZSZSZNZNZWZWZSXSXNXNXWXWXSXSXNWNWWWWWSWSWNWNWUSUSUSNSNSNSKSKSKSUSUSUSNSNSNSKSKSKSUSUSUSNSNSNSSUSUNUNUKUKUSUSUNWNWKWKWSWSWNWNWUUUUUURURURUNUNUNRURURURRR"
245 DATA "RRRRNRNNNNUNUNUNRNRNRNNUNUNUUUUUUURURURZNZNZNZUZUZUZUZ\\^\\^\\^U^U^U^R^R^R_\\_\\_\\_U_U_U_R_RaRa\\a\\a\\aUaUaUa[b[bWbWcRcRc[c[cWcWcRcRc[^[^W^W^R^R^[^[^W^W^R^R^[\\[\\W\\W\\R\\R\\[\\[\\W[W[R[R[[[[[W[W[R[R[[[[[W[W[R[R[[["
246 DATA "[[W[W[R[R[[[[[W[W[R[R[[[[[W[W[\\P\\PWPWPSPSP\\P\\PWPWPSPSP\\P\\PWPWPSPSP\\P\\PWPWPSPSP\\K\\KWKWKSKSK\\K\\K\\K\\KWKWKSKSK\\K\\KWGWGSGSG\\G\\GWGWGSKSK\\K\\KWKWKSKSK\\P\\PWPWPSPSP\\P\\PYLYMUMUNPNPNYNYNUNUNPNPNYNYNUNUNPMPMYMYMUM"
247 DATA "UMPMPMWIWIPIPIMIMIWIWIPIPIMIMIWIWIPIPIMYMYWYWYPYPYMYMYUZUZPZPZMZMZUZUZPYPYMYMYUYUYPYPYWVWVSWSWPWPWWWWWSWSWPWPWWWWWSWSWPSPSWSWSSSSSPSPSWRWRSRSRPRPRWRWRWPWPSPSPPPPPWPWPSKSKPKPKWKWKSKSKP\\P\\W\\W\\S\\S\\P\\P\\WZ"
248 DATA "WZSZSZPZPZWZWZWWWWPXPYMYMYWYWYPYPYMYMYWYWYPYPYUZUZPZPZMZMZUZUZPZPZMZMZUZUZPZPZS\\S\\S\\M\\M\\M\\I\\I\\I\\S\\S\\S\\M\\M\\M\\M\\UUUUPUPUMUMUUUUUPUPUMUMUUUUUPUPUSSSSSSPSPSPSLSLSLRSRSRSRPRPRPRLRLPLPSPSPSPPPPPPPLLLLLLSLSL"
249 DATA "SLPLPLZLZLZLSLSLSLPLPLPXZXZXZXSXSXSXSXX\\X\\S\\S\\P\\P\\X\\X\\SXSXPXPXXXXXSXSXWZWZSZSZNZNZWZWZSXSXNXNXWXWXSXSXNWNWWWWWSWSWNWNWUSUSUSNSNSNSKSKSKSUSUSUSNSNSNSKSKSKSUSUSUSNSNSNSSUSUNUNUKUKUSUSUNWNWKWKWSWSWNWNWUU"
250 DATA "UUUURURURUNUNUNRURURURRRRRRRNRNNNNUNUNUNRNRNRNNUNUNUUUUUUURURURZNZNZNZUZUZUZUZ\\^\\^\\^U^U^U^R^R^R_\\_\\_\\_U_U_U_R_RaRa\\a\\a\\aUaUaUa[b[bWbWcRcRc[c[cWcWcRcRc[^[^W^W^R^R^[^[^W^W^R^R^[\\[\\W\\W\\R\\R\\[\\[\\W[W[R[R[[["
251 DATA "WhWhWhWhWh\\P\\h\\P\\h\\P\\h_D_\\_D_\\_D_\\\\\\\\\\\\\\\\\\\\\\\\\\_P_h_P_h_P_hcDc\\_\\_\\_\\_\\_\\_\\cPchcPchcPchhhhhhhhhhhhhcPchcPchcPchR3RKR3RKR3RKRKRKRKRKRKRKK?KWK?KWK?KWR3RKR3RKR3RKRKRKRKRKRKRKK?KWK?KWK?KWRWRWRWRWRWRWK?KWK?KWK?KWS?SWS?SWS?SWSWSWSWSWSWSW"
252 DATA "KKKcKKKcKKKcS?SWS?SWS?SWSWSWSWSWSWSWKKKcKKKcKKKcScScScScScScKKKcKKKcKKKcP3PKP3PKP3PKPKPKPKPKPKPKK?KWK?KWK?KWP3PKP3PKP3PKPKPKPKPKPKPKK?KWK?KWK?KWPWPWPWPWPWPWK?KWK?KWK?KWR?RWR?RWR?RWRWRWRWRWRWRWKKKcKKKcKKKcR?RWR?RWR?RWRWRWRWRWRWRWKKKcKKKcKK"
253 DATA "KcRcRcRcRcRcRcKKKcKKKcKKKcR3RKR3RKR3RKRKRKRKRKRKRKK?KWK?KWK?KWR3RKR3RKR3RKRKRKRKRKRKRKK?KWK?KWK?KWRWRWRWRWRWRWK?KWK?KWK?KWS?SWS?SWS?SWSWSWSWSWSWSWKKKcKKKcKKKcS?SWS?SWS?SWSWSWSWSWSWSWKKKcKKKcKKKcScScScScScScKKKcKKKcKKKcV3VKV3VKV3VKVKVKVKVK"
254 DATA "VKVKK?KWK?KWK?KWV3VKV3VKV3VKVKVKVKVKVKVKK?KWK?KWK?KWVWVWVWVWVWVWK?KWK?KWK?KWR?RWR?RWR?RWWWWWWWWWWWWW^K^c^K^c^K^c^?^W^?^W^?^W\\W\\W\\W\\W\\W\\W\\K\\c\\K\\c\\K\\cZcZcZcZcZcZcZKZcZKZcZKZcaFa^aFa^aFa^a^a^a^a^a^a^`R`j`R`j`R`j^F^^^F^^^F^^\\^\\^\\^\\^\\^\\^\\R\\j\\R"
255 DATA "\\j\\R\\jZjZjZjZjZjZjYRYjYRYjYRYj`F`^`F`^`F`^`^`^`^`^`^`^^R^j^R^j^R^jYFY^YFY^YFY^U^U^U^U^U^U^URUjURUjURUjYjYjYjYjYjYj^R^j^R^j^R^jPDP\\PDP\\PDP\\S\\S\\S\\S\\S\\S\\WPWhWPWhWPWhSDS\\SDS\\SDS\\W\\W\\W\\W\\W\\W\\\\P\\h\\P\\h\\P\\hWhWhWhWhWhWh\\P\\h\\P\\h\\P\\h_D_\\_D_\\_D_\\\\\\\\\\"
256 DATA "\\\\\\\\\\\\\\\\_P_h_P_h_P_hcDc\\_\\_\\_\\_\\_\\_\\cPchcPchcPchhhhhhhhhhhhhcPchcPchcPchaFa^aFa^aFa^a^a^a^a^a^a^`R`j`R`j`R`j^F^^^F^^^F^^\\^\\^\\^\\^\\^\\^\\R\\j\\R\\j\\R\\jZjZjZjZjZjZjYRYjYRYjYRYj`F`^`F`^`F`^`^`^`^`^`^`^^R^j^R^j^R^jYFY^YFY^YFY^U^U^U^U^U^U^UR"
257 DATA "UjURUjURUjYjYjYjYjYjYj^R^j^R^j^R^jPDP\\PDP\\PDP\\S\\S\\S\\S\\S\\S\\WPWhWPWhWPWhSDS\\SDS\\SDS\\W\\W\\W\\W\\W\\W\\\\P\\h\\P\\h\\P\\hWhWhWhWhWhWh\\P\\h\\P\\h\\P\\h_D_\\_D_\\_D_\\\\\\\\\\\\\\\\\\\\\\\\\\_P_h_P_h_P_hcDc\\_\\_\\_\\_\\_\\_\\cPchcPchcPchhhhhhhhhhhhhcPchcPchcPch_K_K_K_K_K_K"
258 DATA "^S^S^S^S^S^SZRZRZRZRZRZRWNWNWNWNWNWNUKUKUKUKUKUK^I^I^I^I^I^IZRZRZRZRZRZRWNWNWNWNWNWN_K_K_K_K_K_K^S^S^S^S^S^SZRZRZRZRZRZRWNWNWNWNWNWNUKUKUKUKUKUK^I^I^I^I^I^IZRZRZRZRZRZRWNWNWNWNWNWN_K_K_K_K_K_K^S^S^S^S^S^SZRZRZRZRZRZRWNWNWNWNWNWNUKUKUKUKUK"
259 DATA "UK^I^I^I^I^I^IZRZRZRZRZRZRWNWNWNWNWNWN_K_K_K_K_K_K^S^S^S^S^S^SZRZRZRZRZRZRWNWNWNWNWNWNUKUKUKUKUKUK^I^I^I^I^I^IZRZRZRZRZRZRWNWNWNWNWNWNOTOTOTOTOTOTKTKTKTKTKTKTHTHTHTHTHTHTCTCTCTCTCTCTMVMVMVMVMVMVOVOVOVOVOVOVKWKWKWKWKWKWHWHWHWHWHWHWOWOWOWOW"
260 DATA "OWOWKWKWKWKWKWKWHWHWHWHWHWHWCWCWCWCWCWCWMYMYMYMYMYMYOYOYOYOYOYOYK[K[K[K[K[K[H[H[H[H[H[H[R^R^R^R^R^R^N^N^N^N^N^N^K^K^K^K^K^K^F^F^F^F^F^F^PaPaPaPaPaPaRaRaRaRaRaRaN`N`N`N`N`N`K`K`K`K`K`K`R^R^R^R^R^R^N^N^N^N^N^N^K\\K\\K\\K\\K\\K\\F\\F\\F\\F\\F\\F\\PZPZPZ"
261 DATA "PZPZPZRZRZRZRZRZRZNYNYNYNYNYNYKYKYKYKYKYKYMYMYMYMYMYMYIYIYIYIYIYIYFYFYFYFYFYFYAYAYAYAYAYAYK\\K\\K\\K\\K\\K\\M\\M\\M\\M\\M\\M\\I[I[I[I[I[I[F[F[F[F[F[F[MYMYMYMYMYMYIYIYIYIYIYIYFWFWFWFWFWFWAWAWAWAWAWAWKUKUKUKUKUKUMUMUMUMUMUMUITITITITITITFTFTFTFTFTFTTMTM"
262 DATA "TMTMTMTMPMPMPMPMPMPMMMMMMMMMMMMMHMHMHMHMHMHMROROROROROROTOTOTOTOTOTOPPPPPPPPPPPPMPMPMPMPMPMPTPTPTPTPTPTPPPPPPPPPPPPPMPMPMPMPMPMPHPHPHPHPHPHPRRRRRRRRRRRRTRTRTRTRTRTRPTPTPTPTPTPTMTMTMTMTMTMTOTOTOTOTOTOTKTKTKTKTKTKTHTHTHTHTHTHTCTCTCTCTCTCTMV"
263 DATA "MVMVMVMVMVOVOVOVOVOVOVKWKWKWKWKWKWHWHWHWHWHWHWOWOWOWOWOWOWKWKWKWKWKWKWHWHWHWHWHWHWCWCWCWCWCWCWMYMYMYMYMYMYOYOYOYOYOYOYK[K[K[K[K[K[H[H[H[H[H[H[R^R^R^R^R^R^N^N^N^N^N^N^K^K^K^K^K^K^F^F^F^F^F^F^PaPaPaPaPaPaRaRaRaRaRaRaN`N`N`N`N`N`K`K`K`K`K`K`"
264 DATA "R^R^R^R^R^R^N^N^N^N^N^N^K\\K\\K\\K\\K\\K\\F\\F\\F\\F\\F\\F\\PZPZPZPZPZPZRZRZRZRZRZRZNYNYNYNYNYNYKYKYKYKYKYKYMYMYMYMYMYMYIYIYIYIYIYIYFYFYFYFYFYFYAYAYAYAYAYAYK\\K\\K\\K\\K\\K\\M\\M\\M\\M\\M\\M\\I[I[I[I[I[I[F[F[F[F[F[F[MYMYMYMYMYMYIYIYIYIYIYIYFWFWFWFWFWFWAWAWAWAWAW"
265 DATA "AWKUKUKUKUKUKUMUMUMUMUMUMUITITITITITITFTFTFTFTFTFTTMTMTMTMTMTMPMPMPMPMPMPMMMMMMMMMMMMMHMHMHMHMHMHMROROROROROROTOTOTOTOTOTOPPPPPPPPPPPPMPMPMPMPMPMPTPTPTPTPTPTPPPPPPPPPPPPPMPMPMPMPMPMPHPHPHPHPHPHPRRRRRRRRRRRRTRTRTRTRTRTRPTPTPTPTPTPTMTMTMTMT"
266 DATA "_5_5_5_5_5_5^5^5^5^5^5^5Z5Z5Z5Z5Z5Z5W5W5W5W5W5W5U5U5U5U5U5U5^5^5^5^5^5^5Z5Z5Z5Z5Z5Z5W5W5W5W5W5W5_5_5_5_5_5_5^5^5^5^5^5^5Z5Z5Z5Z5Z5Z5W5W5W5W5W5W5U5U5U5U5U5U5^5^5^5^5^5^5Z5Z5Z5Z5Z5Z5W5W5W5W5W5W5_5_5_5_5_5_5^5^5^5^5^5^5Z5Z5Z5Z5Z5Z5W5W5W5W5W5"
267 DATA "W5U5U5U5U5U5U5^5^5^5^5^5^5Z5Z5Z5Z5Z5Z5W5W5W5W5W5W5_5_5_5_5_5_5^5^5^5^5^5^5Z5Z5Z5Z5Z5Z5W5W5W5W5W5W5U5U5U5U5U5U5^5^5^5^5^5^5Z5Z5Z5Z5Z5Z5W5W5W5W5W5W5_@_@_@_@_@_@^@^@^@^@^@^@ZDZDZDZDZDZDWDWDWDWDWDWDUGUGUGUGUGUG^G^G^G^G^G^GZDZDZDZDZDZDWDWDWDWD"
268 DATA "WDWD_G_G_G_G_G_G^G^G^G^G^G^GZLZLZLZLZLZLWLWLWLWLWLWLUGUGUGUGUGUG^G^G^G^G^G^GZLZLZLZLZLZLWLWLWLWLWLWL_P_P_P_P_P_P^P^P^P^P^P^PZLZLZLZLZLZLWLWLWLWLWLWLUPUPUPUPUPUP^P^P^P^P^P^PZSZSZSZSZSZSWSWSWSWSWSWS_P_P_P_P_P_P^P^P^P^P^P^PZSZSZSZSZSZSWSWSWS"
269 DATA "WSWSWSUXUXUXUXUXUX^X^X^X^X^X^XZSZSZSZSZSZSWSWSWSWSWSWS_?_?_?_?_?_?^?^?^?^?^?^?ZCZCZCZCZCZCWCWCWCWCWCWCUFUFUFUFUFUF^F^F^F^F^F^FZCZCZCZCZCZCWCWCWCWCWCWC_F_F_F_F_F_F^F^F^F^F^F^FZKZKZKZKZKZKWKWKWKWKWKWKUFUFUFUFUFUF^F^F^F^F^F^FZKZKZKZKZKZKWKWK"
270 DATA "WKWKWKWK_O_O_O_O_O_O^O^O^O^O^O^OZKZKZKZKZKZKWKWKWKWKWKWKUOUOUOUOUOUO^O^O^O^O^O^OZRZRZRZRZRZRWRWRWRWRWRWR_O_O_O_O_O_O^O^O^O^O^O^OZRZRZRZRZRZRWRWRWRWRWRWRUWUWUWUWUWUW^W^W^W^W^W^WZRZRZRZRZRZRWRWRWRWRWRWR_@_@_@_@_@_@^@^@^@^@^@^@ZDZDZDZDZDZDWD"
271 DATA "WDWDWDWDWDUGUGUGUGUGUG^G^G^G^G^G^GZDZDZDZDZDZDWDWDWDWDWDWD_G_G_G_G_G_G^G^G^G^G^G^GZLZLZLZLZLZLWLWLWLWLWLWLUGUGUGUGUGUG^G^G^G^G^G^GZLZLZLZLZLZLWLWLWLWLWLWL_P_P_P_P_P_P^P^P^P^P^P^PZLZLZLZLZLZLWLWLWLWLWLWLUPUPUPUPUPUP^P^P^P^P^P^PZSZSZSZSZSZS"
272 DATA "WSWSWSWSWSWS_P_P_P_P_P_P^P^P^P^P^P^PZSZSZSZSZSZSWSWSWSWSWSWSUXUXUXUXUXUX^X^X^X^X^X^XZSZSZSZSZSZSWSWSWSWSWSWS_B_B_B_B_B_B^B^B^B^B^B^BZFZFZFZFZFZFWFWFWFWFWFWFUIUIUIUIUIUI^I^I^I^I^I^IZFZFZFZFZFZFWFWFWFWFWFWF_I_I_I_I_I_I^I^I^I^I^I^IZNZNZNZNZN"
273 DATA "ZNWNWNWNWNWNWNUIUIUIUIUIUI^I^I^I^I^I^IZNZNZNZNZNZNWNWNWNWNWNWN_R_R_R_R_R_R^R^R^R^R^R^RZNZNZNZNZNZNWNWNWNWNWNWNURURURURURUR^R^R^R^R^R^RZUZUZUZUZUZUWUWUWUWUWUWU_R_R_R_R_R_R^R^R^R^R^R^RZUZUZUZUZUZUWUWUWUWUWUWUUZUZUZUZUZUZ^Z^Z^Z^Z^Z^ZZUZUZUZU"
274 DATA "ZUZUWUWUWUWUWUWU_@_@_@_@_@_@^@^@^@^@^@^@ZDZDZDZDZDZDWDWDWDWDWDWDUGUGUGUGUGUG^G^G^G^G^G^GZDZDZDZDZDZDWDWDWDWDWDWD_G_G_G_G_G_G^G^G^G^G^G^GZLZLZLZLZLZLWLWLWLWLWLWLUGUGUGUGUGUG^G^G^G^G^G^GZLZLZLZLZLZLWLWLWLWLWLWL_P_P_P_P_P_P^P^P^P^P^P^PZLZLZL"
275 DATA "ZLZLZLWLWLWLWLWLWLUPUPUPUPUPUP^P^P^P^P^P^PZSZSZSZSZSZSWSWSWSWSWSWS_P_P_P_P_P_P^P^P^P^P^P^PZSZSZSZSZSZSWSWSWSWSWSWSUXUXUXUXUXUX^X^X^X^X^X^XZSZSZSZSZSZSWSWSWSWSWSWS_?_?_?_?_?_?^?^?^?^?^?^?ZCZCZCZCZCZCWCWCWCWCWCWCUFUFUFUFUFUF^F^F^F^F^F^FZCZC"
276 DATA "ZCZCZCZCWCWCWCWCWCWC_F_F_F_F_F_F^F^F^F^F^F^FZKZKZKZKZKZKWKWKWKWKWKWKUFUFUFUFUFUF^F^F^F^F^F^FZKZKZKZKZKZKWKWKWKWKWKWK_O_O_O_O_O_O^O^O^O^O^O^OZKZKZKZKZKZKWKWKWKWKWKWKUOUOUOUOUOUO^O^O^O^O^O^OZRZRZRZRZRZRWRWRWRWRWRWR_O_O_O_O_O_O^O^O^O^O^O^OZR"
277 DATA "ZRZRZRZRZRWRWRWRWRWRWRUWUWUWUWUWUW^W^W^W^W^W^WZRZRZRZRZRZRWRWRWRWRWRWR_@_@_@_@_@_@^@^@^@^@^@^@ZDZDZDZDZDZDWDWDWDWDWDWDUGUGUGUGUGUG^G^G^G^G^G^GZDZDZDZDZDZDWDWDWDWDWDWD_G_G_G_G_G_G^G^G^G^G^G^GZLZLZLZLZLZLWLWLWLWLWLWLUGUGUGUGUGUG^G^G^G^G^G^G"
278 DATA "ZLZLZLZLZLZLWLWLWLWLWLWL_P_P_P_P_P_P^P^P^P^P^P^PZLZLZLZLZLZLWLWLWLWLWLWLUPUPUPUPUPUP^P^P^P^P^P^PZSZSZSZSZSZSWSWSWSWSWSWS_P_P_P_P_P_P^P^P^P^P^P^PZSZSZSZSZSZSWSWSWSWSWSWSUXUXUXUXUXUX^X^X^X^X^X^XZSZSZSZSZSZSWSWSWSWSWSWS_B_B_B_B_B_B^B^B^B^B^B"
279 DATA "^BZFZFZFZFZFZFWFWFWFWFWFWFUIUIUIUIUIUI^I^I^I^I^I^IZFZFZFZFZFZFWFWFWFWFWFWF_I_I_I_I_I_I^I^I^I^I^I^IZNZNZNZNZNZNWNWNWNWNWNWNUIUIUIUIUIUI^I^I^I^I^I^IZNZNZNZNZNZNWNWNWNWNWNWN_R_R_R_R_R_R^R^R^R^R^R^RZNZNZNZNZNZNWNWNWNWNWNWNURURURURURUR^R^R^R^R"
280 DATA "^R^RZUZUZUZUZUZUWUWUWUWUWUWU_R_R_R_R_R_R^R^R^R^R^R^RZUZUZUZUZUZUWUWUWUWUWUWUUZUZUZUZUZUZ^Z^Z^Z^Z^Z^ZZUZUZUZUZUZUWUWUWUWUWUWU_L_L_L_L_L_L^L^L^L^L^L^LZLZLZLZLZLZLWLWLWLWLWLWLULULULULULUL^L^L^L^L^L^LZLZLZLZLZLZLWLWLWLWLWLWL_S_S_S_S_S_S^S^S^S"
281 DATA "^S^S^SZRZRZRZRZRZRWRWRWRWRWRWRUUUUUUUUUUUU^U^U^U^U^U^UZNZNZNZNZNZNWNWNWNWNWNWN_N_N_N_N_N_N^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWNWNWNUNUNUNUNUNUN^N^N^N^N^N^NZUZUZUZUZUZUWSWSWSWSWSWS_R_R_R_R_R_R^U^U^U^U^U^UZSZSZSZSZSZSWRWRWRWRWRWRUUUUUUUUUUUU^S^S"
282 DATA "^S^S^S^SZRZRZRZRZRZRWUWUWUWUWUWU_K_K_K_K_K_K^K^K^K^K^K^KZKZKZKZKZKZKWKWKWKWKWKWKUKUKUKUKUKUK^K^K^K^K^K^KZKZKZKZKZKZKWKWKWKWKWKWK_K_K_K_K_K_K^N^N^N^N^N^NZPZPZPZPZPZPWRWRWRWRWRWRURURURURURUR^W^W^W^W^W^WZWZWZWZWZWZWWWWWWWWWWWWW_W_W_W_W_W_W^W"
283 DATA "^W^W^W^W^WZWZWZWZWZWZWWWWWWWWWWWWWUWUWUWUWUWUW^W^W^W^W^W^WZWZWZWZWZWZWWWWWWWWWWWWW_W_W_W_W_W_W^W^W^W^W^W^WZWZWZWZWZWZWWWWWWWWWWWWWUWUWUWUWUWUW^W^W^W^W^W^WZWZWZWZWZWZWWWWWWWWWWWWW_L_L_L_L_L_L^L^L^L^L^L^LZLZLZLZLZLZLWLWLWLWLWLWLULULULULULUL"
284 DATA "^L^L^L^L^L^LZLZLZLZLZLZLWLWLWLWLWLWL_S_S_S_S_S_S^S^S^S^S^S^SZRZRZRZRZRZRWRWRWRWRWRWRUUUUUUUUUUUU^U^U^U^U^U^UZNZNZNZNZNZNWNWNWNWNWNWN_N_N_N_N_N_N^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWNWNWNUNUNUNUNUNUN^N^N^N^N^N^NZUZUZUZUZUZUWSWSWSWSWSWS_R_R_R_R_R"
285 DATA "_R^U^U^U^U^U^UZSZSZSZSZSZSWRWRWRWRWRWRUUUUUUUUUUUU^S^S^S^S^S^SZRZRZRZRZRZRWUWUWUWUWUWU_N_N_N_N_N_N^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWNWNWNUNUNUNUNUNUN^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWNWNWN_N_N_N_N_N_N^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWNWNWNUNUNUNUN"
286 DATA "UNUN^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWNWNWN_S_S_S_S_S_S^R^R^R^R^R^RZNZNZNZNZNZNWRWRWRWRWRWRUNUNUNUNUNUN^K^K^K^K^K^KZNZNZNZNZNZNWKWKWKWKWKWK_G_G_G_G_G_G^K^K^K^K^K^KZGZGZGZGZGZGWFWFWFWFWFWFUGUGUGUGUGUG^F^F^F^F^F^FZ?Z?Z?Z?Z?Z?WFWFWFWFWFWF_L_L_L"
287 DATA "_L_L_L^L^L^L^L^L^LZLZLZLZLZLZLWLWLWLWLWLWLULULULULULUL^L^L^L^L^L^LZLZLZLZLZLZLWLWLWLWLWLWL_S_S_S_S_S_S^S^S^S^S^S^SZRZRZRZRZRZRWRWRWRWRWRWRUUUUUUUUUUUU^U^U^U^U^U^UZNZNZNZNZNZNWNWNWNWNWNWN_N_N_N_N_N_N^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWNWNWNUNUN"
288 DATA "UNUNUNUN^N^N^N^N^N^NZUZUZUZUZUZUWSWSWSWSWSWS_R_R_R_R_R_R^U^U^U^U^U^UZSZSZSZSZSZSWRWRWRWRWRWRUUUUUUUUUUUU^S^S^S^S^S^SZRZRZRZRZRZRWUWUWUWUWUWU_K_K_K_K_K_K^K^K^K^K^K^KZKZKZKZKZKZKWKWKWKWKWKWKUKUKUKUKUKUK^K^K^K^K^K^KZKZKZKZKZKZKWKWKWKWKWKWK_K"
289 DATA "_K_K_K_K_K^N^N^N^N^N^NZPZPZPZPZPZPWRWRWRWRWRWRURURURURURUR^W^W^W^W^W^WZWZWZWZWZWZWWWWWWWWWWWWW_W_W_W_W_W_W^W^W^W^W^W^WZWZWZWZWZWZWWWWWWWWWWWWWUWUWUWUWUWUW^W^W^W^W^W^WZWZWZWZWZWZWWWWWWWWWWWWW_W_W_W_W_W_W^W^W^W^W^W^WZWZWZWZWZWZWWWWWWWWWWWWW"
290 DATA "UWUWUWUWUWUW^W^W^W^W^W^WZWZWZWZWZWZWWWWWWWWWWWWW_L_L_L_L_L_L^L^L^L^L^L^LZLZLZLZLZLZLWLWLWLWLWLWLULULULULULUL^L^L^L^L^L^LZLZLZLZLZLZLWLWLWLWLWLWL_S_S_S_S_S_S^S^S^S^S^S^SZRZRZRZRZRZRWRWRWRWRWRWRUUUUUUUUUUUU^U^U^U^U^U^UZNZNZNZNZNZNWNWNWNWNWN"
291 DATA "WN_N_N_N_N_N_N^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWNWNWNUNUNUNUNUNUN^N^N^N^N^N^NZUZUZUZUZUZUWSWSWSWSWSWS_R_R_R_R_R_R^U^U^U^U^U^UZSZSZSZSZSZSWRWRWRWRWRWRUUUUUUUUUUUU^S^S^S^S^S^SZRZRZRZRZRZRWUWUWUWUWUWU_N_N_N_N_N_N^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWN"
292 DATA "WNWNUNUNUNUNUNUN^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWNWNWN_N_N_N_N_N_N^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWNWNWNUNUNUNUNUNUN^N^N^N^N^N^NZNZNZNZNZNZNWNWNWNWNWNWN_S_S_S_S_S_S^R^R^R^R^R^RZNZNZNZNZNZNWRWRWRWRWRWRUNUNUNUNUNUN^K^K^K^K^K^KZNZNZNZNZNZNWKWKWK"
293 DATA "WKWKWK_G_G_G_G_G_G^K^K^K^K^K^KZGZGZGZGZGZGWFWFWFWFWFWFUGUGUGUGUGUG^F^F^F^F^F^FZ?Z?Z?Z?Z?Z?WFWFWFWFWFWFIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMIMMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMU"
294 DATA "MUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUMUFYFYFYFYFYFYIYIYIYIYIYIYMYMYMYMYMYMYIYIYIYIYIYIYMYMYMYMYMYMYRYRYRYRYRYRYMYMYMYMYMYMYRYRYRYRYRYRYUaUaUaUaUaUaRaRaRaRaRaRaUaUaUaUaUaUaYaYaYaYaYaYaUaUaUaUaUaUaYaYaYaYaYaYa^a^a^a^a^a^aYa"
295 DATA "YaYaYaYaYaR3RKR3RKR3RKRKRKRKRKRKRKK?KWK?KWK?KWR3RKR3RKR3RKRKRKRKRKRKRKK?KWK?KWK?KWRWRWRWRWRWRWK?KWK?KWK?KWS?SWS?SWS?SWSWSWSWSWSWSWKKKcKKKcKKKcS?SWS?SWS?SWSWSWSWSWSWSWKKKcKKKcKKKcScScScScScScKKKcKKKcKKKcP3PKP3PKP3PKPKPKPKPKPKPKK?KWK?KWK?KW"
296 DATA "P3PKP3PKP3PKPKPKPKPKPKPKK?KWK?KWK?KWPWPWPWPWPWPWK?KWK?KWK?KWR?RWR?RWR?RWRWRWRWRWRWRWKKKcKKKcKKKcR?RWR?RWR?RWRWRWRWRWRWRWKKKcKKKcKKKcRcRcRcRcRcRcKKKcKKKcKKKcR3RKR3RKR3RKRKRKRKRKRKRKK?KWK?KWK?KWR3RKR3RKR3RKRKRKRKRKRKRKK?KWK?KWK?KWRWRWRWRWRW"
297 DATA "RWK?KWK?KWK?KWS?SWS?SWS?SWSWSWSWSWSWSWKKKcKKKcKKKcS?SWS?SWS?SWSWSWSWSWSWSWKKKcKKKcKKKcScScScScScScKKKcKKKcKKKcV3VKV3VKV3VKVKVKVKVKVKVKK?KWK?KWK?KWV3VKV3VKV3VKVKVKVKVKVKVKK?KWK?KWK?KWVWVWVWVWVWVWK?KWK?KWK?KWR?RWR?RWR?RWWWWWWWWWWWWW^K^c^K^c"
298 DATA "^K^c^?^W^?^W^?^W\\W\\W\\W\\W\\W\\W\\K\\c\\K\\c\\K\\cZcZcZcZcZcZcZKZcZKZcZKZcaFa^aFa^aFa^a^a^a^a^a^a^`R`j`R`j`R`j^F^^^F^^^F^^\\^\\^\\^\\^\\^\\^\\R\\j\\R\\j\\R\\jZjZjZjZjZjZjYRYjYRYjYRYj`F`^`F`^`F`^`^`^`^`^`^`^^R^j^R^j^R^jYFY^YFY^YFY^U^U^U^U^U^U^URUjURUjURUjYjYjYj"
299 DATA "YjYjYj^R^j^R^j^R^jPDP\\PDP\\PDP\\S\\S\\S\\S\\S\\S\\WPWhWPWhWPWhSDS\\SDS\\SDS\\W\\W\\W\\W\\W\\W\\\\P\\h\\P\\h\\P\\hWhWhWhWhWhWh\\P\\h\\P\\h\\P\\h_D_\\_D_\\_D_\\\\\\\\\\\\\\\\\\\\\\\\\\_P_h_P_h_P_hcDc\\_\\_\\_\\_\\_\\_\\cPchcPchcPchhhhhhhhhhhhhcPchcPchcPchaFa^aFa^aFa^a^a^a^a^a^a^`R`j"
300 DATA "`R`j`R`j^F^^^F^^^F^^\\^\\^\\^\\^\\^\\^\\R\\j\\R\\j\\R\\jZjZjZjZjZjZjYRYjYRYjYRYj`F`^`F`^`F`^`^`^`^`^`^`^^R^j^R^j^R^jYFY^YFY^YFY^U^U^U^U^U^U^URUjURUjURUjYjYjYjYjYjYj^R^j^R^j^R^jPDP\\PDP\\PDP\\S\\S\\S\\S\\S\\S\\WPWhWPWhWPWhSDS\\SDS\\SDS\\W\\W\\W\\W\\W\\W\\\\P\\h\\P\\h\\P\\hWh"
301 DATA 110,334,545,744,932,1110,1277,1436,1585,1726,1859,1984,2103,2215,2320,2420,2514,2603,2687,2766,2840,2911,2977,3040,3099,3155,3208,3258,3305,3349,3391,3431,3468,3503,3537,3568,3598,3626,3652,3677
302 DATA 3701,3723,3744,3763,3782,3800,3816,3832,3847,3861,3874,3887,3898,3909,3920,3930,3939,3948,3956,3964,3971,3978,3985,3991,3997,4003,4008,4013,4018,4022,4026,4030,4034,4037,4041,4044,4047,4095
303 out112,1:out113,0:return
304 out112,1:out113,64:return
305 out112,10:out113,35:return
306 out112,10:out113,3:return
307 x=260:y=959
308 c$=dpic40$:setmode0
309 setink0:plotx,y-0:setink1:print#0,"\t20\t20\ta0\ta1\ta2\ta3\ta4\t20\ta5\ta6\ta7\t99\ta8\ta9\t20"
310 setink0:plotx,y-40:setink1:print#0,"\t20\taa\tab\tac\tac\tac\tad\t20\tae\tac\tac\tac\tac\tac\taf"
311 c$=dpic41$:setmode0
312 setink0:plotx,y-84:setink3:print#0,"\ta0\ta1\t99\ta2\ta3\t99\ta4\ta5\ta6\t99\ta7\ta8\ta9\t99\taa"
313 setink0:plotx,y-124:setink3:print#0,"\tab\tac\tac\tac\tac\tac\tac\tad\tae\tac\taf\tb0\tb1\tac\tb2"
314 c$=dpic42$:setmode0
315 setink0:plotx,y-162:setink2:print#0,"\ta0\ta1\ta2\ta3\t99\t99\ta4\ta5\ta6\t99\t99\t99\t99\t99\ta7"
316 setink0:plotx,y-202:setink2:print#0,"\t20\t20\t20\ta8\ta9\taa\tab\t20\tac\tad\tae\t99\taf\tb0\t20"
317 return
318 x=260:y=959
319 c$=dpic0$:setmode0
320 setink0:plotx,y-0:setink1:print#0,"\t99\ta0\ta1\ta2\ta3\ta4\ta5\ta6\ta7\ta8\ta9\taa\tab\tac\tad\tae"
321 c$=dpic1$:setmode0
322 setink0:plotx,y-40:setink1:print#0,"\t99\ta0\ta1\ta2\ta3\ta4\ta5\ta6\ta7\ta8\ta9\taa\tab\tac\tad\tae"
323 c$=dpic2$:setmode0
324 setink0:plotx,y-80:setink1:print#0,"\ta0\ta1\ta2\ta3\ta4\ta5\ta6\ta7\ta8\ta9\taa\tab\tac\tad\tae\taf"
325 c$=dpic3$:setmode0
326 setink0:plotx,y-114:setink2:print#0,"\ta0\ta1\ta2\ta3\ta4\ta5\ta6\ta7\ta8\ta9\taa\tab\tac\tad\tae\taf"
327 setink3:plot420,930,paint
328 return
329 c$=dpic10$:setmode0
330 setink0:plotx,y-0:setink sz:print#0,"\ta0\ta1\ta2\ta3"
331 setink0:plotx,y-40:setink sz:print#0,"\ta4\ta5\ta6\ta7"
332 setink0:plotx,y-80:setink sz:print#0,"\ta8\ta9\taa\tab"
333 return
334 c$=dpic11$:setmode0
335 setink0:plotx,y-0:setink sz:print#0,"\ta0\ta1\ta2\ta3"
336 setink0:plotx,y-40:setink sz:print#0,"\ta4\ta5\ta6\ta7"
337 setink0:plotx,y-80:setink sz:print#0,"\ta8\ta9\taa\tab"
338 return
339 c$=dpic12$:setmode0
340 setink0:plotx,y-0:setink sz:print#0,"\ta0\ta1\ta2\ta3"
341 setink0:plotx,y-40:setink sz:print#0,"\ta4\ta5\ta6\ta7"
342 setink0:plotx,y-80:setink sz:print#0,"\ta8\ta9\ta9\taa"
343 return
var dpic0$=\xff,\xff,\xff,\xff,\xff,\x80,\x80,\x80,\xff,\xff,\xf8,\xff,\xff,\xff,\xff,\xff,\x7f,\xff,\xff,\xfe,\x00,\x00,\x80,\xc0,\xc0,\xc1,\xc1,\x81,\x0f,\x0f,\x07,\x07,\x3f,\x3f,\x3f,\xff,\xff,\xff,\xc3,\xc3,\xf8,\xf8,\xff,\xff,\xff,\xff,\xff,\xff,\xf0,\xf0,\x00,\x00,\x00,\x00,\x00,\xe0,\xe0,\xe0,\xfc,\xfc,\x00,\x07,\x1f,\x3f,\x7f,\x7f,\x7f,\x7f,\x7f,\x3f,\xff,\xff,\xff,\xff,\xff,\xe1,\xc0,\xc0,\xfe,\xff,\xe0,\xf8,\xfe,\xff,\xff,\xff,\xff,\x00,\x00,\xf0,\x03,\x03,\x03,\x03,\x03,\x83,\x83,\x03,\x03,\x03,\xfe,\xfe,\xfe,\xfe,\xfe,\xfe,\xfe,\xfe,\xfe,\xfe,\x00,\x00,\x03,\x07,\x0f,\x0f,\x1f,\x1f,\x3f,\x3f,\x1f,\xff,\xff,\xff,\xff,\xfc,\xf0,\xf0,\xe0,\xe0,\xfc,\xff,\xff,\xff,\xff,\x3f,\x0f,\x0f,\x07,\x00,\x00,\x80,\xc0,\xf0,\xf0,\xf8,\xfc,\xf8,\x00,\x00
var dpic1$=\xff,\xff,\xff,\x80,\x80,\x80,\x80,\x80,\xff,\xff,\xfe,\xff,\xff,\x7f,\x3f,\x3f,\x3f,\x7f,\xff,\xff,\x0f,\x8f,\xcf,\xcf,\xe0,\xe0,\xe0,\xe1,\xc1,\xdf,\xc3,\xff,\xff,\xff,\x3c,\x3c,\x3c,\xe3,\xe3,\xff,\xf0,\xff,\xff,\xff,\x0f,\x0f,\x0f,\xf1,\xf1,\xff,\xfc,\xfc,\xfc,\xfc,\x00,\x00,\x00,\xe0,\xe0,\xfe,\x1f,\x07,\x00,\x00,\x00,\xff,\xff,\x7f,\x7f,\x3f,\xff,\xff,\xff,\x07,\x00,\x80,\xc0,\xe0,\xff,\xff,\xfc,\xff,\xff,\xff,\xff,\x7f,\x7f,\xff,\xff,\xff,\x03,\x03,\x83,\xc3,\xc3,\xc3,\xc3,\xc3,\x83,\x03,\xfe,\xfe,\xfe,\xfe,\xfe,\xfe,\xfe,\xfe,\xfe,\xfe,\x3f,\x3f,\x3f,\x3f,\x3f,\x1f,\x1f,\x0f,\x0f,\x07,\xe0,\xe0,\xe0,\xe0,\xe0,\xf0,\xf0,\xfc,\xff,\xff,\x00,\x00,\x00,\x06,\x07,\x0f,\x0f,\x3f,\xff,\xff,\x00,\x00,\x00,\x00,\xe0,\xfc,\xf8,\xf8,\xf0,\xf0,\xff,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x9f,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x3c,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x0f,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x1e,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x1f,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\xfe,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x03,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x01,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\xc0,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00
var dpic2$=\xff,\xff,\x00,\xfc,\xfc,\xfc,\xfc,\xfc,\x00,\x00,\xff,\xff,\x00,\xfc,\xfe,\xff,\xff,\xff,\x00,\x00,\xff,\xf8,\x00,\x0f,\x0f,\x0f,\xcf,\xef,\x00,\x00,\x1f,\x1f,\x00,\xfe,\xbe,\x9f,\x9f,\x8f,\x00,\x00,\x3c,\x3c,\x00,\x03,\x03,\x07,\x07,\x8f,\x00,\x00,\x0f,\x0f,\x00,\xf1,\xe1,\xc3,\xc7,\x87,\x00,\x00,\x1e,\x1e,\x00,\xfc,\xfc,\xfe,\xdf,\x8f,\x00,\x00,\x0f,\x01,\x00,\x0f,\x0f,\x0f,\x0f,\x0f,\x00,\x00,\xff,\xff,\x00,\xff,\xff,\xc7,\xc3,\xc3,\x00,\x00,\xfc,\xe0,\x00,\x03,\xc3,\xe3,\xf3,\xf3,\x00,\x00,\x03,\x03,\x00,\xff,\xff,\xf0,\xf0,\xff,\x00,\x00,\xfe,\xfe,\x00,\xfb,\xfb,\x03,\x03,\xf3,\x00,\x00,\x00,\x00,\x00,\xff,\xff,\xf0,\xf0,\xff,\x00,\x00,\xff,\x1f,\x00,\xf0,\xfd,\xff,\xff,\xf9,\x00,\x00,\xff,\xfc,\x00,\x7f,\xff,\xf1,\xfc,\xff,\x00,\x00,\x80,\x00,\x00,\xc0,\xf0,\xf8,\x00,\xe0,\x00,\x00
var dpic3$=\xfc,\xfc,\xfc,\xfc,\xfc,\x00,\x00,\x00,\x00,\x00,\xfb,\xf9,\xf8,\xf8,\xf8,\x00,\x00,\x00,\x00,\x00,\xff,\xff,\x7f,\x3f,\x1f,\x00,\x00,\x00,\x00,\x00,\x87,\x87,\x83,\x81,\x81,\x00,\x00,\x00,\x00,\x00,\xdf,\xdf,\xfe,\xfc,\xfc,\x00,\x00,\x00,\x00,\x00,\x0f,\x1f,\x1f,\x3e,\x7e,\x00,\x00,\x00,\x00,\x00,\x8f,\xff,\xff,\x03,\x03,\x00,\x00,\x00,\x00,\x00,\x8f,\xcf,\xcf,\xef,\xff,\x00,\x00,\x00,\x00,\x00,\xc3,\xc3,\xc7,\xff,\xff,\x00,\x00,\x00,\x00,\x00,\xf3,\xf3,\xe3,\xc3,\x03,\x00,\x00,\x00,\x00,\x00,\xff,\xf0,\xf0,\xff,\xff,\x00,\x00,\x00,\x00,\x00,\xf3,\x03,\x03,\xfb,\xfb,\x00,\x00,\x00,\x00,\x00,\xff,\xf3,\xf1,\xf0,\xf0,\x00,\x00,\x00,\x00,\x00,\xc0,\xf0,\xff,\xff,\x7e,\x00,\x00,\x00,\x00,\x00,\x3f,\x00,\xe0,\xff,\xff,\x00,\x00,\x00,\x00,\x00,\xf8,\xfc,\xfc,\xf8,\xe0,\x00,\x00,\x00,\x00,\x00
var dpic10$=\x00,\x00,\x00,\x00,\x00,\x00,\x01,\x01,\x01,\x1f,\x07,\x07,\x07,\x3f,\x3f,\x3f,\xff,\xff,\xff,\xc7,\xe0,\xe0,\xe0,\xfc,\xfc,\xfc,\xff,\xff,\xff,\xe3,\x00,\x00,\x00,\x00,\x00,\x00,\x80,\x80,\x80,\xf8,\x1f,\x1f,\xff,\xff,\xff,\x00,\x00,\x00,\x01,\x01,\xc7,\xc7,\xff,\xff,\xff,\x38,\x38,\x38,\xc7,\xc7,\xe3,\xe3,\xff,\xff,\xff,\x1c,\x1c,\x1c,\xe3,\xe3,\xf8,\xf8,\xff,\xff,\xff,\x00,\x00,\x00,\x80,\x80,\x01,\x0e,\x0e,\x0e,\x00,\x00,\x00,\x00,\x00,\x00,\xc7,\x38,\x38,\x38,\x00,\x00,\x00,\x00,\x00,\x00,\xe3,\x1c,\x1c,\x1c,\x00,\x00,\x00,\x00,\x00,\x00,\x80,\x70,\x70,\x70,\x00,\x00,\x00,\x00,\x00,\x00
var dpic11$=\x03,\x03,\x03,\xe0,\xe0,\xe0,\xe0,\xe3,\xe3,\xe3,\x80,\x80,\x80,\x70,\x70,\x70,\x70,\xff,\xff,\xff,\x01,\x01,\x01,\x0e,\x0e,\x0e,\x0e,\xff,\xff,\xff,\xc0,\xc0,\xc0,\x07,\x07,\x07,\x07,\xc7,\xc7,\xc7,\xff,\xff,\xff,\xff,\xff,\x1f,\x1f,\x1f,\x03,\x03,\x83,\x83,\xff,\xff,\xff,\xff,\xff,\xff,\x80,\x80,\xc1,\xc1,\xff,\xff,\xff,\xff,\xff,\xff,\x01,\x01,\xff,\xff,\xff,\xff,\xff,\xf8,\xf8,\xf8,\xc0,\xc0,\x03,\x0c,\x0c,\x0c,\x00,\x00,\x00,\x00,\x00,\x00,\x80,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x01,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\xc0,\x30,\x30,\x30,\x00,\x00,\x00,\x00,\x00,\x00
var dpic12$=\x00,\x00,\x00,\x3f,\x3f,\x3f,\xff,\xff,\xff,\xff,\x1f,\x1f,\x1f,\xff,\xff,\xff,\xff,\xff,\xff,\x07,\xf8,\xf8,\xf8,\xff,\xff,\xff,\xff,\xff,\xff,\xe0,\x00,\x00,\x00,\xfc,\xfc,\xfc,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\x01,\x01,\x01,\x07,\x07,\x07,\x07,\xff,\xff,\xff,\xf8,\xf8,\xf8,\xe7,\xe7,\xe0,\xe0,\xff,\xff,\xff,\x1f,\x1f,\x1f,\xe7,\xe7,\xff,\xff,\xff,\xff,\xff,\x00,\x00,\x00,\xe0,\xe0,\x07,\xf8,\xf8,\xf8,\x00,\x00,\x00,\x00,\x00,\x00,\xe7,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\xe0,\x1f,\x1f,\x1f,\x00,\x00,\x00,\x00,\x00,\x00
var dpic40$=\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x01,\x03,\x0f,\x00,\x01,\x03,\x0f,\x1f,\x3f,\xff,\xff,\xff,\xff,\x7f,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xfc,\xfe,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\x00,\x00,\x80,\x80,\xc0,\xc0,\xe0,\xe0,\xe0,\xe0,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x01,\x03,\x00,\x00,\x03,\x0f,\x1f,\x3f,\x7f,\xff,\xff,\xff,\x1f,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xe0,\xf8,\xfe,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\x00,\x00,\x00,\x80,\xc0,\xf0,\xf8,\xfc,\xfe,\xfe,\x00,\x00,\x00,\x01,\x03,\x07,\x1f,\x3f,\x00,\x00,\x1f,\x3f,\xff,\xff,\xff,\xff,\xff,\xff,\x00,\x00,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\x00,\x00,\xe0,\xe0,\xe0,\xe0,\xe0,\xe0,\xe0,\xe0,\x00,\x00,\x07,\x07,\x0f,\x1f,\x1f,\x1f,\x3f,\x3f,\x00,\x00,\x00,\x80,\x80,\xc0,\xe0,\xe0,\xe0,\xf0,\x00,\x00
var dpic41$=\x00,\x00,\x01,\x03,\x0f,\x1f,\x3f,\x7f,\x7f,\xff,\x7f,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xfc,\xf8,\xf0,\xe0,\xe0,\xc0,\xe0,\xe0,\xff,\xff,\x7f,\x3f,\x3f,\x3f,\x3f,\x3f,\x3f,\x3f,\xff,\xff,\xe0,\xe0,\xe0,\xe0,\xfc,\xff,\xff,\xff,\xff,\xff,\x00,\x00,\x00,\x00,\x00,\x80,\xe0,\xf0,\xf0,\xf8,\x7f,\x7f,\x7f,\x7f,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xfe,\xfe,\xfc,\xfc,\xfc,\xfc,\xfc,\xfc,\xc7,\x01,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\xff,\xff,\xff,\xff,\x7f,\x7f,\x7f,\x7f,\x7f,\x7f,\xf0,\xf0,\xf8,\xf8,\xf8,\xf8,\xf8,\xf8,\xf8,\xf8,\xff,\xff,\xff,\xff,\xff,\x7f,\x00,\x00,\x00,\x00,\xff,\xff,\xff,\xff,\xff,\xff,\x00,\x00,\x00,\x00,\xfc,\xfc,\xfc,\xfc,\xfc,\xf8,\x00,\x00,\x00,\x00,\xff,\xff,\xff,\xff,\x7f,\x7f,\x00,\x00,\x00,\x00,\xfc,\xfc,\xfe,\xff,\xff,\xff,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x01,\x81,\xc7,\x00,\x00,\x00,\x00,\x7f,\xff,\xff,\xff,\xff,\xff,\x00,\x00,\x00,\x00,\xf8,\xf8,\xf8,\xf8,\xf8,\xf8,\x00,\x00,\x00,\x00
var dpic42$=\x7f,\x3f,\x1f,\x07,\x03,\x00,\x00,\x00,\x00,\x00,\xff,\xff,\xff,\xff,\xff,\x07,\x00,\x00,\x00,\x00,\xff,\xff,\xff,\xff,\xff,\x80,\x00,\x00,\x00,\x00,\xff,\xff,\xff,\xff,\xff,\x0f,\x0f,\x0f,\x0f,\x0f,\xff,\xff,\xff,\xff,\xfc,\xe0,\xe0,\xe0,\xe0,\xe0,\xf8,\xf0,\xe0,\xc0,\x00,\x00,\x00,\x00,\x00,\x00,\x7f,\x7f,\x3f,\x3f,\x1f,\x1f,\x1f,\x0f,\x07,\x07,\xf0,\xf0,\xf0,\xe0,\xe0,\xc0,\xc0,\x80,\x80,\x00,\x0f,\x0f,\x0f,\x0f,\x0f,\x07,\x07,\x03,\x01,\x00,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\x7f,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xfe,\xfc,\xf0,\xe0,\xe0,\xc0,\xc0,\xc0,\x80,\x00,\x00,\x00,\x00,\x03,\x01,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\x00,\xff,\xff,\xff,\x7f,\x3f,\x1f,\x07,\x03,\x00,\x00,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\x1f,\xff,\xff,\xff,\xff,\xff,\xff,\xff,\xfe,\xf8,\xc0,\xfe,\xfe,\xfc,\xf8,\xf0,\xc0,\x80,\x00,\x00,\x00
