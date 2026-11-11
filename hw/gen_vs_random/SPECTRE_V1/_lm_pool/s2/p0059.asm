.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
mov bl, dl
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
test dl, -36
cmp cl, 59
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, bl
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
sbb sil, bl
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
