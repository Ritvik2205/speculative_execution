.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bl
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 73
sbb dil, dl
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 84
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
movzx dx, cl
test bl, 33
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
or dx, 0b1000000000000000 # instrumentation
bsr ax, dx
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
