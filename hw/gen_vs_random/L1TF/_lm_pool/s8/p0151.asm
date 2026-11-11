.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 19
btc ax, dx
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rsi]
setle al
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
