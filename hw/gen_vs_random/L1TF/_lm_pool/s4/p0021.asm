.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 93
and dl, 10
inc dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
bts ebx, 81
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
xor si, -50
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
