.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 56
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 25
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
cmp ebx, edx
add bl, 113 # instrumentation
setbe dl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sub eax, ebx
bt rax, rax
and al, -68
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rbx]
or dil, dil
add sil, cl
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 88
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
