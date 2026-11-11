.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 36
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 70
add dl, 56 # instrumentation
cmovns esi, edx
imul al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 58
sbb bl, 25
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
movsx bx, bl
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 53
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 44
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
test cl, -31
test dil, -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
