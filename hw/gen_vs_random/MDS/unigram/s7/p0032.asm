.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
and bl, bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], eax
and si, si
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 21
test edi, -1252846009
cmovnz dx, di
cmovo rcx, rcx
or bl, -125
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
test al, -7
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
cmovnz rax, rdi
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
