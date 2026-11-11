.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 55
xchg edi, ecx
adc cl, -81
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
cmovs rax, rax
neg rbx
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
dec bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
setnp al
add ax, 8031
and si, di
sub cl, -47
sub dil, cl
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
cmovl cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
