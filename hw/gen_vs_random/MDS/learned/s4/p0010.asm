.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
xor rdi, -9
xor eax, 1640090871
or al, dil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
xor cl, 83
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and dil, 125
btr dx, bx
and al, al
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edx
and cx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
