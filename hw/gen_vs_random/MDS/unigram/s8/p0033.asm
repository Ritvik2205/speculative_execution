.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
and dl, -19 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and bl, -99 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
cmovle rdx, rcx
cmovnb rdx, rdx
not eax
cmovz edi, edi
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
or dil, -76
bt eax, ebx
and bx, 18
btc rsi, 105
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
cmovle esi, edx
or rcx, 54
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
or cl, al
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
