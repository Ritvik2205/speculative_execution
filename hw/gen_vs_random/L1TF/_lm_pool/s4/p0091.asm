.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
lea rdi, qword ptr [rbx + rdx]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
sub cl, 86
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test rdi, rcx
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
sbb dl, dil
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
cmovnp rdx, rax
sub al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
