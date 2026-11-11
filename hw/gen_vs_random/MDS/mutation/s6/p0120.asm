.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
or rdx, rax
cmovnl esi, esi
cmovbe ebx, esi
not dil
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
btc bx, 58
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
test al, bl
test sil, bl
bt edx, edi
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
or bl, al
and bl, dl
and al, -8
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 64
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
