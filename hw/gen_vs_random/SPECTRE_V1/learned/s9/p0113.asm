.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
jl .bb_0.3
jmp .exit_0
.bb_0.3:
cmp rbx, 100
lea rbx, qword ptr [rdi]
mov sil, dl
sub bx, 63
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
lea rdx, qword ptr [rbx + rax + 23]
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
