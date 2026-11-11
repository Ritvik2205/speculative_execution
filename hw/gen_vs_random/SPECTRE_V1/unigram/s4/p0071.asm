.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 73
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 95
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 10
add cl, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
cmovnbe rdi, rax
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 86
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edi
adc bl, 27
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
mul di
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
