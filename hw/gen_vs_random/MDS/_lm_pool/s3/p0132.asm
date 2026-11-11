.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 124
xor dl, -59
or cl, bl
and rcx, rbx
or cl, -77
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
or bl, sil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
or al, -24
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
jmp .bb_0.2
.bb_0.2:
or cl, sil
or al, -61
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
