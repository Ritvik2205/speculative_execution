.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, rax
not dil
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and bl, dl
bt edx, edi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
cmovnl esi, esi
cmovbe ebx, esi
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and al, 35
btc bx, 104
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
test al, bl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
test sil, bl
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
