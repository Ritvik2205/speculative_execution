.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
or sil, 34
add cl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
cmp cx, 19
btc bx, di
xchg dil, al
cmp al, 62
cmovnle si, cx
bswap rax
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rbx
sub sil, al
add dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
mov edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
