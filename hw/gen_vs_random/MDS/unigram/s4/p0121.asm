.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz si, si
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
cmovnbe ebx, edx
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and cl, -23 # instrumentation
cmovno eax, ecx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
and dx, di
and sil, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and dil, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and sil, bl
and rsi, rsi
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
btc dx, ax
and rax, 41
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
