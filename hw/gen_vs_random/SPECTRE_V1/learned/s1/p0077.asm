.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, cx
add rax, -704585563
and dl, -109
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
dec cl
and dl, -92
or bl, 11
add al, -13
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub cl, -47
sub al, sil
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
