.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg eax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
lea rdi, qword ptr [rax + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
add dl, 47
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 48
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
add bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
add al, 120 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
xor dl, 71
cmovnbe bx, di
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
