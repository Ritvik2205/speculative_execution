.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, cl
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, -21
sbb cl, al
setz cl
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
cmp ebx, -33
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
movsx bx, sil
test al, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
