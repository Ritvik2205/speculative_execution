.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
xor cl, 55
xor cl, dil
jmp .bb_0.1
.bb_0.1:
test rdi, 32
test cl, -86
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and sil, bl
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
