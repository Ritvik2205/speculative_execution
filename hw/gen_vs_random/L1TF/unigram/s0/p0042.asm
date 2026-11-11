.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 20
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
sbb cx, si
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
setp bl
xchg ecx, esi
jmp .bb_0.1
.bb_0.1:
mul dil
neg eax
mov cx, di
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
test edx, 60
cmovl si, ax
add cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 125
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
