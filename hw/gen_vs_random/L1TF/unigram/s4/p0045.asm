.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, rax
adc edx, 25
movzx edi, cl
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
add dl, -53 # instrumentation
dec di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rcx
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 96
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -125
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 24
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
xor dil, bl
add al, 109 # instrumentation
adc cx, 72
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 89
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
