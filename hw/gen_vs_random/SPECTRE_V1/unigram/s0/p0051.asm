.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bx, -105
lea di, qword ptr [rcx + rdi]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
xchg ecx, edi
setns cl
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
xchg ax, cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and al, bl
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
add esi, 5
lea di, qword ptr [rcx + rcx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], ebx
lea bx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
