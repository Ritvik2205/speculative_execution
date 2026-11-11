.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
test bx, ax
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], -115
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
sub dl, al
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
xor dx, dx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
cmovl edx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
or edi, -78
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
cmp bx, 113
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
cmovnbe ecx, eax
cmovle ebx, edx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
test ecx, -907816607
cmovnp esi, edi
movsx di, dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
add cl, 40 # instrumentation
cmovnp rdx, rcx
movsx rdx, ax
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
mov bl, 106
adc cl, -66
add ax, -18924
adc dl, al
cmovnb rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
add dl, 74 # instrumentation
cmovle edx, ebx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
cmp rdx, -49
cmovno dx, ax
sub al, 69
inc cl
cmovnl cx, dx
and si, -74
cmovle rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
