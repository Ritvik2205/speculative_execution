.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -1
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
add rdi, 55
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
xor dl, dil
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
xor ax, 913
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
jmp .bb_0.4
.bb_0.4:
lea dx, qword ptr [rdi]
adc bl, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
