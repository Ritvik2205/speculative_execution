.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 32
or cx, -42
xor dil, 8
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
jmp .bb_0.1
.bb_0.1:
test bl, sil
or cl, -77
jmp .bb_0.2
.bb_0.2:
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
