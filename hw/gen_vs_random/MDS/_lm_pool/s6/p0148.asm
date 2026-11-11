.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor al, -26
bt di, dx
and rax, -1701787862
test bl, cl
jmp .bb_0.1
.bb_0.1:
test esi, 1857129931
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
bt ax, di
or al, sil
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
xor sil, -126
or cl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
