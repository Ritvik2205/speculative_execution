.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
add dl, 74 # instrumentation
cmovle edx, ebx
adc dl, al
add ax, -18924
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
adc cl, -86
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
cmovnbe ecx, eax
sub dl, al
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
inc cl
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], eax
cmovnl cx, dx
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
xor dx, dx
mov bl, -69
movsx di, dil
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
test bx, ax
cmovnb rsi, rdi
and si, -70
test ecx, 860867711
cmovnp esi, edi
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
cmovl edx, ebx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
cmovle rsi, rax
movsx rdx, ax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
add cl, 40 # instrumentation
cmovnp rdx, rcx
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], -115
cmp rdx, -49
sub al, 26
or edi, -78
cmovno dx, ax
cmp bx, 113
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
cmovle ebx, edx
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
