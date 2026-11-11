.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, ax
xor sil, -46
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
test sil, 17
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or bl, sil
jmp .bb_0.1
.bb_0.1:
or cl, bl
xor al, -26
xor dil, -3
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
btr ax, 193
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor cl, al
and bx, 51
test sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
