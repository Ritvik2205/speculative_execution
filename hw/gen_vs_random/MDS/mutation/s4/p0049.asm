.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
cmovbe ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
or rdx, rax
cmovnl esi, esi
test sil, bl
and bl, dl
or bl, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
btc bx, 104
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
bt edx, edi
test al, bl
not dil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and al, 84
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
