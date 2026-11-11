.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 24
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
or al, al
xor dl, bl
and dil, dl
xor bl, -27
and cl, cl
test dil, 46
or bl, cl
or dl, al
test bl, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor ax, -5889
or al, dil
xor sil, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
