.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and al, -68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
cmovnp dx, dx
cmovle si, cx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 77
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and al, sil
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
cmovnb dx, bx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
