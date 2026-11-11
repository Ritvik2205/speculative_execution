.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, al
or di, bx
or ax, -26182
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and cl, dl
cmp dx, 13
movsx edi, di
cmovnle bx, ax
and rcx, 11
sub ax, 6579
cmovnle rcx, rax
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add dil, sil
mov al, -93
bt eax, 103
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
sbb ax, 10407
and ax, 13045
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and di, -65
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
cmp al, -44
movsx eax, dl
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
adc al, al
or ax, 28571
cmovnp di, ax
btr cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
mov al, cl
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
sbb al, 54
cmovp rbx, rbx
xor rcx, -111
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and cl, dl
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
xor al, cl
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
test bl, dil
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
cmovb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
