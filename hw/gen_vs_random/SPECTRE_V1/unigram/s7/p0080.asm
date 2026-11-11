.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, 31
add dl, 47
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
setz sil
lea ecx, qword ptr [rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
test cl, -33
xchg al, dil
and rdx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
not rdi
add al, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
