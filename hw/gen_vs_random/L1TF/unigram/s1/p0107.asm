.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rcx
mov al, -101
lea rdx, qword ptr [rdx + rbx + 95]
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
add al, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
cmovb dx, bx
jmp .bb_0.1
.bb_0.1:
xor ebx, -81
cmp edx, 99
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 42
inc bl
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
lea rdi, qword ptr [rbx]
cmp cx, 81
add dil, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
