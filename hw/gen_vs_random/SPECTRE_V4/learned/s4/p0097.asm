.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 20
dec al
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
add rdi, 111
and al, 59
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
or rax, -897763206
and cl, 126
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
mov cl, al
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
btc rdi, rcx
mov cl, sil
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and dl, al
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
sub dl, -16
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
and dl, 24
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
cmp bl, cl
cmovnb eax, edx
cmp bl, -16
or sil, dl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
mov bl, dl
xor ax, 30500
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
