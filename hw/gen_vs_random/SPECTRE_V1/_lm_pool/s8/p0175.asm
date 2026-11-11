.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
mov sil, dil
sbb cl, bl
add cl, -127
sub dil, -32
sub al, -66
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
js .bb_0.3
jmp .exit_0
.bb_0.3:
imul dl
lea ax, qword ptr [rdx + rsi + 8]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
