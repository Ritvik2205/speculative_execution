.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
test al, dl
jmp .bb_0.1
.bb_0.1:
test cl, 91
xor sil, bl
and rax, -2058103810
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or cl, 6
or dl, dil
xor dl, 40
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and cl, -19
or dil, -76
or eax, -1777347252
xor al, 115
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
