.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
xor dl, dil
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
btc di, si
jmp .bb_0.1
.bb_0.1:
cbw
and cl, cl
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
add al, 65 # instrumentation
cmovo rax, rcx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rbx, -64
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
