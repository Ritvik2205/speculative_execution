.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
cmp rbx, 85
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 49
or ebx, -124
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
lea di, qword ptr [rdx + rsi + 93]
jle .bb_0.2
jmp .exit_0
.bb_0.2:
cmp bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
