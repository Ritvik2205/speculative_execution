.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
xor al, al
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 65
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and bl, -82 # instrumentation
cmovz ecx, ebx
or dil, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
test dil, dil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
xor al, 55
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
cmovle bx, ax
or dl, dl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
