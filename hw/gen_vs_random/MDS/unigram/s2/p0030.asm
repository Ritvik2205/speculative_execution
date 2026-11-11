.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and bl, dl
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
or dl, sil
test dil, al
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and cl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
btc rax, 36
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
bt rsi, rdx
and dl, 84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
or rdi, rsi
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
xor dl, dl
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
or di, 0b1000000000000000 # instrumentation
bsr si, di
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
