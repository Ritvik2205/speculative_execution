.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
or rax, -443578116
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
btc cx, ax
cmp bl, 123
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
