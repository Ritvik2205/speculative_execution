.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
or dil, -52
cmovo rdi, rsi
and dl, dil
or bl, cl
cmovbe ax, ax
bts edi, ebx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and dil, sil
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 54
or bl, dl
test dil, -72
and dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
