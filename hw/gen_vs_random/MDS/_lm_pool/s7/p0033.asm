.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
btr bx, 188
xor cl, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 17
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
test edi, -1252846009
test dl, dl
bt cx, dx
or dx, 125
test ebx, -961564216
test rdi, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
