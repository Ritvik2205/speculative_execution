.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 93
mul rcx
and bl, 89
sbb al, 61
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
lea bx, qword ptr [rdi + rcx + 56]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
xor cl, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 34
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
