.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
xor sil, sil
xor bl, dil
test dil, -126
lea ebx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
sub al, 9
test al, -70
jmp .bb_0.1
.bb_0.1:
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
