.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
sub al, -82
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, 40
add al, -109
setp bl
mov bl, sil
jl .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 84
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
