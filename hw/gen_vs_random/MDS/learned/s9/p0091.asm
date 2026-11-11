.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 339
xor ax, -5889
or al, -58
or sil, al
xor rsi, -117
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and ebx, 80
test sil, 41
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and dx, 3
xor dil, 124
or al, -17
xor sil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
