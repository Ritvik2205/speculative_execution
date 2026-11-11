.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -94
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
or ax, 6575
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and al, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and ebx, 28
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rbx
and bl, 43
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
btc cx, ax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 83
test cl, dil
xor dl, -68
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
or edi, 25
xor dl, bl
cmovp si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
