.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz edi, eax
and bl, 68
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
or edi, -88
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
cmovnbe di, si
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
or rdi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
or dl, al
and cl, 125 # instrumentation
cmovo ax, bx
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and al, 42 # instrumentation
cmovz edx, eax
btr rsi, 207
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
xor cx, -18
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
