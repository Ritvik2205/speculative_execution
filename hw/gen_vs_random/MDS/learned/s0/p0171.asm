.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
or al, dil
xor al, dl
or bl, -54
or sil, -49
jmp .bb_0.1
.bb_0.1:
or cl, -36
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
xor al, sil
or dil, 16
test sil, al
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
