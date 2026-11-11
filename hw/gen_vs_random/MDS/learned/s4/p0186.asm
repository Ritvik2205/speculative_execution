.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -21
or bl, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and bl, bl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
test eax, 1838539683
or ax, -20176
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
or dil, -71
and rax, -2058103810
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
