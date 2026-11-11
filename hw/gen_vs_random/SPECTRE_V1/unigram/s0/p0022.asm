.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 46
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
xor ebx, eax
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
imul esi, eax
add al, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
xor al, 78
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 43
imul al
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
