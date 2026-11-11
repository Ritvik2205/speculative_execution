.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns al
adc di, 59
add dl, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
cmovnp rdx, rax
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
or edx, 85
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdx
setnp sil
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
neg edi
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
cmp bl, -114
cmovb ax, di
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
lea dx, qword ptr [rdx + rdx + 31]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
