.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
xor al, -89
test sil, 47
add dx, -103
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
xor al, sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
lea rax, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
add edi, -91
lea rsi, qword ptr [rbx + rdi + 11]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
