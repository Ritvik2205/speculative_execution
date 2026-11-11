.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
sbb sil, -78
test al, 34
test dl, 113
setz bl
mov cl, sil
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
add dil, sil
sub cl, sil
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
