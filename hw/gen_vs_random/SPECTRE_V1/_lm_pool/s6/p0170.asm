.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb ebx, esi
sub dil, -111
cmp rdi, 57
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea dx, qword ptr [rax + rsi + 73]
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
adc sil, -77
add di, 44
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
