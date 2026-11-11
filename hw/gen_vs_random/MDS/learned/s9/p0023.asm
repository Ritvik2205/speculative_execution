.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
or al, 16
and sil, dl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test al, -7
and ax, -10351
and bl, 68
and rax, -978188247
test dil, bl
test ebx, -961564216
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
