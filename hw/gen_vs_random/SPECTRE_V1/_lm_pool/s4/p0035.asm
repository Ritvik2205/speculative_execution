.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], si
mov cl, dl
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
xor sil, -33
jle .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, bl
dec al
sub rdi, 87
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], cl
lea rsi, qword ptr [rbx + rcx + 73]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
