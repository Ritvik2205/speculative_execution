.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
or rsi, 77
and al, -54
and dil, dl
xor dil, dl
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
or cl, cl
xor al, 122
xor dl, -59
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
bt esi, ebx
xor bl, dl
and cl, -19
xor dil, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
