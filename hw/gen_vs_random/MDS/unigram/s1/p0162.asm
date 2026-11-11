.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rax, rsi
and bl, -82 # instrumentation
cmovz ebx, eax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
or rdi, rdx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
btc si, 43
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rax
and rbx, 65
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
xor cx, si
bt rax, 26
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
and di, bx
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
