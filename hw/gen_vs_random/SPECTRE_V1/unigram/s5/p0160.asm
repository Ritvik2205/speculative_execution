.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, -114
inc dl
lea rdx, qword ptr [rcx + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], dx
cmovle si, di
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 31
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
or dil, 98
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], al
mov dl, 67
xchg dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
