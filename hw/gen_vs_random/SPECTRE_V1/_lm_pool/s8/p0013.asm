.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
lea eax, qword ptr [rcx]
and rax, -1128038253
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -93
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
js .bb_0.3
jmp .exit_0
.bb_0.3:
cmp al, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
