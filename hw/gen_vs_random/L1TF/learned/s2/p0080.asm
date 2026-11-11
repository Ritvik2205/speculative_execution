.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
lea eax, qword ptr [rdi]
sbb ax, -4845
jmp .bb_0.1
.bb_0.1:
cbw
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
jmp .bb_0.3
.bb_0.3:
sub bl, -96
sub al, -47
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
