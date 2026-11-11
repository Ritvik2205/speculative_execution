.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp ebx, ebx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 56
sub rdx, 22
bts rdx, rcx
imul rbx, rax
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rsi]
imul dx
add cl, 119 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
cmovnl rdx, rax
neg rcx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
cmp dil, dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
mul rbx
adc dil, al
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rdx, 3
movzx rdi, ax
movzx eax, al
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
sbb al, 123
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 11
add dl, -114 # instrumentation
cmovl cx, bx
neg cx
adc sil, dl
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
add sil, -10 # instrumentation
cmovnbe esi, eax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], di
or dx, cx
cmovnl rcx, rbx
cmovp edi, eax
movzx eax, bl
or dil, 23
sbb sil, 108
mov rax, rbx
add cl, -75 # instrumentation
adc cl, 31
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
