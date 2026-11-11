.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
test al, bl
xor al, 8
xor sil, -126
xor sil, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and al, cl
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and cl, 79
and dl, -73
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and eax, -829294476
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and bl, dil
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
