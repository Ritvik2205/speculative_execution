.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 25
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and ax, 26813
jmp .bb_0.1
.bb_0.1:
add cl, -21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
lea rdx, qword ptr [rbx + rax]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and ax, 37
lea rsi, qword ptr [rsi + rax]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
