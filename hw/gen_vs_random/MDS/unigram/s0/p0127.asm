.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, ax
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 26
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
btc rdx, rdx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
test eax, 1287331633
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 15
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rbx
btc esi, 199
or al, dil
cmovnz edi, eax
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
cmovz rbx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and al, 42 # instrumentation
cmovz ebx, ecx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
