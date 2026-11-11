.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 49
cmovb ecx, ecx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
inc al
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
cdq
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
imul edx
adc dil, sil
inc sil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 38
cmp edx, 99
dec edi
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
