.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
xor al, bl
cmovnb rcx, rax
and sil, 74
and esi, 24
btr eax, edi
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
test ebx, -2015966884
and al, -114
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or bl, dl
or al, -78
xor dx, 92
not dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
