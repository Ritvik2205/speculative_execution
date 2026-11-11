.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rax, rbx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and sil, -116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 17
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
test dx, 16353
xor al, al
and rdx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdx]
and rdi, 31
cmovnl dx, di
test sil, sil
cmovns cx, si
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
