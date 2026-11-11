.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, -69
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
inc cl
movsx di, dil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
sub dl, al
cmp rdx, -49
cmovnbe ecx, eax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
adc dl, al
adc cl, -54
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
cmovnl cx, dx
sub al, 63
and si, -74
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
test ecx, -907816607
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], -115
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
add cl, 40 # instrumentation
cmovnp rdx, rcx
cmovle ebx, edx
test bx, ax
or edi, -64
cmovle rsi, rax
cmovno dx, ax
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
movsx rdx, ax
cmovnb rsi, rdi
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
cmovl edx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
xor dx, dx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
cmovnp esi, edi
cmp bx, 113
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], eax
add dl, 74 # instrumentation
cmovle edx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
add ax, -7857
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
