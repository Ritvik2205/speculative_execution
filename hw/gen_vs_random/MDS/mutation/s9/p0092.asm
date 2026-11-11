.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edx, edi
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
test al, bl
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
test sil, bl
cmovbe ebx, esi
and bl, dl
cmovnl esi, esi
not dil
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
or rdx, rax
or bl, al
and al, 35
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
btc bx, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
