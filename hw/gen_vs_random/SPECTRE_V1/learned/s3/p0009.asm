.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 93
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
cmp rax, -1365488374
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
cmp dil, dl
sub al, dil
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp esi, 98
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea eax, qword ptr [rcx + rax + 9]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
