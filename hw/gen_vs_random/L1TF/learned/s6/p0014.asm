.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
cmp dil, dl
sbb sil, 19
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 97
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
lea eax, qword ptr [rax + rcx + 91]
lea rdx, qword ptr [rcx + rax + 65]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
