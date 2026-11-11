.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 38
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
test bl, -8
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
add al, 3
sub al, bl
lea dx, qword ptr [rcx + rbx + 54281]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
mov dil, dl
sub si, 32
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
