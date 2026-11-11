.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], -117
sbb cl, 12
sbb al, 66
or al, al
movzx di, cl
sub dx, dx
mov dl, 81
cmovnl bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
bts eax, eax
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
add al, -67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
cmovnl si, cx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 39
add eax, 1255256879
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 19
sbb al, cl
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
movsx eax, di
sbb ebx, esi
add bl, bl
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
cmovle rax, rsi
or bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
cmovo edx, edx
test cl, -52
add eax, -1398129660
test bl, dl
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 6
sbb al, 66
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
mul dil
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
test ax, 19171
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
