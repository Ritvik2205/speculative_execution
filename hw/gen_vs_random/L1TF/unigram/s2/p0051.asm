.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -75 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rsi]
lea dx, qword ptr [rax + rcx]
or dx, dx
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], 93
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
sets al
xchg eax, ecx
jmp .bb_0.1
.bb_0.1:
test cl, 5
or esi, eax
add cl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cwde
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
test bx, bx
xor rdi, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
