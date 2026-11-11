.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sub al, bl
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
setns cl
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx], 85
sbb al, sil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
add sil, 2
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 86
test edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
