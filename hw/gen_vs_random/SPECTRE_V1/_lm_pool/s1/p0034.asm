.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
lea ax, qword ptr [rbx]
test bl, -8
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
cmovs cx, ax
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
jns .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
mov bl, dl
cmp cl, bl
lea rbx, qword ptr [rcx + rdi + 95]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
