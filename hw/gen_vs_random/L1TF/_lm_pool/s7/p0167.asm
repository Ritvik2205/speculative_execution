.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
and cl, sil
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
xor cl, 89
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
btc ax, cx
lea ecx, qword ptr [rcx + rdx + 47]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
lea rbx, qword ptr [rax + rcx]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and ax, 26813
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
