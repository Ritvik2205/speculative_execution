.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -113
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
or rbx, -72
jmp .bb_0.1
.bb_0.1:
and eax, 454700988
bts rbx, rsi
or al, -78
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and al, 106
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
test dl, sil
bt bx, ax
not dl
and eax, -85386306
xor dil, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
