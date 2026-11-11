.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb ecx, esi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 27
xor dil, -37
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
add dil, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
add bl, -95
cmp ecx, 11
and ax, 32540
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
