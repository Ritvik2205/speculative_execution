.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor al, 38
or dx, 55
xor cl, dl
and rax, -109
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
add cl, 88
cmp al, 27
cmovle rcx, rdi
and sil, 37
add ax, 116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
