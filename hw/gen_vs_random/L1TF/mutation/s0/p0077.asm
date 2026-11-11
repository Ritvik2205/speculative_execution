.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, 39856325
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
and eax, edi
lea dx, qword ptr [rdx + rax + 22206]
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or rax, 1808026647
inc dl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
