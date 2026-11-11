.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
add sil, dl
sbb cl, 105
jl .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 59
and al, 33
sub sil, al
xchg rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
