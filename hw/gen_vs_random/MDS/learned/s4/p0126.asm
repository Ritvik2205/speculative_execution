.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
not al
xor al, -89
btc edi, 230
test eax, 158941032
xor sil, -14
or rsi, 66
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or al, sil
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
