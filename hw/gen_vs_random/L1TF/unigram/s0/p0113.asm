.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
add dil, dil
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 60
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 75
lea dx, qword ptr [rax + rdi + 67]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
sbb sil, bl
jmp .bb_0.1
.bb_0.1:
dec dl
or bl, 61
sbb dl, 89
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
lea rax, qword ptr [rdi + rax + 79]
and rax, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rax]
and edx, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
