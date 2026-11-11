.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
lea rax, qword ptr [rdi + rdi]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
test dil, -116
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
test al, 84
inc esi
jp .bb_0.3
jmp .exit_0
.bb_0.3:
lea rcx, qword ptr [rsi + rbx + 83]
xchg al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
