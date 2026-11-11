.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 27
cmovnl rsi, rdx
sub rdi, 53
xor dil, -42
add dx, 59
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
mov al, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
add ax, 1313
sbb ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
