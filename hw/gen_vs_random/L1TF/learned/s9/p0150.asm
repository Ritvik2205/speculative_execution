.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and ax, 26813
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
add dl, 22
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
sub dl, 41
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
bts ecx, 225
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
