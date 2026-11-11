.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
add cl, dl
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
sub cl, sil
add al, -44
add dil, dil
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 70
inc ecx
sub al, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
