.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
bt si, cx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and cl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], bx
xor dl, -125
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
or bl, 84
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
cmovnb dx, di
or sil, -8
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
cmovnle rsi, rdx
xor al, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
