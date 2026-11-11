.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
btc edi, ecx
and bl, 120 # instrumentation
cmovnp ax, cx
or rbx, -72
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 58
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and dl, 91 # instrumentation
cmovnle ebx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
or sil, cl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rax]
or cl, al
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
jmp .bb_0.1
.bb_0.1:
or dl, al
cmovnz si, ax
not edi
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
or al, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
