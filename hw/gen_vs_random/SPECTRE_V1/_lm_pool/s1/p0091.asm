.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 72
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
sub bl, cl
cmp sil, 25
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 62
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rdx + rax]
test sil, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
