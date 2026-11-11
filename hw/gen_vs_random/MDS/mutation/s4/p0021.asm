.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, dl
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 64
or rdx, rax
test sil, bl
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
test al, bl
or bl, al
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnl esi, esi
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
bt edx, edi
and al, 75
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
btc bx, 58
cmovbe ebx, esi
not dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
