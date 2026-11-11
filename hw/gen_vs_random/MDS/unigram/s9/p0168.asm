.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 27
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
cmovz bx, si
and cl, 68 # instrumentation
cmovns bx, cx
and al, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and cl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
or cl, 119
and dl, -73
and bl, dil
and al, -23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
bt dx, bx
cmovs si, dx
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
or dil, dil
cmovns rbx, rdi
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
