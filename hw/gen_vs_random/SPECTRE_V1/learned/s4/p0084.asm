.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rdx, qword ptr [rdi + rcx + 59295]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
sub sil, dil
jmp .bb_0.2
.bb_0.2:
sub sil, dl
jmp .bb_0.3
.bb_0.3:
add al, 19 # instrumentation
setnz bl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 82
and bl, -65
add dl, 47
cmp al, bl
xchg si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
