glabel treeAdjustRoot
/* 8003F71C 0003ACDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003F720 0003ACE0  7C 08 02 A6 */	mflr r0
/* 8003F724 0003ACE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8003F728 0003ACE8  39 61 00 40 */	addi r11, r1, 0x40
/* 8003F72C 0003ACEC  48 11 37 15 */	bl _savegpr_21
/* 8003F730 0003ACF0  3C 83 00 01 */	addis r4, r3, 1
/* 8003F734 0003ACF4  3B 80 00 00 */	li r28, 0
/* 8003F738 0003ACF8  83 04 14 94 */	lwz r24, 0x1494(r4)
/* 8003F73C 0003ACFC  7C 76 1B 78 */	mr r22, r3
/* 8003F740 0003AD00  7C B7 2B 78 */	mr r23, r5
/* 8003F744 0003AD04  3B A5 00 02 */	addi r29, r5, 2
/* 8003F748 0003AD08  93 81 00 0C */	stw r28, 0xc(r1)
/* 8003F74C 0003AD0C  3B 60 00 00 */	li r27, 0
/* 8003F750 0003AD10  3B E0 00 00 */	li r31, 0
/* 8003F754 0003AD14  93 81 00 08 */	stw r28, 8(r1)
/* 8003F758 0003AD18  83 D8 00 08 */	lwz r30, 8(r24)
/* 8003F75C 0003AD1C  A3 58 00 00 */	lhz r26, 0(r24)
/* 8003F760 0003AD20  83 38 00 04 */	lwz r25, 4(r24)
/* 8003F764 0003AD24  3A BE 00 02 */	addi r21, r30, 2
lbl_8003F768:
/* 8003F768 0003AD28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003F76C 0003AD2C  7E A4 AB 78 */	mr r4, r21
/* 8003F770 0003AD30  38 A1 00 0C */	addi r5, r1, 0xc
/* 8003F774 0003AD34  80 78 00 6C */	lwz r3, 0x6c(r24)
/* 8003F778 0003AD38  48 00 01 89 */	bl treeSearchNode
/* 8003F77C 0003AD3C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8003F780 0003AD40  2C 00 00 00 */	cmpwi r0, 0
/* 8003F784 0003AD44  41 82 01 48 */	beq lbl_8003F8CC
/* 8003F788 0003AD48  2C 1C 00 00 */	cmpwi r28, 0
/* 8003F78C 0003AD4C  40 82 00 08 */	bne lbl_8003F794
/* 8003F790 0003AD50  7E BC AB 78 */	mr r28, r21
lbl_8003F794:
/* 8003F794 0003AD54  93 B8 00 08 */	stw r29, 8(r24)
/* 8003F798 0003AD58  7E C3 B3 78 */	mr r3, r22
/* 8003F79C 0003AD5C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8003F7A0 0003AD60  80 85 00 10 */	lwz r4, 0x10(r5)
/* 8003F7A4 0003AD64  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 8003F7A8 0003AD68  4B FF FB F5 */	bl treeInsert
/* 8003F7AC 0003AD6C  2C 03 00 00 */	cmpwi r3, 0
/* 8003F7B0 0003AD70  40 82 00 0C */	bne lbl_8003F7BC
/* 8003F7B4 0003AD74  38 60 00 00 */	li r3, 0
/* 8003F7B8 0003AD78  48 00 01 30 */	b lbl_8003F8E8
lbl_8003F7BC:
/* 8003F7BC 0003AD7C  80 78 00 68 */	lwz r3, 0x68(r24)
/* 8003F7C0 0003AD80  7E A4 AB 78 */	mr r4, r21
/* 8003F7C4 0003AD84  38 A1 00 08 */	addi r5, r1, 8
/* 8003F7C8 0003AD88  48 00 01 39 */	bl treeSearchNode
/* 8003F7CC 0003AD8C  2C 03 00 00 */	cmpwi r3, 0
/* 8003F7D0 0003AD90  40 82 00 0C */	bne lbl_8003F7DC
/* 8003F7D4 0003AD94  38 60 00 00 */	li r3, 0
/* 8003F7D8 0003AD98  48 00 01 10 */	b lbl_8003F8E8
lbl_8003F7DC:
/* 8003F7DC 0003AD9C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8003F7E0 0003ADA0  80 61 00 08 */	lwz r3, 8(r1)
/* 8003F7E4 0003ADA4  80 04 00 28 */	lwz r0, 0x28(r4)
/* 8003F7E8 0003ADA8  90 03 00 28 */	stw r0, 0x28(r3)
/* 8003F7EC 0003ADAC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8003F7F0 0003ADB0  80 61 00 08 */	lwz r3, 8(r1)
/* 8003F7F4 0003ADB4  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 8003F7F8 0003ADB8  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8003F7FC 0003ADBC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8003F800 0003ADC0  80 03 00 04 */	lwz r0, 4(r3)
/* 8003F804 0003ADC4  2C 00 00 00 */	cmpwi r0, 0
/* 8003F808 0003ADC8  41 82 00 14 */	beq lbl_8003F81C
/* 8003F80C 0003ADCC  80 61 00 08 */	lwz r3, 8(r1)
/* 8003F810 0003ADD0  90 03 00 04 */	stw r0, 4(r3)
/* 8003F814 0003ADD4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8003F818 0003ADD8  93 E3 00 04 */	stw r31, 4(r3)
lbl_8003F81C:
/* 8003F81C 0003ADDC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8003F820 0003ADE0  80 61 00 08 */	lwz r3, 8(r1)
/* 8003F824 0003ADE4  80 04 00 08 */	lwz r0, 8(r4)
/* 8003F828 0003ADE8  90 03 00 08 */	stw r0, 8(r3)
/* 8003F82C 0003ADEC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8003F830 0003ADF0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8003F834 0003ADF4  2C 00 00 00 */	cmpwi r0, 0
/* 8003F838 0003ADF8  41 82 00 14 */	beq lbl_8003F84C
/* 8003F83C 0003ADFC  80 61 00 08 */	lwz r3, 8(r1)
/* 8003F840 0003AE00  90 03 00 0C */	stw r0, 0xc(r3)
/* 8003F844 0003AE04  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8003F848 0003AE08  93 E3 00 0C */	stw r31, 0xc(r3)
lbl_8003F84C:
/* 8003F84C 0003AE0C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8003F850 0003AE10  80 61 00 08 */	lwz r3, 8(r1)
/* 8003F854 0003AE14  80 04 00 24 */	lwz r0, 0x24(r4)
/* 8003F858 0003AE18  90 03 00 24 */	stw r0, 0x24(r3)
/* 8003F85C 0003AE1C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8003F860 0003AE20  80 61 00 08 */	lwz r3, 8(r1)
/* 8003F864 0003AE24  80 04 00 20 */	lwz r0, 0x20(r4)
/* 8003F868 0003AE28  90 03 00 20 */	stw r0, 0x20(r3)
/* 8003F86C 0003AE2C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8003F870 0003AE30  80 61 00 08 */	lwz r3, 8(r1)
/* 8003F874 0003AE34  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8003F878 0003AE38  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8003F87C 0003AE3C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8003F880 0003AE40  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8003F884 0003AE44  2C 00 00 00 */	cmpwi r0, 0
/* 8003F888 0003AE48  41 82 00 18 */	beq lbl_8003F8A0
/* 8003F88C 0003AE4C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8003F890 0003AE50  80 61 00 08 */	lwz r3, 8(r1)
/* 8003F894 0003AE54  90 03 00 18 */	stw r0, 0x18(r3)
/* 8003F898 0003AE58  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8003F89C 0003AE5C  93 E3 00 18 */	stw r31, 0x18(r3)
lbl_8003F8A0:
/* 8003F8A0 0003AE60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8003F8A4 0003AE64  7E C3 B3 78 */	mr r3, r22
/* 8003F8A8 0003AE68  82 A4 00 14 */	lwz r21, 0x14(r4)
/* 8003F8AC 0003AE6C  93 D8 00 08 */	stw r30, 8(r24)
/* 8003F8B0 0003AE70  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8003F8B4 0003AE74  80 98 00 6C */	lwz r4, 0x6c(r24)
/* 8003F8B8 0003AE78  80 C5 00 14 */	lwz r6, 0x14(r5)
/* 8003F8BC 0003AE7C  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 8003F8C0 0003AE80  38 C6 FF FC */	addi r6, r6, -4
/* 8003F8C4 0003AE84  48 00 00 A1 */	bl treeKillRange
/* 8003F8C8 0003AE88  7F 7B 1A 14 */	add r27, r27, r3
lbl_8003F8CC:
/* 8003F8CC 0003AE8C  3A B5 00 04 */	addi r21, r21, 4
/* 8003F8D0 0003AE90  7C 15 B8 00 */	cmpw r21, r23
/* 8003F8D4 0003AE94  40 81 FE 94 */	ble lbl_8003F768
/* 8003F8D8 0003AE98  93 B8 00 08 */	stw r29, 8(r24)
/* 8003F8DC 0003AE9C  38 60 00 01 */	li r3, 1
/* 8003F8E0 0003AEA0  B3 58 00 00 */	sth r26, 0(r24)
/* 8003F8E4 0003AEA4  93 38 00 04 */	stw r25, 4(r24)
lbl_8003F8E8:
/* 8003F8E8 0003AEA8  39 61 00 40 */	addi r11, r1, 0x40
/* 8003F8EC 0003AEAC  48 11 35 A1 */	bl _restgpr_21
/* 8003F8F0 0003AEB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8003F8F4 0003AEB4  7C 08 03 A6 */	mtlr r0
/* 8003F8F8 0003AEB8  38 21 00 40 */	addi r1, r1, 0x40
/* 8003F8FC 0003AEBC  4E 80 00 20 */	blr 
