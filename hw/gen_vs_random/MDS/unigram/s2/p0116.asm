.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
bt rdi, 36
cmovle rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 68
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
cmovnb eax, esi
xor dil, 124
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
btr di, bx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
