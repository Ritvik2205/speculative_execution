.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
bts rcx, 28
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 7
inc bl
imul rdx, rsi, 73
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
adc al, 36
sbb dx, si
add al, 31
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx + rax]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
lea rdi, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
