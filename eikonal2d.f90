!**************************************************************
!* AceGen    6.808 Linux (6 Sep 16)                           *
!*           Co. J. Korelc  2013           28 Nov 22 17:26:16 *
!**************************************************************
! User     : Full professional version
! Notebook : eikonal2d
! Evaluation time                 : 7 s     Mode  : Optimal
! Number of formulae              : 130     Method: Automatic
! Subroutine                      : eikonal2d size: 2542
! Total size of Mathematica  code : 2542 subexpressions
! Total size of Fortran code      : 6492 bytes

!******************* S U B R O U T I N E **********************
SUBROUTINE eikonal2d(v,x,phi3,pow,penalty,cl,g,force,stiffness)
USE SMSUtility
IMPLICIT NONE
DOUBLE PRECISION v(321),x(4,2),phi3(3),pow,penalty,cl,g,force(8),stiffness(8,8)
v(285)=(-1)**pow
v(282)=-(x(1,1)*x(2,2))
v(281)=x(1,2)*x(2,1)
v(280)=x(1,1)-x(2,1)
v(279)=-x(1,2)+x(2,2)
v(278)=-phi3(2)+phi3(3)
v(277)=phi3(1)-phi3(3)
v(276)=-phi3(1)+phi3(2)
v(274)=x(3,1)*x(4,2)
v(273)=-(x(3,2)*x(4,1))
v(272)=x(3,2)-x(4,2)
v(271)=-(x(2,1)*x(4,2))
v(270)=x(2,2)*x(4,1)
v(269)=-x(2,2)+x(4,2)
v(268)=-x(3,1)+x(4,1)
v(267)=x(2,1)-x(4,1)
v(266)=x(2,2)-x(3,2)
v(265)=-x(2,1)+x(3,1)
v(128)=v(270)+v(271)+v(269)*x(1,1)+v(267)*x(1,2)
v(109)=v(273)+v(274)+v(272)*x(2,1)+v(268)*x(2,2)
v(111)=1d0/v(109)**2
v(118)=-(v(111)*v(265))
v(147)=v(118)*v(128)
v(116)=-(v(111)*v(266))
v(145)=v(116)*v(128)
v(112)=-(v(111)*v(268))
v(110)=-(v(111)*v(272))
v(123)=v(128)/v(109)
v(122)=MIN(1d0,v(123))
v(127)=((1d0+dsign(1.d0,v(122)))*(1d0+dsign(1.d0,1d0-v(123))))/4d0
v(275)=-(v(111)*v(127)*v(128))
v(134)=v(127)*(v(147)+v(280)/v(109))
v(133)=v(127)*(v(145)+v(279)/v(109))
v(132)=v(267)*v(275)
v(131)=v(269)*v(275)
v(130)=v(127)*(v(112)*v(128)+(-x(1,1)+x(4,1))/v(109))
v(129)=v(127)*(v(110)*v(128)+(x(1,2)-x(4,2))/v(109))
v(125)=v(127)/v(109)
v(126)=v(125)*v(267)
v(124)=v(125)*v(269)
v(100)=-(phi3(3)*v(265))-phi3(2)*v(267)-phi3(1)*v(268)
v(88)=MAX(v(122),0d0)
v(142)=v(281)+v(282)+v(279)*x(3,1)+v(280)*x(3,2)
v(136)=-(v(142)/v(109))
v(135)=MIN(1d0,v(136))
v(141)=((1d0+dsign(1.d0,v(135)))*(1d0+dsign(1.d0,1d0-v(136))))/4d0
v(283)=-(v(141)*v(142))
v(150)=v(118)*v(283)
v(158)=-v(134)-v(150)
v(149)=v(116)*v(283)
v(157)=-v(133)-v(149)
v(148)=v(141)*v(147)
v(156)=-v(132)-v(148)
v(146)=v(141)*v(145)
v(155)=-v(131)-v(146)
v(144)=v(141)*(-(v(112)*v(142))+(x(1,1)-x(3,1))/v(109))
v(154)=-v(130)-v(144)
v(143)=v(141)*(-(v(110)*v(142))+(-x(1,2)+x(3,2))/v(109))
v(153)=-v(129)-v(143)
v(139)=v(141)/v(109)
v(140)=v(139)*v(265)
v(152)=-v(126)-v(140)
v(138)=v(139)*v(266)
v(151)=-v(124)-v(138)
v(92)=MAX(v(135),0d0)
v(93)=1d0-v(88)-v(92)
v(159)=phi3(2)*v(88)+phi3(3)*v(92)+phi3(1)*v(93)
v(94)=cl*dlog(v(159))
v(162)=MIN(0d0,v(94))
v(169)=v(162)**pow
v(166)=(pow*v(162)**((-1d0)+pow)*(1d0+dsign(1.d0,-v(94))))/2d0
v(286)=(cl*v(166))/v(159)
v(97)=-(v(278)*x(2,2))-v(277)*x(3,2)-v(276)*x(4,2)
v(170)=(v(100)*v(100))+(v(97)*v(97))
v(284)=v(169)/v(170)
v(184)=v(276)*v(284)
v(179)=v(277)*v(284)
v(173)=v(278)*v(284)
v(161)=(penalty*v(285))/sqrt(v(170))
v(287)=v(161)*v(286)
v(185)=v(161)*((phi3(2)*v(134)+phi3(3)*v(150)+phi3(1)*v(158))*v(286)+v(184)*v(97))
v(182)=v(161)*(-(v(100)*v(184))+(phi3(2)*v(133)+phi3(3)*v(149)+phi3(1)*v(157))*v(286))
v(180)=v(161)*((phi3(2)*v(132)+phi3(3)*v(148)+phi3(1)*v(156))*v(286)+v(179)*v(97))
v(177)=v(161)*(-(v(100)*v(179))+(phi3(2)*v(131)+phi3(3)*v(146)+phi3(1)*v(155))*v(286))
v(174)=v(161)*((phi3(2)*v(130)+phi3(3)*v(144)+phi3(1)*v(154))*v(286)+v(173)*v(97))
v(171)=v(161)*(-(v(100)*v(173))+(phi3(2)*v(129)+phi3(3)*v(143)+phi3(1)*v(153))*v(286))
v(167)=(phi3(2)*v(126)+phi3(3)*v(140)+phi3(1)*v(152))*v(287)
v(163)=(phi3(2)*v(124)+phi3(3)*v(138)+phi3(1)*v(151))*v(287)
v(99)=v(161)*v(169)
v(316)=-(v(185)*v(92))-v(150)*v(99)
v(315)=-(v(182)*v(92))-v(149)*v(99)
v(314)=-(v(180)*v(92))-v(148)*v(99)
v(313)=-(v(177)*v(92))-v(146)*v(99)
v(312)=-(v(174)*v(92))-v(144)*v(99)
v(311)=-(v(171)*v(92))-v(143)*v(99)
v(310)=-(v(167)*v(92))-v(140)*v(99)
v(309)=-(v(163)*v(92))-v(138)*v(99)
v(308)=-(v(185)*v(88))-v(134)*v(99)
v(307)=-(v(182)*v(88))-v(133)*v(99)
v(306)=-(v(180)*v(88))-v(132)*v(99)
v(305)=-(v(177)*v(88))-v(131)*v(99)
v(304)=-(v(174)*v(88))-v(130)*v(99)
v(303)=-(v(171)*v(88))-v(129)*v(99)
v(302)=-(v(167)*v(88))-v(126)*v(99)
v(301)=-(v(163)*v(88))-v(124)*v(99)
v(300)=-(v(185)*v(93))-v(158)*v(99)
v(299)=-(v(182)*v(93))-v(157)*v(99)
v(298)=-(v(180)*v(93))-v(156)*v(99)
v(297)=-(v(177)*v(93))-v(155)*v(99)
v(296)=-(v(174)*v(93))-v(154)*v(99)
v(295)=-(v(171)*v(93))-v(153)*v(99)
v(294)=-(v(167)*v(93))-v(152)*v(99)
v(293)=-(v(163)*v(93))-v(151)*v(99)
v(292)=v(100)*v(99)
v(291)=v(97)*v(99)
v(290)=-(v(278)*v(99))
v(289)=-(v(277)*v(99))
v(288)=-(v(276)*v(99))
v(259)=v(288)*v(92)
v(256)=v(288)*v(88)
v(253)=v(288)*v(93)
v(239)=v(289)*v(92)
v(236)=v(289)*v(88)
v(233)=v(289)*v(93)
v(219)=v(290)*v(92)
v(216)=v(290)*v(88)
v(213)=v(290)*v(93)
g=v(94)
force(1)=v(291)
force(2)=v(292)
force(3)=-(v(291)*v(93))
force(4)=-(v(292)*v(93))
force(5)=-(v(291)*v(88))
force(6)=-(v(292)*v(88))
force(7)=-(v(291)*v(92))
force(8)=-(v(292)*v(92))
stiffness(1,1)=v(163)*v(97)
stiffness(1,2)=v(167)*v(97)
stiffness(1,3)=v(171)*v(97)
stiffness(1,4)=v(290)+v(174)*v(97)
stiffness(1,5)=v(177)*v(97)
stiffness(1,6)=v(289)+v(180)*v(97)
stiffness(1,7)=v(182)*v(97)
stiffness(1,8)=v(288)+v(185)*v(97)
stiffness(2,1)=v(100)*v(163)
stiffness(2,2)=v(100)*v(167)
stiffness(2,3)=v(100)*v(171)-v(290)
stiffness(2,4)=v(100)*v(174)
stiffness(2,5)=v(100)*v(177)-v(289)
stiffness(2,6)=v(100)*v(180)
stiffness(2,7)=v(100)*v(182)-v(288)
stiffness(2,8)=v(100)*v(185)
stiffness(3,1)=v(293)*v(97)
stiffness(3,2)=v(294)*v(97)
stiffness(3,3)=v(295)*v(97)
stiffness(3,4)=-v(213)+v(296)*v(97)
stiffness(3,5)=v(297)*v(97)
stiffness(3,6)=-v(233)+v(298)*v(97)
stiffness(3,7)=v(299)*v(97)
stiffness(3,8)=-v(253)+v(300)*v(97)
stiffness(4,1)=v(100)*v(293)
stiffness(4,2)=v(100)*v(294)
stiffness(4,3)=v(213)+v(100)*v(295)
stiffness(4,4)=v(100)*v(296)
stiffness(4,5)=v(233)+v(100)*v(297)
stiffness(4,6)=v(100)*v(298)
stiffness(4,7)=v(253)+v(100)*v(299)
stiffness(4,8)=v(100)*v(300)
stiffness(5,1)=v(301)*v(97)
stiffness(5,2)=v(302)*v(97)
stiffness(5,3)=v(303)*v(97)
stiffness(5,4)=-v(216)+v(304)*v(97)
stiffness(5,5)=v(305)*v(97)
stiffness(5,6)=-v(236)+v(306)*v(97)
stiffness(5,7)=v(307)*v(97)
stiffness(5,8)=-v(256)+v(308)*v(97)
stiffness(6,1)=v(100)*v(301)
stiffness(6,2)=v(100)*v(302)
stiffness(6,3)=v(216)+v(100)*v(303)
stiffness(6,4)=v(100)*v(304)
stiffness(6,5)=v(236)+v(100)*v(305)
stiffness(6,6)=v(100)*v(306)
stiffness(6,7)=v(256)+v(100)*v(307)
stiffness(6,8)=v(100)*v(308)
stiffness(7,1)=v(309)*v(97)
stiffness(7,2)=v(310)*v(97)
stiffness(7,3)=v(311)*v(97)
stiffness(7,4)=-v(219)+v(312)*v(97)
stiffness(7,5)=v(313)*v(97)
stiffness(7,6)=-v(239)+v(314)*v(97)
stiffness(7,7)=v(315)*v(97)
stiffness(7,8)=-v(259)+v(316)*v(97)
stiffness(8,1)=v(100)*v(309)
stiffness(8,2)=v(100)*v(310)
stiffness(8,3)=v(219)+v(100)*v(311)
stiffness(8,4)=v(100)*v(312)
stiffness(8,5)=v(239)+v(100)*v(313)
stiffness(8,6)=v(100)*v(314)
stiffness(8,7)=v(259)+v(100)*v(315)
stiffness(8,8)=v(100)*v(316)
END