.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
and sil, cl
and ebx, 66
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test sil, -96
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
test cl, -86
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
jmp .bb_0.2
.bb_0.2:
test bl, dil
bts esi, 61
xor cl, dl
test ebx, -2015966884
and edx, -44
or dil, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
