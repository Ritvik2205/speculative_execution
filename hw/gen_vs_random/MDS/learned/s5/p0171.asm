.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -10351
xor rdx, -59
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
xor sil, 94
or al, -78
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
xor cl, 15
or dl, -21
and rax, -1701787862
test sil, bl
or eax, 359647041
and bl, bl
btc bx, cx
or bl, al
xor dl, -43
jmp .bb_0.1
.bb_0.1:
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
