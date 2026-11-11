.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
xor ax, 31969
btc si, 99
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor cl, sil
test edi, -1252846009
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
xor ax, -5889
xor dl, al
or dil, -71
xor eax, 2063216578
and bl, 68
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
