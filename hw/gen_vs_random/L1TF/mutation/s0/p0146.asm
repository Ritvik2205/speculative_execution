.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
sets al
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
btr edi, edx
add ax, -10746
add al, -80
jmp .bb_0.1
.bb_0.1:
btc eax, ecx
add bl, 119 # instrumentation
cmovle cx, si
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
or rax, -82
cmovnle dx, dx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
