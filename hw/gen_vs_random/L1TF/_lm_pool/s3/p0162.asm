.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
lea cx, qword ptr [rax]
sbb al, dl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, 12
lea rbx, qword ptr [rax + rdx]
bts ax, 201
add ebx, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
