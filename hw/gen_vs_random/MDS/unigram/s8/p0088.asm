.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
btc esi, 199
or sil, -49
cmovs edi, edi
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmovno si, dx
btr edx, ebx
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
cmovnbe rbx, rax
xor sil, dil
cmovbe rsi, rdx
cmovnl rax, rdx
cmovnbe ax, bx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
test dl, al
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
bts rax, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
