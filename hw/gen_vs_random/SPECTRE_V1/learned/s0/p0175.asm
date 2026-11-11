.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
add al, -65
sbb al, 49
sub bl, -6
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
dec bl
add al, -13
add al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
