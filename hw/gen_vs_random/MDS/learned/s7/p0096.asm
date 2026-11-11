.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and rax, 1250429750
xor dil, -70
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test sil, 41
xor dil, 124
or bl, -62
or al, 74
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and cl, al
and cl, -71
test bl, -114
test sil, 17
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
