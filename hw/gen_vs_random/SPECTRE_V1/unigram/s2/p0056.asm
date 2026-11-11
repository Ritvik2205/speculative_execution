.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -43
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 15
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovp dx, ax
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dil
cmp dl, 119
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
setl cl
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], esi
cmovnl rcx, rax
adc sil, -77
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
