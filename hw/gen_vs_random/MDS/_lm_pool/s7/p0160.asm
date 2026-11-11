.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
xor dil, sil
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
test dil, dil
and dl, -73
and bl, bl
xor ebx, 2
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
btr ax, dx
btr eax, edi
and eax, 454700988
test rax, -648054011
test al, 22
jmp .bb_0.1
.bb_0.1:
xor cl, al
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
