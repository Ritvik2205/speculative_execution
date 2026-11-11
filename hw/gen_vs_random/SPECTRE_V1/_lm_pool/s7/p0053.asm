.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
xor cl, 78
add al, -65
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
sub al, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
btc ax, bx
js .bb_0.4
jmp .exit_0
.bb_0.4:
sbb bl, cl
and rdi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdi]
xor al, dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
