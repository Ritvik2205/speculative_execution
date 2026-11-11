.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
xor dil, sil
sub sil, sil
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], bx
or dil, dl
cmp rbx, 75
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 10
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
movzx rdx, ax
cmovo eax, edx
xor ax, cx
xor bl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
cmovle edi, edx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
sbb ecx, 96
add eax, edi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 93
cmovp cx, si
sub bl, al
cmp sil, 88
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 81
sbb ecx, 38
cmovle rax, rdi
sub sil, -36
cmp bx, 1
dec sil
and bx, 95
mul edx
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
or eax, ecx
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
dec rdx
cmp al, -23
xor ax, cx
xor dx, si
cmovz ecx, edi
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
cmovz bx, bx
or al, al
add rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
