.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edi
or al, -61
not bl
test dil, sil
or al, 30
and dil, 125
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or al, sil
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
xor dil, -70
and sil, dil
test dl, dl
and dil, -39
or dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
