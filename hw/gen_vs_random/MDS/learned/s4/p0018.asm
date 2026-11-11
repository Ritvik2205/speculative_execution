.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test rbx, 48
or rsi, 18
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
cmovnz ecx, ebx
xor dl, cl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
xor edi, 29
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
xor rdx, -59
xor eax, 1640090871
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test rsi, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
