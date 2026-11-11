.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor dil, -3
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or bl, 100
or sil, dil
or al, 74
and cl, al
and cl, dl
or rdi, -11
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
