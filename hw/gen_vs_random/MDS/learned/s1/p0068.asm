.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
and dil, dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
bt si, ax
test cl, dil
test bl, sil
and eax, 454700988
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 82
xor rax, -843636050
xor dil, cl
test cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
