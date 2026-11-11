.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 56
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
xor eax, -105
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 8
sub al, sil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test ax, 636
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
