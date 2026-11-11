.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, edx
sub al, bl
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
add bx, -65
setnb al
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
or sil, dl
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnbe .bb_0.3
jmp .bb_0.4
.bb_0.3:
jno .bb_0.4
jmp .exit_0
.bb_0.4:
xor cl, dil
cmovnbe cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
