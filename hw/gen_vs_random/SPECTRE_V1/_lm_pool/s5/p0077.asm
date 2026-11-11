.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 81
mov al, cl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
sub dl, bl
cmp ecx, 81
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
add cl, -127
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
