.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
cmp eax, 123533400
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
inc dl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
add sil, -61
jmp .bb_0.2
.bb_0.2:
xor cl, al
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
