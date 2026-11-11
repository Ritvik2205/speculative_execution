.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, sil
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rdi
cmovb ecx, eax
bt dx, ax
setp bl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
cmp cx, 19
sub al, -82
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
imul rcx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 1
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
