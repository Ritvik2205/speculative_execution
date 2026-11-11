.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
adc sil, dil
add al, 78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
sbb dx, 58
test dx, 57
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
cmovnb eax, edx
mov esi, -1776760885
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 93
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
cmovno rsi, rdx
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
