.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and dl, -73
and cl, dil
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
or cl, dil
and cl, dl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and cl, -111
and sil, 89
test cl, cl
or dil, dl
xor di, 40
test dl, al
or al, 16
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
