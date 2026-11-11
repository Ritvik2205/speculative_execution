.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 93
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
test ebx, edx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and al, sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
and bl, sil
jmp .bb_0.1
.bb_0.1:
test dl, al
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
