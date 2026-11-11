.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 63
test dl, sil
or dil, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
or dl, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or rcx, 54
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
xor al, 8
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
