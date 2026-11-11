.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -76
test dil, -126
lea ebx, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
sbb sil, dl
add dl, 22
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 86
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
