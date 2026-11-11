.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
sbb cl, dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
lea ax, qword ptr [rax + rbx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and sil, -55
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
loopne .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
cmovno dx, di
add bl, dl
cmp cl, bl
test al, 84
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
