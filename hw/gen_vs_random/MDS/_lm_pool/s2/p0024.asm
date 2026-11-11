.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 41
test cl, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and sil, -69
and dil, 125
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
not dl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor sil, 110
or al, 25
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
or rdi, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
