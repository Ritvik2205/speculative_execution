.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
and al, al
and sil, -69
or sil, cl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
xor al, 55
and dl, dil
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test sil, -55
xor rdi, -9
and dl, -73
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and ax, 5001
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
