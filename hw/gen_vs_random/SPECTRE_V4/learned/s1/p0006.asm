.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 48
cmovns rdi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
xor al, 56
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 81
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
imul ecx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
btc dx, 119
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 37
xchg rcx, rdi
cmovns edx, esi
add rax, 56
or bl, cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add dl, dl
cmovnb esi, edx
test bl, cl
and al, dil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
or rax, 27
adc al, 36
cmovnz edx, ebx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
xchg rcx, rax
mov rsi, rdx
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
xor al, 59
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
cmp ax, -15031
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
cmovl rdi, rax
movzx edx, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
