.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -2
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
or rax, -141551502
xor sil, -46
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and ax, 31082
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
or dl, al
bt dx, si
and al, dl
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
test ebx, -961564216
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
