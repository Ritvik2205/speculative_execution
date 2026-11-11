.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -39
xor bl, sil
test sil, dil
jmp .bb_0.1
.bb_0.1:
and dl, -73
xor bl, -88
test dl, -85
not cl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and ax, -16061
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or sil, al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
