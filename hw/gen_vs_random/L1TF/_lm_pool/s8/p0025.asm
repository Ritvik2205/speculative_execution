.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
add al, -102
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor ax, -24879
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 33
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
sub sil, -99
add dil, -7
lea edi, qword ptr [rdx]
or dl, 8
or rdi, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
