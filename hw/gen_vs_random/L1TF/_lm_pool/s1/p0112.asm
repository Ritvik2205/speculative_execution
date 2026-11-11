.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
cmp eax, 123533400
or al, bl
test dl, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], 91
or esi, 95
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 43
and dil, -82
bswap rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
