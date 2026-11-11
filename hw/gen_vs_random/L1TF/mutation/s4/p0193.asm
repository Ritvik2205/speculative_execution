.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and eax, edi
xor bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
lea dx, qword ptr [rdx + rax + 22206]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
cmp eax, -127
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
inc dl
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or rax, -82
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
