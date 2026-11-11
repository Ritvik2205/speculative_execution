.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
or bl, dil
btc si, dx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
test sil, -96
jmp .bb_0.1
.bb_0.1:
xor dil, sil
xor dil, sil
and rax, 627810357
not cl
xor cl, sil
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and al, 84
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
