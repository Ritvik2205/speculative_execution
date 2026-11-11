.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
sub al, sil
sub al, dl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg bl, dl
sub al, bl
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and dl, -92
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
