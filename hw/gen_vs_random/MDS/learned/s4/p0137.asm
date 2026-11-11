.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and al, bl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edi
cmovp eax, eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and sil, -94
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
bt edx, 254
cmovnb rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
xor bl, al
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 73
btc esi, 226
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
xor rsi, 82
xor rsi, 88
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
