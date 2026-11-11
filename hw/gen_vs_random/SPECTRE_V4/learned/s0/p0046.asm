.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, 1524061352
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
setnbe cl
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
cmp dil, cl
cmovno rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and bl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 57
sbb rax, 183833426
lea ax, qword ptr [rbx]
bt rdi, rdx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
cmovp eax, esi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
add dl, dil
add bl, -18 # instrumentation
mov rcx, rdx
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
cmovnbe di, dx
add sil, cl
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
bts edi, 167
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
not rdi
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
sub al, 98
cmp al, 70
xor esi, edx
and rbx, 69
sbb eax, 1081973675
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
