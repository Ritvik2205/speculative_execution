.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg cl
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
cmovnb edx, esi
imul ecx, ebx, 71
btc rbx, 10
cmovp ax, cx
sub dil, -10
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
add bx, 110
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 20
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
cmovnl rax, rdi
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 21
mov edx, 41
dec rbx
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], 91
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
test esi, 24
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
sub al, 50
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 51
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
test rax, -344032571
sub dil, dil
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
sbb bl, sil
movzx dx, sil
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
add sil, -26 # instrumentation
btr esi, 10
test ax, dx
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
sub dl, 43
imul si, ax
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
imul rax, rdx
test bl, 24
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
