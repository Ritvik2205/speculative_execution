.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
inc sil
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
add dl, -57 # instrumentation
setz cl
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
or edx, ebx
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
sbb bx, 22
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
sbb bl, sil
xor edx, 9
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
