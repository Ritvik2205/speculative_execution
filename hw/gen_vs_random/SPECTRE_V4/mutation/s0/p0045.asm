.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -74
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
cmovl edx, ebx
cmovnp esi, edi
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
mov bl, -69
adc cl, -86
or edi, -78
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
test bx, ax
cmovnbe ecx, eax
sub al, 29
cmp rdx, -49
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
add cl, 40 # instrumentation
cmovnp rdx, rcx
cmovnl cx, dx
adc dl, al
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
movsx di, dil
test ecx, -907816607
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], -115
cmovle rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
cmovnb rsi, rdi
sub dl, al
add dl, 74 # instrumentation
cmovle edx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
add ax, 65
cmovno dx, ax
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
cmovle ebx, edx
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
cmp bx, 113
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 6
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
xor dx, dx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
inc cl
movsx rdx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
