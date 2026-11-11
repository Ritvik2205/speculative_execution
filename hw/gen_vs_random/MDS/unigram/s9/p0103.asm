.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, dl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
test dx, 16353
xor dx, si
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
xor al, al
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and si, -121
cmovl rax, rcx
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
and esi, 20
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
or edi, -88
bt edx, ebx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 29
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
