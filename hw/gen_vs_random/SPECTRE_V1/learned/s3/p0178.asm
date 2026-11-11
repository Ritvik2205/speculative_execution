.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
inc si
test cl, dil
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rsi]
test dil, 18
bts edi, eax
dec dl
test al, 70
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
cmp rax, 94
bt bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
