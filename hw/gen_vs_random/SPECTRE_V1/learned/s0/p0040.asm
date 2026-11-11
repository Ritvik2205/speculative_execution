.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
sbb esi, eax
and dl, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, bl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
sub bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
