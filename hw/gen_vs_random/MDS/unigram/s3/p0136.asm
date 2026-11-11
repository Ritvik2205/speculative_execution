.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, bx
test di, bx
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
bts edi, edi
and dil, al
and dl, bl
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 10
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
or ax, 16560
and al, 39 # instrumentation
cmovbe ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
not eax
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 78
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
btr eax, ebx
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and bl, 65 # instrumentation
cmovnbe cx, di
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
