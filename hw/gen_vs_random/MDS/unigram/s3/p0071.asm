.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, 68
cmovbe si, si
and dil, 4
btr ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 9
and bl, -55 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 13
test sil, 3
cmovnle edi, ecx
cmovnb bx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 99
or rdi, 67
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
btc rax, rsi
and al, bl
cmovbe rax, rcx
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
