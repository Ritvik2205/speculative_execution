.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
adc cl, -86
inc cl
xor dx, dx
movsx di, dil
test bx, ax
sub al, 59
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
cmp bx, 113
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
cmovl edx, ebx
cmovnb rsi, rdi
cmovle ebx, edx
movsx rdx, ax
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
sub dl, al
and si, -74
cmovno dx, ax
cmovle rsi, rax
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
or edi, -64
add dl, 74 # instrumentation
cmovle edx, ebx
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
cmovnp esi, edi
add ax, 6694
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
cmovnbe ecx, eax
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
add cl, 40 # instrumentation
cmovnp rdx, rcx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], -115
cmp rdx, -49
cmovnl cx, dx
mov bl, 29
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
test ecx, 860867711
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
adc dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
