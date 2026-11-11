.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno dx, ax
mov bl, 58
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
sub al, 127
movsx rdx, ax
movsx di, dil
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], -115
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
sub dl, al
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
cmovnl cx, dx
cmovnbe ecx, eax
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
xor dx, dx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
add ax, 6414
adc cl, 6
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
cmp rdx, -49
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
add cl, 40 # instrumentation
cmovnp rdx, rcx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
cmovle ebx, edx
cmovnb rsi, rdi
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
cmovnp esi, edi
adc dl, al
cmovl edx, ebx
test bx, ax
cmovle rsi, rax
add dl, 74 # instrumentation
cmovle edx, ebx
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
test ecx, -907816607
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
or edi, -64
cmp bx, 113
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], eax
and si, -70
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
inc cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
