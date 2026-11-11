.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -49 # instrumentation
cmovno si, bx
cmovnb di, di
and cl, -38 # instrumentation
cmovp rcx, rsi
and cx, dx
not dl
or dil, al
cmovb rax, rcx
cmovnb ax, ax
bts rcx, 115
cmovnle rcx, rdi
jmp .bb_0.1
.bb_0.1:
and bl, -3 # instrumentation
cmovnb bx, ax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 9
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rax]
and al, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
btc cx, 104
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
