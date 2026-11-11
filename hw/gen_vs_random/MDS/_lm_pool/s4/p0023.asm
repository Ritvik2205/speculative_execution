.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
xor al, 34
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and sil, sil
test bl, dil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
btc edi, 230
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or al, sil
or dil, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
