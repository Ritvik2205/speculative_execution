.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 40
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
lea bx, qword ptr [rdx]
jnle .bb_0.4
jmp .exit_0
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
cmp dl, -56
sbb ecx, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
