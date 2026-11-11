.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -71 # instrumentation
adc dl, bl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
adc edi, 65
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmovnb ebx, esi
add al, 5
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
mov edx, 39
cmp bx, dx
and cl, sil
add cl, -37 # instrumentation
adc edx, 54
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
movzx edi, di
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 19
add ax, -15653
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rax, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
dec bl
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
add rax, rdi
not rsi
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
test esi, 54
add dl, 41
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
cmovnb ecx, edx
neg sil
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
sbb dl, -99
xor bl, 93
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
xor cl, al
sub al, 99
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
