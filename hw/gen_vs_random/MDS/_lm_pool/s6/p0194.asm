.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
xor bx, 19
or dl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and al, 35
and al, 106
or al, 54
test dil, -51
and sil, sil
xor bl, -27
xor cl, 15
or si, 94
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
bt ax, bx
test dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
