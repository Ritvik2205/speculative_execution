.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 41
movzx rdi, dx
imul bl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 52
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
movzx rdx, bx
test edx, 573099753
test si, 84
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 90
neg eax
imul bx
cmovnp ax, dx
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
add dl, 31 # instrumentation
cmovnl dx, dx
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
sub dil, al
sub edi, 96
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
cmovl rdi, rax
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
sbb ecx, 44
or bx, -111
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
add ax, -15653
add rbx, rax
sbb ebx, 26
cmovnp dx, si
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 86
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
add bx, 110
add cl, 7
add cl, -42 # instrumentation
adc al, cl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
cmovnb eax, ebx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
test edi, -1249897727
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmovp cx, bx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and dl, al
mul dl
mov eax, 46
mov rax, -8696242625349627833
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
