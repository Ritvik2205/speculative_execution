.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and al, sil
and rax, -2058103810
and ax, 29207
xor bl, dil
and dl, al
xor rdi, -9
xor bl, dil
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
test cl, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
